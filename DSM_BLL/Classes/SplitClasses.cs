using System;
using System.Collections.Generic;

namespace BLL
{
    public static class SplitClasses
    {
        private static List<EntryClassesCount> _entryClassList;
        private static List<EntryClassesCount> EntryClassList
        {
            get { return _entryClassList; }
            set { _entryClassList = value; }
        }

        private static List<ShowEntryClasses> _showEntryClassList;
        private static List<ShowEntryClasses> ShowEntryClassList
        {
            get { return _showEntryClassList; }
            set { _showEntryClassList = value; }
        }

        private static int _partCount = 0;
        public static int PartCount
        {
            get { return _partCount; }
            set { _partCount = value; }
        }

        public static bool PopulateFinalClassNames(string connString, int maxClassSize)
        {
            bool success = false;

            try
            {
                short order_By = 0;
                EntryClassesCount entryClasses = new EntryClassesCount(connString);
                EntryClassList = entryClasses.GetEntryClassCount();
                if (EntryClassList != null && EntryClassList.Count > 0)
                {
                    FinalClassNames clearFinalClassNames = new FinalClassNames(connString);
                    bool clearSuccess = clearFinalClassNames.ClearFinalClassNames();
                    if (clearSuccess)
                    {
                        foreach (EntryClassesCount row in EntryClassList)
                        {
                            if (row.Entries > maxClassSize)
                            {
                                int classQty = ClassQty(row.Entries, maxClassSize);
                                int partMod = row.Entries % classQty;
                                for (int i = 0; i < classQty; i++)
                                {
                                    int partCount = row.Entries / classQty;
                                    if (partMod > 0)
                                        partCount += 1;

                                    order_By += 1;
                                    AddFinalClass(connString, row, i, partCount, order_By);
                                    partMod -= 1;
                                }
                            }
                            else
                            {
                                order_By += 1;
                                FinalClassNames finalClassName = new FinalClassNames(connString);
                                finalClassName.Show_Entry_Class_ID = row.Show_Entry_Class_ID;
                                finalClassName.Class_Name_Description = row.Class_Name_Description;
                                finalClassName.Class_No = row.Class_No;
                                finalClassName.Show_Final_Class_Description = row.Class_Name_Description;
                                finalClassName.Entries = row.Entries;
                                finalClassName.OrderBy = order_By;
                                finalClassName.InsertFinalClassNames();
                            }
                        }
                        success = true;
                    }
                    else
                    {
                        success = false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return success;
        }

        private static void AddFinalClass(string connString, EntryClassesCount row, int part, int partCount, short order_By)
        {
            try
            {
                int newPart = part += 1;
                string newClassDescription = string.Format("{0} Part {1}", row.Class_Name_Description, newPart);
                FinalClassNames finalClassName = new FinalClassNames(connString);
                finalClassName.Show_Entry_Class_ID = row.Show_Entry_Class_ID;
                finalClassName.Class_Name_Description = row.Class_Name_Description;
                finalClassName.Class_No = row.Class_No;
                finalClassName.Show_Final_Class_Description = newClassDescription;
                finalClassName.Entries = (short)partCount;
                finalClassName.OrderBy = order_By;
                finalClassName.InsertFinalClassNames();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static int ClassQty(short entries, int maxClassSize)
        {
            int classCount = 0;

            try
            {
                classCount = entries / maxClassSize;

                if (entries % maxClassSize > 0)
                {
                    classCount += 1;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return classCount;
        }

        public static List<FinalClassNames> DisplayFinalClassNames(string connString)
        {
            try
            {
                FinalClassNames finalClassNames = new FinalClassNames(connString);
                return finalClassNames.GetFinalClassNames();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static bool UpdateFinalClassName(string connString, short orderBy, string newClassName)
        {
            bool retVal = false;

            try
            {
                FinalClassNames finalClassName = new FinalClassNames(connString, orderBy);
                finalClassName.Show_Final_Class_Description = newClassName;
                retVal = finalClassName.UpdateFinalClassNames();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public static bool AllocateDogsToFinalClasses(string connString, Guid show_ID, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                List<ShowEntryClasses> showEntryClassList = new List<ShowEntryClasses>();
                ShowEntryClasses showEntryClasses = new ShowEntryClasses(connString);
                showEntryClassList = showEntryClasses.GetShow_Entry_ClassesByShow_ID(show_ID);
                foreach (ShowEntryClasses showEntryClass in showEntryClassList)
                {
                    List<ShowFinalClasses> showFinalClassList = new List<ShowFinalClasses>();
                    ShowFinalClasses showFinalClasses = new ShowFinalClasses(connString);
                    showFinalClassList = showFinalClasses.GetShow_Final_ClassesByShow_Entry_Class_ID(showEntryClass.Show_Entry_Class_ID);
                    if (showFinalClassList != null && showFinalClassList.Count > 0)
                    {
                        List<DogClasses> dogClassList = new List<DogClasses>();
                        DogClasses dogClasses = new DogClasses(connString);
                        dogClassList = dogClasses.GetDog_ClassesByShow_Entry_Class_ID(showEntryClass.Show_Entry_Class_ID);
                        if (showFinalClassList.Count == 1)
                        {
                            foreach (DogClasses dogClass in dogClassList)
                            {
                                dogClass.Show_Final_Class_ID = showFinalClassList[0].Show_Final_Class_ID;
                                Guid dog_Class_ID = new Guid(dogClass.Dog_Class_ID.ToString());
                                retVal = dogClass.Update_Dog_Class(dog_Class_ID, user_ID);
                            }
                        }
                        else
                        {
                            List<ClassParts> classParts = new List<ClassParts>();
                            foreach (ShowFinalClasses showFinalClass in showFinalClassList)
                            {
                                ClassParts classPart = new ClassParts();
                                FinalClassNames finalClassNames = new FinalClassNames(connString, showFinalClass.Show_Final_Class_No);
                                classPart.Show_Final_Class_ID = showFinalClass.Show_Final_Class_ID;
                                classPart.Show_Final_Class_Description = showFinalClass.Show_Final_Class_Description;
                                classPart.MaxDogsInPart = finalClassNames.Entries;
                                classParts.Add(classPart);
                            }
                            List<DogsInClass> allDogsInClass = new List<DogsInClass>();
                            allDogsInClass = AllocateDogsToClassParts(connString, dogClassList, classParts, show_ID);
                            List<DogClasses> failedUpdateList = new List<DogClasses>();
                            foreach (DogsInClass dog in allDogsInClass)
                            {
                                DogClasses dogClass = new DogClasses(connString, dog.Dog_Class_ID);
                                dogClass.Show_Final_Class_ID = dog.Show_Final_Class_ID;
                                retVal = dogClass.Update_Dog_Class(dog.Dog_Class_ID, user_ID);
                                if (!retVal)
                                    failedUpdateList.Add(dogClass);
                            }
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public static bool UnAllocateDogsFromFinalClasses(string connString, Guid user_ID)
        {
            bool retVal = false;

            try
            {
                List<EntryClassesCount> entryClassesList = new List<EntryClassesCount>();
                EntryClassesCount entryClasses = new EntryClassesCount(connString);
                entryClassesList = entryClasses.GetEntryClassCount();
                foreach (EntryClassesCount entryClass in entryClassesList)
                {
                    List<DogClasses> dogClassList = new List<DogClasses>();
                    DogClasses dogClasses = new DogClasses(connString);
                    dogClassList = dogClasses.GetDog_ClassesByShow_Entry_Class_ID(entryClass.Show_Entry_Class_ID);
                    foreach (DogClasses row in dogClassList)
                    {
                        row.Show_Final_Class_ID = null;
                        Guid dog_Class_ID = new Guid(row.Dog_Class_ID.ToString());
                        retVal = row.Update_Dog_Class(dog_Class_ID, user_ID);
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        private static List<DogsInClass> AllocateDogsToClassParts(string connString, List<DogClasses> dogClassList, List<ClassParts> classParts, Guid show_ID)
        {
            List<DogsInClass> retVal = new List<DogsInClass>();

            try
            {
                PartCount = 0;
                int[] dogsInPart = new int[classParts.Count];
                foreach (DogClasses dogClass in dogClassList)
                {
                    Guid show_Entry_Class_ID = new Guid(dogClass.Show_Entry_Class_ID.ToString());
                    List<DogOwners> dogOwnersList = new List<DogOwners>();
                    DogOwners dogOwners = new DogOwners(connString);
                    Guid dog_ID = new Guid(dogClass.Dog_ID.ToString());
                    dogOwnersList = dogOwners.GetDogOwnersByDog_ID(dog_ID);
                    foreach (DogOwners owner in dogOwnersList)
                    {
                        List<DogOwners> dogOwnerDogList = new List<DogOwners>();
                        DogOwners dogOwnerDogs = new DogOwners(connString);
                        dogOwnerDogList = dogOwnerDogs.GetDogOwnersByOwner_ID(owner.Owner_ID);
                        List<Dogs> ownerDogsInClassList = new List<Dogs>();
                        ownerDogsInClassList = OwnerDogsInCurrentClass(connString, dogOwnerDogList, show_ID, show_Entry_Class_ID);
                        if (dogClass.Preferred_Part > 0)
                        {
                            foreach (Dogs ownerDog in ownerDogsInClassList)
                            {
                                if (!FoundInList(retVal, ownerDog.Dog_ID))
                                {
                                    Dogs dog = new Dogs(connString, ownerDog.Dog_ID);
                                    DogsInClass dogInClass = new DogsInClass();
                                    dogInClass.Dog = dog;
                                    dogInClass.Dog_Class_ID = GetDogClassID(connString, dog.Dog_ID, show_Entry_Class_ID);
                                    dogInClass.Show_Final_Class_ID = classParts[dogClass.Preferred_Part - 1].Show_Final_Class_ID;
                                    dogInClass.AddToPart = dogClass.Preferred_Part;
                                    retVal.Add(dogInClass);
                                    dogsInPart[dogClass.Preferred_Part - 1]++;
                                }
                            }
                        }
                    }
                }
                foreach (DogClasses dogClass in dogClassList)
                {
                    Guid show_Entry_Class_ID = new Guid(dogClass.Show_Entry_Class_ID.ToString());
                    List<DogOwners> dogOwnersList = new List<DogOwners>();
                    DogOwners dogOwners = new DogOwners(connString);
                    Guid dog_ID = new Guid(dogClass.Dog_ID.ToString());
                    dogOwnersList = dogOwners.GetDogOwnersByDog_ID(dog_ID);
                    foreach (DogOwners owner in dogOwnersList)
                    {
                        List<DogOwners> dogOwnerDogList = new List<DogOwners>();
                        DogOwners dogOwnerDogs = new DogOwners(connString);
                        dogOwnerDogList = dogOwnerDogs.GetDogOwnersByOwner_ID(owner.Owner_ID);
                        List<Dogs> ownerDogsInClassList = new List<Dogs>();
                        ownerDogsInClassList = OwnerDogsInCurrentClass(connString, dogOwnerDogList, show_ID, show_Entry_Class_ID);
                        if (dogClass.Preferred_Part > 0)
                        {
                            foreach (Dogs ownerDog in ownerDogsInClassList)
                            {
                                if (!FoundInList(retVal, ownerDog.Dog_ID))
                                {
                                    Dogs dog = new Dogs(connString, ownerDog.Dog_ID);
                                    DogsInClass dogInClass = new DogsInClass();
                                    dogInClass.Dog = dog;
                                    dogInClass.Dog_Class_ID = GetDogClassID(connString, dog.Dog_ID, show_Entry_Class_ID);
                                    dogInClass.Show_Final_Class_ID = classParts[dogClass.Preferred_Part - 1].Show_Final_Class_ID;
                                    dogInClass.AddToPart = dogClass.Preferred_Part;
                                    retVal.Add(dogInClass);
                                    dogsInPart[dogClass.Preferred_Part - 1]++;
                                }
                            }
                        }
                        if (ownerDogsInClassList.Count == 1)
                        {
                            if (!FoundInList(retVal, ownerDogsInClassList[0].Dog_ID))
                            {
                                Dogs dog = new Dogs(connString, ownerDogsInClassList[0].Dog_ID);
                                DogsInClass dogInClass = new DogsInClass();
                                dogInClass.Dog = dog;
                                dogInClass.Dog_Class_ID = GetDogClassID(connString, dog.Dog_ID, show_Entry_Class_ID);
                                dogInClass.Show_Final_Class_ID = GetEmptiestClassPart(classParts, dogsInPart);
                                dogInClass.AddToPart = PartCount;
                                retVal.Add(dogInClass);
                                dogsInPart[PartCount - 1]++;
                            }
                        }
                        else if (ownerDogsInClassList.Count == 2)
                        {
                            if (!FoundInList(retVal, ownerDogsInClassList[0].Dog_ID))
                            {
                                Dogs dog1 = new Dogs(connString, ownerDogsInClassList[0].Dog_ID);
                                DogsInClass dogInClass1 = new DogsInClass();
                                dogInClass1.Dog = dog1;
                                dogInClass1.Dog_Class_ID = GetDogClassID(connString, dog1.Dog_ID, show_Entry_Class_ID);
                                dogInClass1.Show_Final_Class_ID = NextPart(classParts);
                                dogInClass1.AddToPart = PartCount;
                                retVal.Add(dogInClass1);
                                dogsInPart[PartCount - 1]++;
                            }
                            if (!FoundInList(retVal, ownerDogsInClassList[1].Dog_ID))
                            {
                                Dogs dog2 = new Dogs(connString, ownerDogsInClassList[1].Dog_ID);
                                DogsInClass dogInClass2 = new DogsInClass();
                                dogInClass2.Dog = dog2;
                                dogInClass2.Dog_Class_ID = GetDogClassID(connString, dog2.Dog_ID, show_Entry_Class_ID);
                                dogInClass2.Show_Final_Class_ID = NextPart(classParts);
                                dogInClass2.AddToPart = PartCount;
                                retVal.Add(dogInClass2);
                                dogsInPart[PartCount - 1]++;
                            }
                        }
                        else
                        {
                            foreach (Dogs ownerDog in ownerDogsInClassList)
                            {
                                if (!FoundInList(retVal, ownerDog.Dog_ID))
                                {
                                    Dogs dog = new Dogs(connString, ownerDog.Dog_ID);
                                    DogsInClass dogInClass = new DogsInClass();
                                    dogInClass.Dog = dog;
                                    dogInClass.Dog_Class_ID = GetDogClassID(connString, dog.Dog_ID, show_Entry_Class_ID);
                                    dogInClass.Show_Final_Class_ID = NextPart(classParts);
                                    dogInClass.AddToPart = PartCount;
                                    retVal.Add(dogInClass);
                                    dogsInPart[PartCount - 1]++;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        private static Guid GetDogClassID(string connString, Guid dog_ID, Guid show_Entry_Class_ID)
        {
            Guid dog_Class_ID = new Guid();

            try
            {
                DogClasses dogClass = new DogClasses(connString);
                List<DogClasses> dogClassList = dogClass.GetDog_ClassesByDog_IDAndShow_Entry_Class_ID(dog_ID, show_Entry_Class_ID);
                if (dogClassList != null && dogClassList.Count > 0)
                {
                    Guid newDog_Class_ID = new Guid(dogClassList[0].Dog_Class_ID.ToString());
                    dog_Class_ID = newDog_Class_ID;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dog_Class_ID;
        }

        private static Guid GetEmptiestClassPart(List<ClassParts> classParts, int[] dogsInPart)
        {
            try
            {
                //Get the part with the lowest count
                int minValue = int.MaxValue;
                int minIndex = -1;
                int index = -1;

                foreach (int num in dogsInPart)
                {
                    index++;

                    if (num < minValue)
                    {
                        minValue = num;
                        minIndex = index;
                    }
                }
                if(minValue==0)
                {
                    minIndex = 0;
                }
                PartCount = minIndex + 1;
                return classParts[minIndex].Show_Final_Class_ID;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static Guid NextPart(List<ClassParts> classParts)
        {
            try
            {
                if (PartCount >= classParts.Count)
                {
                    PartCount = 0;
                }

                PartCount += 1;

                return classParts[PartCount - 1].Show_Final_Class_ID;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static bool FoundInList(List<DogsInClass> allDogsInClass, Guid dog_ID)
        {
            bool found = false;

            try
            {
                found = allDogsInClass.Exists(delegate (DogsInClass i) { return i.Dog.Dog_ID == dog_ID; });
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return found;
        }

        private static List<Dogs> OwnerDogsInCurrentClass(string connString, List<DogOwners> ownerDogList, Guid show_ID, Guid show_Entry_Class_ID)
        {
            List<Dogs> retVal = new List<Dogs>();

            try
            {
                List<Dogs> existsInCurrentClass = new List<Dogs>();
                List<Dogs> ownerDogsNotInCurrentClass = new List<Dogs>();
                foreach (DogOwners dog in ownerDogList)
                {
                    DogClasses dc = new DogClasses(connString);
                    List<DogClasses> dcList = dc.GetDog_ClassesByDog_ID(show_ID, dog.Dog_ID);
                    if (dcList != null && dcList.Count > 0)
                    {
                        foreach (DogClasses dogClassRow in dcList)
                        {
                            Guid dog_ID = new Guid(dogClassRow.Dog_ID.ToString());
                            if (dogClassRow.Show_Entry_Class_ID == show_Entry_Class_ID)
                            {
                                if (!retVal.Exists(delegate (Dogs i) { return i.Dog_ID == dog_ID; }))
                                {
                                    Dogs d = new Dogs(connString, dog_ID);
                                    retVal.Add(d);
                                }
                                else
                                {
                                    Dogs d = new Dogs(connString, dog_ID);
                                    existsInCurrentClass.Add(d);
                                }
                            }
                            else
                            {
                                Dogs d = new Dogs(connString, dog_ID);
                                ownerDogsNotInCurrentClass.Add(d);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }
    }


    public class ClassParts
    {
        public ClassParts()
        {
        }
        private short _partNo = 0;
        public short PartNo
        {
            get { return _partNo; }
            set { _partNo = value; }
        }
        private short _maxDogsInPart = 0;
        public short MaxDogsInPart
        {
            get { return _maxDogsInPart; }
            set { _maxDogsInPart = value; }
        }
        private Guid _show_Final_Class_ID;
        public Guid Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }
        private string _show_Final_Class_Description = null;
        public string Show_Final_Class_Description
        {
            get { return _show_Final_Class_Description; }
            set { _show_Final_Class_Description = value; }
        }
        private short _dogsAddedToPart = 0;
        public short DogsAddedToPart
        {
            get { return _dogsAddedToPart; }
            set { _dogsAddedToPart = value; }
        }
    }
    public class DogsInClass
    {
        public DogsInClass()
        {
        }
        private Guid _dog_Class_ID;
        public Guid Dog_Class_ID
        {
            get { return _dog_Class_ID; }
            set { _dog_Class_ID = value; }
        }
        private Dogs _dog;
        public Dogs Dog
        {
            get { return _dog; }
            set { _dog = value; }
        }
        private Guid _show_Final_Class_ID;
        public Guid Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }
        private string _show_Final_Class_Description = null;
        public string Show_Final_Class_Description
        {
            get { return _show_Final_Class_Description; }
            set { _show_Final_Class_Description = value; }
        }
        private int _addToPart = 0;
        public int AddToPart
        {
            get { return _addToPart; }
            set { _addToPart = value; }
        }
        private int _addedToPart = 0;
        public int AddedToPart
        {
            get { return _addedToPart; }
            set { _addedToPart = value; }
        }
    }
}
