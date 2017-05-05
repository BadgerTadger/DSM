using BLL;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DSM_Import
{
    public partial class frmMain : Form
    {
        private List<ExcelDataItem> excelDataItems = null;
        private int addedToClasses = 0;
        private int enteredNFC = 0;
        private int notForImport = 0;
        private string showName;
        private Guid user_ID;
        private Guid club_ID;
        private Guid show_ID;
        private Guid entrant_ID;
        private Guid owner_ID;
        private Guid dog_ID;
        private Guid prev_Owner_ID = new Guid();
        private Guid prev_Dog_ID = new Guid();
        private int dogClassMax = 0;
        private int dogClassCount = 0;
        private Guid showEntryClassID;
        private string excelFile = "";
        int nafCount = -1;

        TextInfo textInfo = new CultureInfo("en-GB", false).TextInfo;
        private static List<char> Letters = new List<char>() { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ' };

        public frmMain()
        {
            InitializeComponent();
            backgroundWorker1.WorkerReportsProgress = true;
            backgroundWorker1.WorkerSupportsCancellation = true;
        }

        private void btnGetFile_Click(object sender, EventArgs e)
        {
            excelFile = GetExcelFile();
            if (string.IsNullOrEmpty(excelFile))
            {
                string msg = "No Import File selected";
                Utils.LogToFile(msg);
                resultLabel.Text = msg;
            }
            else
            {
                if (backgroundWorker1.IsBusy != true)
                {
                    // Start the asynchronous operation.
                    backgroundWorker1.RunWorkerAsync();
                }
            }
        }

        private bool CreateDatabaseEntry(ExcelDataItem item)
        {
            Guid owner_Address_ID = GetAddress(item);
            owner_ID = GetOwner(owner_Address_ID, item);
            dog_ID = GetDog(item);
            LinkDogToOwner(owner_ID, dog_ID);
            if (owner_ID != prev_Owner_ID)
            {
                entrant_ID = CreateEntrant(item);
            }
            return AddDogToClass(item);
        }

        private bool AddDogToClass(ExcelDataItem item)
        {
            bool ok = true;


            ShowEntryClasses showEntryClasses = new ShowEntryClasses(Utils.ConnectionString());
            ShowEntryClasses sec = showEntryClasses.GetShowEntryClassByShowAndClassNo(show_ID, item.Entered_Class);
            Judges judges = new Judges(Utils.ConnectionString(), sec.Show_Entry_Class_ID);

            if (sec != null)
            {
                dogClassCount++;
                if (dog_ID == prev_Dog_ID)
                {
                    if (dogClassCount > dogClassMax)
                    {
                        Utils.LogToFile("Maximum number of classes would be exceeded");
                        ok = false;
                    }
                }
                else
                {
                    dogClassCount = 1;
                }

                if (ok)
                {
                    if (CorrectGenderForClass(sec.Class_Gender, item.Sex))
                    {
                        showEntryClassID = sec.Show_Entry_Class_ID;
                        DogClasses dc = new DogClasses(Utils.ConnectionString());
                        List<DogClasses> dcList = dc.GetDog_ClassesByDog_IDAndShow_Entry_Class_ID(dog_ID, showEntryClassID);
                        if (dcList.Count > 0)
                        {
                            Utils.LogToFile("Dog already entered in this class.");
                            ok = false;
                        }
                        else
                        {
                            dc.Entrant_ID = entrant_ID;
                            dc.Dog_ID = dog_ID;
                            dc.Show_Entry_Class_ID = showEntryClassID;
                            if (!string.IsNullOrEmpty(item.Preferred_Judge))
                            {
                                dc.Preferred_Part = GetPreferredPart(judges, item.Preferred_Judge);
                            }
                            dc.Handler_ID = owner_ID;
                            dc.Special_Request = item.Notes_To_Organiser;
                            Guid? dogClassID = dc.Insert_Dog_Class(user_ID);
                            if (dogClassID == null)
                            {
                                Utils.LogToFile("Failed to insert to tblDogClasses");
                                ok = false;
                            }
                        }
                    }
                    else
                    {
                        Utils.LogToFile("Incorrect gender for class");
                        ok = false;
                    }
                }
            }
            else
            {
                Utils.LogToFile("Unable to get Show Entry Class by Show ID and Class No.");
                ok = false;
            }

            if (!ok)
            {
                string msg = string.Format("Unable to add {0} ({1}) to class {2}", item.Registered_Name, item.Registered_Number, (sec != null) ? sec.Class_Name_Description : item.Entered_Class.ToString());
                Utils.LogToFile(msg);
            }

            return ok;
        }

        private int GetPreferredPart(Judges judges, string preferred_Judge)
        {
            int retVal = 0;

            if (preferred_Judge.ToUpperInvariant() == "PT1" || preferred_Judge == judges.Primary_Judge)
            {
                retVal = 1;
            }
            else if (preferred_Judge.ToUpperInvariant() == "PT2" || preferred_Judge == judges.Reserve_Judge)
            {
                retVal = 2;
            }

            return retVal;
        }

        private bool CorrectGenderForClass(short? class_Gender, string sex)
        {
            bool retVal = true;

            DogGender dg = new DogGender(Utils.ConnectionString());
            int dog_Gender = dg.GetDog_Gender(sex);

            if ((dog_Gender == 2 && class_Gender == 3) || (dog_Gender == 3 && class_Gender == 2))
            {
                retVal = false;
            }

            return retVal;
        }

        private void LinkDogToOwner(Guid owner_ID, Guid dog_ID)
        {
            bool createLink = true;

            DogOwners dogOwners = new DogOwners(Utils.ConnectionString());
            List<DogOwners> dogOwnerList = dogOwners.GetDogOwnersByDog_ID(dog_ID);
            foreach (DogOwners dogOwner in dogOwnerList)
            {
                dogOwner.DeleteDogOwner = true;
                dogOwner.Update_Dog_Owner(dogOwner.Dog_Owner_ID, user_ID);
            }

            if (createLink)
            {
                dogOwners.Dog_ID = dog_ID;
                dogOwners.Owner_ID = owner_ID;
                dogOwners.Insert_Dog_Owner(user_ID);
            }
        }

        private Guid CreateEntrant(ExcelDataItem item)
        {
            Entrants entrant = new Entrants(Utils.ConnectionString());
            entrant.Show_ID = show_ID;
            entrant.Entry_Date = item.Date_Of_Entry;
            entrant.Withold_Address = !item.Show_Address_In_Catalogue;
            return (Guid)entrant.Insert_Entrant(user_ID);
        }

        private Guid GetDog(ExcelDataItem item)
        {
            Dogs dog = new Dogs(Utils.ConnectionString());
            List<Dogs> dogList = dog.GetDogByRegNo(item.Registered_Number);
            if (dogList.Count > 0)
            {
                //Get ID for existing Dog
                bool saveChanges = false;
                foreach (Dogs regDog in dogList)
                {
                    if (regDog.Dog_KC_Name != item.Registered_Name)
                    {
                        Utils.LogToFile(string.Format("Registered Name Changed from {0} to {1} for Reg No.: {2}", regDog.Dog_KC_Name, item.Registered_Name, item.Registered_Number));
                        regDog.Dog_KC_Name = item.Registered_Name;
                        saveChanges = true;
                    }
                    if (regDog.Date_Of_Birth != item.Date_Of_Birth)
                    {
                        Utils.LogToFile(string.Format("Date of Birth Changed from {0} to {1} for Reg No.: {2}", regDog.Date_Of_Birth, item.Date_Of_Birth, item.Registered_Number));
                        if (item.Date_Of_Birth != null && item.Date_Of_Birth != new DateTime())
                        {
                            Utils.LogToFile(string.Format("Date of Birth Changed from {0} to {1} for Reg No.: {2}", regDog.Date_Of_Birth, item.Date_Of_Birth, item.Registered_Number));
                            regDog.Date_Of_Birth = item.Date_Of_Birth;
                        }
                        else
                        {
                            Utils.LogToFile(string.Format("Date of Birth Changed from {0} to {1} for Reg No.: {2}", regDog.Date_Of_Birth, "NULL", item.Registered_Number));
                            regDog.Date_Of_Birth = null;
                        }
                        saveChanges = true;
                    }
                    if (regDog.Year_Of_Birth != item.Year_Of_Birth)
                    {
                        Utils.LogToFile(string.Format("Year of Birth Changed from {0} to {1} for Reg No.: {2}", regDog.Year_Of_Birth, item.Year_Of_Birth, item.Registered_Number));
                        regDog.Year_Of_Birth = item.Year_Of_Birth;
                        saveChanges = true;
                    }
                    if (saveChanges)
                    {
                        regDog.Update_Dog(regDog.Dog_ID, user_ID);
                    }
                    return regDog.Dog_ID;
                }
            }

            //Create New Dog
            dog.Dog_KC_Name = item.Registered_Name;
            dog.Dog_Breed_ID = GetBreedIDFromBreedName(item.Breed);
            dog.Dog_Gender_ID = GetGender(item.Sex);
            dog.Reg_No = item.Registered_Number;
            if (item.Date_Of_Birth != null && item.Date_Of_Birth != new DateTime())
            {
                dog.Date_Of_Birth = item.Date_Of_Birth;
            }
            else
            {
                dog.Date_Of_Birth = null;
            }
            if (item.Year_Of_Birth > 0)
            {
                dog.Year_Of_Birth = item.Year_Of_Birth;
            }
            dog.Merit_Points = (short)item.Merit_Points;
            //dog.Breeder = item.Breeder;
            //dog.Sire = item.Sire;
            //dog.Dam = item.Dam;

            Guid? dog_ID = dog.Insert_Dog(user_ID);

            return (Guid)dog_ID;
        }

        private int? GetGender(string sex)
        {
            DogGender gender = new DogGender(Utils.ConnectionString());
            return gender.GetDog_Gender(sex);
        }

        private int? GetBreedIDFromBreedName(string breedName)
        {
            DogBreeds breed = new DogBreeds(Utils.ConnectionString());
            List<DogBreeds> breedList = breed.GetDog_BreedsByDog_Breed_Description(breedName);
            if (breedList.Count > 0)
            {
                return breedList[0].Dog_Breed_ID;
            }

            //Create New Dog Breed
            int? breed_ID = breed.Insert_Dog_Breed(breedName);

            return breed_ID;
        }

        private Guid GetOwner(Guid owner_Address_ID, ExcelDataItem item)
        {
            People owner = new People(Utils.ConnectionString());
            List<People> ownerList = owner.GetPeopleByAddress_ID(owner_Address_ID);
            if (ownerList.Count > 0)
            {
                foreach (People person in ownerList)
                {
                    if (person.Person_Forename == item.Owner_First_Name && person.Person_Surname == item.Owner_Last_Name)
                    {
                        return person.Person_ID;
                    }
                }
            }

            //Create New Person
            owner.Person_Title = item.Owner_Title;
            owner.Person_Surname = item.Owner_Last_Name;
            owner.Person_Forename = item.Owner_First_Name;
            owner.Address_ID = owner_Address_ID;
            owner.Person_Landline = item.Owner_Phone;
            owner.Person_Email = item.Owner_Email;

            Guid? owner_ID = owner.Insert_Person(user_ID);

            return (Guid)owner_ID;
        }

        private Guid GetAddress(ExcelDataItem item)
        {
            Addresses address = new Addresses(Utils.ConnectionString());
            List<Addresses> addressesForPostcode = address.GetAddressesByAddress_Postcode(item.Owner_Postcode);
            if (addressesForPostcode.Count > 0)
            {
                //
                foreach (Addresses postcodeAddress in addressesForPostcode)
                {
                    if (postcodeAddress.Address_1 == item.Owner_Address_1)
                    {
                        return postcodeAddress.Address_ID;
                    }
                }
            }

            //Create New Address
            address.Address_1 = item.Owner_Address_1;
            address.Address_2 = item.Owner_Address_2;
            address.Address_Town = item.Owner_Town;
            address.Address_County = item.Owner_County;
            address.Address_Postcode = item.Owner_Postcode;

            Guid? owner_Address_ID = address.Insert_Address(user_ID);

            return (Guid)owner_Address_ID;
        }

        private List<ExcelDataItem> ReadExcelData()
        {
            List<ExcelDataItem> excelDataItems = new List<ExcelDataItem>();

            if (excelFile != "")
            {
                using (SpreadsheetDocument spreadsheetDocument = SpreadsheetDocument.Open(excelFile, false))
                {
                    WorkbookPart workbookPart = spreadsheetDocument.WorkbookPart;
                    IEnumerable<Sheet> sheets = spreadsheetDocument.WorkbookPart.Workbook.GetFirstChild<Sheets>().Elements<Sheet>();
                    string relationshipId = sheets.First().Id.Value;
                    WorksheetPart worksheetPart = (WorksheetPart)spreadsheetDocument.WorkbookPart.GetPartById(relationshipId);
                    Worksheet workSheet = worksheetPart.Worksheet;
                    SheetData sheetData = workSheet.GetFirstChild<SheetData>();
                    IEnumerable<Row> rows = sheetData.Descendants<Row>();
                    int rowNumber = 1;
                    int recsAdded = 0;
                    int previousCol = -1;
                    int currentCol = 0;
                    string lastRegName = "";

                    foreach (Row excelDataRow in rows)
                    {
                        bool ok = true;

                        ExcelDataItem item = new ExcelDataItem();

                        if (rowNumber == 1)
                        {
                            //Column Headings
                        }

                        if (rowNumber > 1)
                        {
                            item.RowNumber = rowNumber;
                            //Getting Competitor Data (31 cols)
                            foreach (Cell cell in excelDataRow.Descendants<Cell>())
                            {
                                int tempInt = -1;
                                string tempRegNo = "";

                                currentCol = (int)GetColumnIndexFromName(GetColumnName(cell.CellReference));
                                switch (currentCol)
                                {
                                    case 0:
                                        item.Show_Name = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 1:
                                        int.TryParse(GetCellValue(spreadsheetDocument, cell), out tempInt);
                                        if (tempInt > 0)
                                        {
                                            item.Owner_ID = tempInt;
                                        }
                                        else
                                        {
                                            item.Owner_ID = 0;
                                            //Utils.LogToFile(string.Format("Owner ID was not numeric for record number {0}", rowNumber));
                                        }
                                        break;
                                    case 2:
                                        item.Owner_Title = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 3:
                                        item.Owner_First_Name = CleanFirstName(GetCellValue(spreadsheetDocument, cell).ToLowerInvariant().Trim());
                                        break;
                                    case 4:
                                        item.Owner_Last_Name = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 5:
                                        item.Owner_Address_1 = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 6:
                                        item.Owner_Address_2 = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 7:
                                        item.Owner_Town = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 8:
                                        item.Owner_County = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 9:
                                        item.Owner_Postcode = GetCellValue(spreadsheetDocument, cell).ToUpperInvariant();
                                        break;
                                    case 10:
                                        item.Owner_Country = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 11:
                                        item.Owner_Phone = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 12:
                                        item.Owner_Email = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 13:
                                        item.Owner_Registered_Name = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        break;
                                    case 14:
                                        item.Vehicle_Registration = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 15:
                                        item.Registered_Name = CleanDogName(GetCellValue(spreadsheetDocument, cell).ToLowerInvariant().Trim());
                                        break;
                                    case 16:
                                        tempRegNo = GetCellValue(spreadsheetDocument, cell).ToUpperInvariant();
                                        item.Registered_Number = FixKCName(tempRegNo, item.Registered_Name != lastRegName);
                                        lastRegName = item.Registered_Name;
                                        break;
                                    case 17:
                                        item.Breed = textInfo.ToTitleCase(GetCellValue(spreadsheetDocument, cell));
                                        if (string.IsNullOrWhiteSpace(item.Breed))
                                        {
                                            Utils.LogToFile(string.Format("Dog Breed not specified for record number {0}", rowNumber));
                                            item.Breed = "Not Specified";
                                        }
                                        break;
                                    case 18:
                                        item.Sex = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 19:
                                        int.TryParse(GetCellValue(spreadsheetDocument, cell), out tempInt);
                                        if (tempInt > 0)
                                        {
                                            if (tempInt > 3000)
                                            {
                                                item.Date_Of_Birth = Utils.FromExcelSerialDate(tempInt);
                                                item.Year_Of_Birth = (short)item.Date_Of_Birth.Year;
                                            }
                                            else
                                            {
                                                item.Year_Of_Birth = (short)tempInt;
                                            }
                                        }
                                        else if (tempInt == 0)
                                            item.Date_Of_Birth = new DateTime();
                                        else
                                        {
                                            Utils.LogToFile(string.Format("Invalid date of birth for record number {0}", rowNumber));
                                        }
                                        break;
                                    //case 19:
                                    //    item.Breeder = GetCellValue(spreadsheetDocument, cell);
                                    //    break;
                                    //case 20:
                                    //    item.Sire = GetCellValue(spreadsheetDocument, cell);
                                    //    break;
                                    //case 21:
                                    //    item.Dam = GetCellValue(spreadsheetDocument, cell);
                                    //    break;
                                    case 20:
                                        int.TryParse(GetCellValue(spreadsheetDocument, cell), out tempInt);
                                        if (tempInt > -1)
                                        {
                                            item.Merit_Points = tempInt;
                                        }
                                        else
                                        {
                                            Utils.LogToFile(string.Format("Merit Points was not numeric for record number {0}", rowNumber));
                                            ok = false;
                                        }
                                        break;
                                    case 21:
                                        int.TryParse(GetCellValue(spreadsheetDocument, cell), out tempInt);
                                        if (tempInt > -1)
                                        {
                                            item.Entered_Class = tempInt;
                                        }
                                        else
                                        {
                                            Utils.LogToFile(string.Format("Entered Class was not numeric for record number {0}", rowNumber));
                                            ok = false;
                                        }
                                        break;
                                    case 22:
                                        item.Preferred_Judge = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 23:
                                        item.Extras = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 24:
                                        item.Confirmed_Acceptance_Of_Declaration = GetCellValue(spreadsheetDocument, cell) == "Yes";
                                        break;
                                    case 25:
                                        item.Withdraw_All_Entries_If_Balloted_Out_Of_Championship_C = GetCellValue(spreadsheetDocument, cell) == "Yes";
                                        break;
                                    case 26:
                                        item.Show_Address_In_Catalogue = GetCellValue(spreadsheetDocument, cell) == "Yes";
                                        break;
                                    case 27:
                                        item.Notes_To_Organiser = GetCellValue(spreadsheetDocument, cell);
                                        break;
                                    case 28:
                                        int.TryParse(GetCellValue(spreadsheetDocument, cell), out tempInt);
                                        if (tempInt > 0)
                                        {
                                            item.Date_Of_Entry = Utils.FromExcelSerialDate(tempInt);
                                        }
                                        else
                                        {
                                            item.Date_Of_Entry = null;
                                            Utils.LogToFile(string.Format("Invalid date of entry for record number {0}", rowNumber));
                                        }
                                        break;
                                    case 29:
                                        item.ImportRecord = GetCellValue(spreadsheetDocument, cell) == "Yes";
                                        break;
                                }

                                previousCol = currentCol;
                            }

                            if (ok)
                            {
                                excelDataItems.Add(item);
                                recsAdded++;
                            }
                        }

                        previousCol = -1;
                        rowNumber++;
                    }
                    Utils.LogToFile(string.Format("{0} records retrieved from the spreadsheet", recsAdded));
                }
            }

            return excelDataItems;
        }

        private string FixKCName(string tempRegNo, bool incrementCounter)
        {
            string retVal = "";

            if (Regex.IsMatch(tempRegNo, @"\d*[a-zA-Z]+\d+"))
            {
                retVal = tempRegNo.ToUpperInvariant();
            }
            else
            {
                if (incrementCounter)
                {
                    nafCount++;
                }
                retVal = string.Format("NAF_{0}", nafCount);
            }

            return retVal;
        }

        private string CleanFirstName(string inText)
        {
            string retVal = "";

            inText = inText.Replace("  ", " ");
            inText = inText.Replace(".", "");

            switch (inText.Length)
            {
                case 1:
                    return inText.ToUpperInvariant();
                case 2:
                    switch (inText)
                    {
                        case "jo":
                        case "mo":
                            return textInfo.ToTitleCase(inText);
                        default:
                            return inText.ToUpperInvariant();
                    }
                case 3:
                    if (inText.IndexOf(' ') > -1)
                    {
                        return inText.Replace(" ", "").ToUpperInvariant();
                    }
                    else
                    {
                        return textInfo.ToTitleCase(inText);
                    }
                default:
                    if (inText.Contains(" & ") || inText.Contains(" and "))
                    {
                        string[] sep = new string[] { " & ", " and " };
                        string[] multipleWords = inText.Split(sep, StringSplitOptions.None);
                        retVal = FixMultiple(multipleWords);
                    }
                    else
                    {
                        retVal = textInfo.ToTitleCase(inText);
                    }
                    break;
            }

            return retVal;
        }

        private string FixMultiple(string[] multipleWords)
        {
            string retVal = "";
            int wordCount = multipleWords.Length;

            if (wordCount == 2)
            {
                if(IsTitle(multipleWords[0]) && IsTitle(multipleWords[1]))
                {
                    return string.Format("{0} & {1}",
                        textInfo.ToTitleCase(multipleWords[0]),
                        textInfo.ToTitleCase(multipleWords[1]));
                }
            }

            int thisWord = 0;
            foreach (string item in multipleWords)
            {
                thisWord++;
                if (IsTitle(item))
                {
                    if(thisWord < wordCount)
                    {
                        if(!IsTitle(multipleWords[thisWord]))
                        {
                            retVal += string.Format("{0} ", textInfo.ToTitleCase(item));
                        }
                    }
                    retVal += string.Format("{0} & ", textInfo.ToTitleCase(item));
                }
                else
                {
                    switch (item.Length)
                    {
                        case 1:
                            retVal += string.Format("{0} & ", item.ToUpperInvariant());
                            break;
                        case 2:
                            switch (item)
                            {
                                case "jo":
                                case "mo":
                                    retVal += string.Format("{0} & ", textInfo.ToTitleCase(item));
                                    break;
                                default:
                                    retVal += string.Format("{0} & ", item.ToUpperInvariant());
                                    break;
                            }
                            break;
                        default:
                            retVal += string.Format("{0} & ", textInfo.ToTitleCase(item));
                            break;
                    }
                }
            }

            return retVal.TrimEnd('&', ' ');
        }

        private bool IsTitle(string item)
        {
            List<string> titleList = new List<string>();
            titleList.Add("mr");
            titleList.Add("mrs");
            titleList.Add("miss");
            titleList.Add("ms");
            titleList.Add("dr");

            return titleList.Contains(item);
        }

        private string CleanDogName(string inText)
        {
            string retVal = "";

            if (string.IsNullOrEmpty(inText))
            {
                return retVal;
            }

            if (inText.Contains("  "))
            {
                inText = inText.Replace("  ", " ");
            }
            inText = inText.Replace(".", "");
            if (inText.Contains("obedience champion"))
            {
                inText = inText.Replace("obedience champion", "Ob Ch");
            }
            if(inText.Contains("quories") || inText.Contains("(isds"))
            {

            }
            int startWord = 0;
            int endWord = 0;
            string tempWord = "";

            do
            {
                endWord = inText.IndexOf(' ', startWord) > -1 ? inText.IndexOf(' ', startWord) : inText.Length;
                tempWord = inText.Substring(startWord, (endWord - startWord)).ToLowerInvariant().Trim();
                if (!string.IsNullOrEmpty(tempWord))
                {
                    if (tempWord.IndexOf('(') == 0 || tempWord.IndexOf(')') == (tempWord.Length - 1))
                    {
                        retVal += string.Format("{0} ", tempWord.ToUpperInvariant());
                    }
                    else
                    {
                        switch (tempWord)
                        {
                            case "aex":
                            case "ax":
                                retVal += "A Ex ";
                                break;
                            case "begex":
                            case "begx":
                                retVal += "Beg Ex ";
                                break;
                            case "bex":
                            case "bx":
                                retVal += "B Ex ";
                                break;
                            case "cdex":
                            case "cdx":
                                retVal += "CDEx ";
                                break;
                            case "cex":
                            case "cx":
                                retVal += "C Ex ";
                                break;
                            case "isds":
                                retVal += "ISDS ";
                                break;
                            case "novex":
                            case "novx":
                                retVal += "Nov Ex ";
                                break;
                            case "novice":
                                retVal += "Nov ";
                                break;
                            case "obch":
                                retVal += "Ob Ch ";
                                break;
                            case "ow":
                                retVal += "OW ";
                                break;
                            case "prebegex":
                            case "prebegx":
                                retVal += "PreBeg Ex ";
                                break;
                            case "rl4ex":
                                retVal += "RL4Ex ";
                                break;
                            case "shcm":
                                retVal += "ShCM ";
                                break;
                            default:
                                retVal += string.Format("{0} ", textInfo.ToTitleCase(tempWord));
                                break;
                        }
                    }
                }
                startWord = endWord + 1;
            } while (endWord < inText.Length);

            return retVal.Trim();
        }

        private static string GetCellValue(SpreadsheetDocument document, Cell cell)
        {
            SharedStringTablePart stringTablePart = document.WorkbookPart.SharedStringTablePart;

            if (cell.CellValue == null)
            {
                return "";
            }

            string value = cell.CellValue.InnerXml;

            if (cell.DataType != null && cell.DataType.Value == CellValues.SharedString)
            {
                return stringTablePart.SharedStringTable.ChildElements[Int32.Parse(value)].InnerText;
            }
            else
            {
                return value;
            }
        }

        /// <summary>
        /// Given a cell name, parses the specified cell to get the column name.
        /// </summary>
        /// <param name="cellReference">Address of the cell (ie. B2)</param>
        /// <returns>Column Name (ie. B)</returns>
        public static string GetColumnName(string cellReference)
        {
            // Create a regular expression to match the column name portion of the cell name.
            Regex regex = new Regex("[A-Za-z]+");
            Match match = regex.Match(cellReference);

            return match.Value;
        }

        /// <summary>
        /// Given just the column name (no row index), it will return the zero based column index.
        /// Note: This method will only handle columns with a length of up to two (ie. A to Z and AA to ZZ). 
        /// A length of three can be implemented when needed.
        /// </summary>
        /// <param name="columnName">Column Name (ie. A or AB)</param>
        /// <returns>Zero based index if the conversion was successful; otherwise null</returns>
        public static int? GetColumnIndexFromName(string columnName)
        {
            int? columnIndex = null;

            char[] colLetters = columnName.Trim().ToCharArray();

            if (colLetters.Count() <= 2)
            {
                int index = 0;
                foreach (char col in colLetters)
                {
                    int? indexValue = Letters.IndexOf(col);

                    if (indexValue != -1)
                    {
                        // The first letter of a two digit column needs some extra calculations
                        if (index == 0 && colLetters.Count() == 2)
                        {
                            columnIndex = columnIndex == null ? (indexValue + 1) * 26 : columnIndex + ((indexValue + 1) * 26);
                        }
                        else
                        {
                            columnIndex = columnIndex == null ? indexValue : columnIndex + indexValue;
                        }
                    }

                    index++;
                }
            }

            return columnIndex;
        }

        private string GetExcelFile()
        {
            string retVal = "";

            OpenFileDialog openExcel = new OpenFileDialog();
            openExcel.Title = "Open Excel File";
            openExcel.Filter = "Excel Files|*.xlsx";
            openExcel.InitialDirectory = @"C:\DSM\Data";
            if (openExcel.ShowDialog() == DialogResult.OK)
            {
                retVal = openExcel.FileName.ToString();
            }

            return retVal;
        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            //Clear the log file
            Utils.LogToFile(null);
            Guid? userID = Utils.SetUserID();
            if (userID != null)
            {
                user_ID = (Guid)userID;
            }
            PopulateClubs();
        }

        private void PopulateClubs()
        {
            Clubs clubs = new Clubs(Utils.ConnectionString());
            List<Clubs> clubList = clubs.GetClubs();
            foreach (Clubs club in clubList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = club.Club_Long_Name;
                item.Value = club.Club_ID;

                cboClubs.Items.Add(item);
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void cboClubs_SelectedIndexChanged(object sender, EventArgs e)
        {
            club_ID = new Guid((cboClubs.SelectedItem as ComboBoxItem).Value.ToString());
            PopulateShows(club_ID);
            cboShows.Enabled = true;
        }

        private void PopulateShows(Guid club_ID)
        {
            cboShows.Items.Clear();
            Shows shows = new Shows(Utils.ConnectionString());
            List<Shows> showList = shows.GetShowsByClub_ID(club_ID);
            foreach (Shows show in showList)
            {
                ComboBoxItem item = new ComboBoxItem();
                item.Text = show.Show_Name;
                item.Value = show.Show_ID;

                cboShows.Items.Add(item);
            }
        }

        private void cboShows_SelectedIndexChanged(object sender, EventArgs e)
        {
            show_ID = new Guid((cboShows.SelectedItem as ComboBoxItem).Value.ToString());
            Shows show = new Shows(Utils.ConnectionString(), show_ID);
            showName = show.Show_Name;
            dogClassMax = (int)show.MaxClassesPerDog;
            btnGetFile.Enabled = true;
        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;

            excelDataItems = ReadExcelData();
            excelDataItems.OrderBy(edi => edi.Owner_Last_Name).ThenBy(edi => edi.Owner_First_Name).ThenBy(edi => edi.Registered_Number).ThenBy(edi => edi.Entered_Class);
            int totalCount = excelDataItems.Count;
            int currentCount = 0;
            foreach (ExcelDataItem item in excelDataItems)
            {
                currentCount++;
                Utils.LogToFile(string.Format("Currently Processing record: {0}", currentCount));
                if (worker.CancellationPending == true)
                {
                    e.Cancel = true;
                    break;
                }
                else
                {
                    if (item.Show_Name == showName && item.ImportRecord && item.Entered_Class > 0)
                    {
                        if (CreateDatabaseEntry(item))
                        {
                            addedToClasses++;
                        }
                        prev_Owner_ID = owner_ID;
                        prev_Dog_ID = dog_ID;
                        double dProgress = ((double)currentCount / totalCount) * 100.0;
                        worker.ReportProgress((int)dProgress);
                    }
                    else
                    {
                        if (item.Show_Name != showName)
                        {
                            Utils.LogToFile(string.Format("Incorrect Show Name. Expected: {0} - Actual: {1} for record {2}", showName, item.Show_Name, currentCount));
                        }
                        if (!item.ImportRecord)
                        {
                            notForImport++;
                            //Utils.LogToFile(string.Format("Record {0} was not marked for Import", currentCount));
                        }
                        if (item.Entered_Class <= 0)
                        {
                            enteredNFC++;
                            //Utils.LogToFile(string.Format("Record {0} was entered NFC", currentCount));
                        }
                    }
                }
            }
        }

        private void backgroundWorker1_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            progressBar1.Value = e.ProgressPercentage;
            resultLabel.Text = (e.ProgressPercentage.ToString() + "%");
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            if (e.Cancelled == true)
            {
                resultLabel.Text = "Canceled!";
            }
            else if (e.Error != null)
            {
                resultLabel.Text = "Error: " + e.Error.Message;
                Utils.LogToFile(e.Error.Message);
            }
            else
            {
                Utils.LogToFile("*****************************");
                Utils.LogToFile(string.Format("{0} class entries added", addedToClasses));
                Utils.LogToFile(string.Format("{0} NFC entries ignored", enteredNFC));
                Utils.LogToFile(string.Format("{0} entries marked as not for Import", notForImport));
                Utils.LogToFile("*****************************");
                resultLabel.Text = "Done!";
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (backgroundWorker1.WorkerSupportsCancellation == true)
            {
                // Cancel the asynchronous operation.
                backgroundWorker1.CancelAsync();
            }
        }
    }
}
