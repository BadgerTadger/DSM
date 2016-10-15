using DSM_DATA;
using System;
using System.Collections.Generic;
using System.Data;

namespace BLL
{
    public static class RunningOrders
    {
        private static List<ClassesAndDrawQty> _classesAndDrawQtyList;
        private static List<ClassesAndDrawQty> ClassesAndDrawQtyList
        {
            get { return _classesAndDrawQtyList; }
            set { _classesAndDrawQtyList = value; }
        }

        private static List<OwnersDogsClassesDrawn> _allEntriesInClass;
        public static List<OwnersDogsClassesDrawn> AllEntriesInClass
        {
            get { return _allEntriesInClass; }
            set { _allEntriesInClass = value; }
        }

        private static List<Guid> _ownersDrawn;
        public static List<Guid> OwnersDrawn
        {
            get
            {
                if (_ownersDrawn == null)
                    _ownersDrawn = new List<Guid>();

                return _ownersDrawn;
            }
            set { _ownersDrawn = value; }
        }

        private static List<Guid> _ownersDrawnOnDay1;
        public static List<Guid> OwnersDrawnOnDay1
        {
            get
            {
                if (_ownersDrawnOnDay1 == null)
                    _ownersDrawnOnDay1 = new List<Guid>();

                return _ownersDrawnOnDay1;
            }
            set { _ownersDrawnOnDay1 = value; }
        }

        private static List<Guid> _ownersDrawnOnDay2;
        public static List<Guid> OwnersDrawnOnDay2
        {
            get
            {
                if (_ownersDrawnOnDay2 == null)
                    _ownersDrawnOnDay2 = new List<Guid>();

                return _ownersDrawnOnDay2;
            }
            set { _ownersDrawnOnDay2 = value; }
        }

        private static List<Guid> _dogsDrawn;
        public static List<Guid> DogsDrawn
        {
            get
            {
                if (_dogsDrawn == null)
                    _dogsDrawn = new List<Guid>();

                return _dogsDrawn;
            }
            set { _dogsDrawn = value; }
        }

        private static int _ownerDogCount;
        public static int OwnerDogCount
        {
            get { return _ownerDogCount; }
            set { _ownerDogCount = value; }
        }

        private static int _ownerDogsInClassCount;
        public static int OwnerDogsInClassCount
        {
            get { return _ownerDogsInClassCount; }
            set { _ownerDogsInClassCount = value; }
        }

        private static int _classesPerOwnerEnteredCount;
        public static int ClassesPerOwnerEnteredCount
        {
            get { return _classesPerOwnerEnteredCount; }
            set { _classesPerOwnerEnteredCount = value; }
        }

        private static int _classesPerDogEnteredCount;
        public static int ClassesPerDogEnteredCount
        {
            get { return _classesPerDogEnteredCount; }
            set { _classesPerDogEnteredCount = value; }
        }

        private static Guid _day1_Show_ID;
        public static Guid Day1_Show_ID
        {
            get { return _day1_Show_ID; }
            set { _day1_Show_ID = value; }
        }

        public static void AllocateRunningOrders(string connString, string show_ID, Guid user_ID)
        {
            try
            {
                Guid newShow_ID = new Guid(show_ID);
                List<Guid> showList = new List<Guid>();
                showList.Add(newShow_ID);
                LinkedShows ls = new LinkedShows(connString);
                List<LinkedShows> lsList = ls.GetLinked_ShowsByParent_ID(newShow_ID);
                if (lsList != null && lsList.Count > 0)
                {
                    foreach (LinkedShows linkedShow in lsList)
                    {
                        showList.Add(linkedShow.Child_Show_ID);
                    }
                }
                SetDay1Show_ID(connString, showList);
                if (OwnersDogsClassesDrawn.DeleteOwnersDogsClassesDrawnList(connString))
                {
                    foreach (Guid s_ID in showList)
                    {
                        OwnersDrawn = null;
                        DogsDrawn = null;
                        Shows show = new Shows(connString, s_ID);
                        if (!(bool)show.Running_Orders_Allocated)
                        {
                            AllEntriesInClass = OwnersDogsClassesDrawn.GetOwnersDogsClassesDrawnListData(connString, s_ID, null, false);
                            AllocateRunningOrdersStage1(connString, s_ID, user_ID);
                            AllocateRunningOrdersStage2(connString, s_ID, user_ID);
                            AllocateRunningOrdersStage3(connString, s_ID, user_ID);
                            show.Running_Orders_Allocated = true;
                            show.Update_Show(s_ID, user_ID);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void SetDay1Show_ID(string connString, List<Guid> showList)
        {
            try
            {
                Guid firstShow_ID = showList[0];
                Shows show = new Shows(connString, showList[0]);
                DateTime firstShowDate = (DateTime)show.Show_Opens;
                foreach (Guid show_ID in showList)
                {
                    Shows show2 = new Shows(connString, show_ID);
                    if (DateTime.Compare((DateTime)show2.Show_Opens, firstShowDate) < 0)
                    {
                        firstShow_ID = show_ID;
                        firstShowDate = (DateTime)show2.Show_Opens;
                    }
                }
                RunningOrders.Day1_Show_ID = firstShow_ID;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void ClearRunningOrders(string connString, string show_ID, Guid user_ID)
        {
            try
            {
                Guid newShow_ID = new Guid(show_ID);
                List<Guid> showList = new List<Guid>();
                showList.Add(newShow_ID);
                LinkedShows ls = new LinkedShows(connString);
                List<LinkedShows> lsList = ls.GetLinked_ShowsByParent_ID(newShow_ID);
                if (lsList != null && lsList.Count > 0)
                {
                    foreach (LinkedShows linkedShow in lsList)
                    {
                        showList.Add(linkedShow.Child_Show_ID);
                    }
                }
                List<OwnersDogsClassesDrawn> oDCDList = new List<OwnersDogsClassesDrawn>();
                oDCDList = OwnersDogsClassesDrawn.GetOwnersDogsClassesDrawnListData(connString, newShow_ID, null, true);
                if (oDCDList != null && oDCDList.Count > 0)
                {
                    SetClassesAndDrawQty(connString, newShow_ID);
                    foreach (ClassesAndDrawQty classRow in ClassesAndDrawQtyList)
                    {
                        foreach (OwnersDogsClassesDrawn row in oDCDList)
                        {
                            if (row.Show_Final_Class_ID == classRow.Show_Final_Class_ID)
                            {
                                SetRunningOrderNull(connString, row, user_ID);
                            }
                        }
                    }
                }
                foreach (Guid s_ID in showList)
                {
                    Shows show = new Shows(connString, s_ID);
                    show.Running_Orders_Allocated = false;
                    show.Update_Show(s_ID, user_ID);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void AllocateRunningOrdersStage1(string connString, Guid show_ID, Guid user_ID)
        {
            try
            {
                if (AllEntriesInClass != null && AllEntriesInClass.Count > 0)
                {
                    SetClassesAndDrawQty(connString, show_ID);
                    if (ClassesAndDrawQtyList != null && ClassesAndDrawQtyList.Count > 0)
                    {
                        //All Classes - Highest to Lowest
                        //All Dogs in more than one class - draw highest class
                        for (int i = (ClassesAndDrawQtyList.Count - 1); i > -1; i--)
                        {
                            Guid thisClass_ID = ClassesAndDrawQtyList[i].Show_Final_Class_ID;
                            DogClasses dogClass = new DogClasses(connString);
                            short thisClassRunningOrder = dogClass.GetMaxRunningOrderForClass(thisClass_ID);
                            foreach (OwnersDogsClassesDrawn thisClassRow in AllEntriesInClass)
                            {
                                if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1 && DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                //if (DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                {
                                    if (thisClassRow.Show_Final_Class_ID == thisClass_ID)
                                    {
                                        if (!thisClassRow.Helper && !(thisClassRow.OwnerDogCount == 1 && thisClassRow.ClassesPerOwnerEnteredCount == 1))
                                        {
                                            if (thisClassRow.ClassesPerDogEnteredCount > 1 && thisClassRow.HighestClass)
                                            {
                                                thisClassRunningOrder += 1;
                                                if (thisClassRunningOrder <= ClassesAndDrawQtyList[i].DrawQty)
                                                {
                                                    UpdateRunningOrder(connString, thisClassRow, thisClassRunningOrder, user_ID);
                                                    if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1)
                                                        OwnersDrawn.Add(thisClassRow.Owner_ID);
                                                    ShowFinalClasses sfc = new ShowFinalClasses(connString, thisClassRow.Show_Final_Class_ID);
                                                    if (sfc.Show_ID == Day1_Show_ID)
                                                    {
                                                        if (OwnersDrawnOnDay1.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay1.Add(thisClassRow.Owner_ID);
                                                    }
                                                    else
                                                    {
                                                        if (OwnersDrawnOnDay2.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay2.Add(thisClassRow.Owner_ID);
                                                    }
                                                    if (DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                                        DogsDrawn.Add(thisClassRow.Dog_ID);
                                                }
                                            }
                                        }
                                    }
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
        }

        public static void AllocateRunningOrdersStage2(string connString, Guid show_ID, Guid user_ID)
        {
            try
            {
                if (AllEntriesInClass != null && AllEntriesInClass.Count > 0)
                {
                    SetClassesAndDrawQty(connString, show_ID);
                    if (ClassesAndDrawQtyList != null && ClassesAndDrawQtyList.Count > 0)
                    {
                        //All Classes -  Lowest to Highest
                        //Owner has more than one dog in this class
                        for (int i = 0; i < ClassesAndDrawQtyList.Count; i++)
                        {
                            Guid thisClass_ID = ClassesAndDrawQtyList[i].Show_Final_Class_ID;
                            DogClasses dogClass = new DogClasses(connString);
                            short thisClassRunningOrder = dogClass.GetMaxRunningOrderForClass(thisClass_ID);
                            foreach (OwnersDogsClassesDrawn thisClassRow in AllEntriesInClass)
                            {
                                if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1 && DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                //if (DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                {
                                    if (thisClassRow.Show_Final_Class_ID == thisClass_ID)
                                    {
                                        if (!thisClassRow.Helper && !(thisClassRow.OwnerDogCount == 1 && thisClassRow.ClassesPerOwnerEnteredCount == 1))
                                        {
                                            if (thisClassRow.OwnerDogsInClassCount > 1)
                                            {
                                                thisClassRunningOrder += 1;
                                                if (thisClassRunningOrder <= ClassesAndDrawQtyList[i].DrawQty)
                                                {
                                                    UpdateRunningOrder(connString, thisClassRow, thisClassRunningOrder, user_ID);
                                                    if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1)
                                                        OwnersDrawn.Add(thisClassRow.Owner_ID);
                                                    ShowFinalClasses sfc = new ShowFinalClasses(connString, thisClassRow.Show_Final_Class_ID);
                                                    if (sfc.Show_ID == Day1_Show_ID)
                                                    {
                                                        if (OwnersDrawnOnDay1.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay1.Add(thisClassRow.Owner_ID);
                                                    }
                                                    else
                                                    {
                                                        if (OwnersDrawnOnDay2.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay2.Add(thisClassRow.Owner_ID);
                                                    }
                                                    if (DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                                        DogsDrawn.Add(thisClassRow.Dog_ID);
                                                }
                                            }
                                        }
                                    }
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
        }
        public static void AllocateRunningOrdersStage3(string connString, Guid show_ID, Guid user_ID)
        {
            try
            {
                if (AllEntriesInClass != null && AllEntriesInClass.Count > 0)
                {
                    SetClassesAndDrawQty(connString, show_ID);
                    if (ClassesAndDrawQtyList != null && ClassesAndDrawQtyList.Count > 0)
                    {
                        //All Classes - Lowest to Highest 
                        //Owner has more than one class entered
                        for (int i = (ClassesAndDrawQtyList.Count - 1); i > -1; i--)
                        {
                            Guid thisClass_ID = ClassesAndDrawQtyList[i].Show_Final_Class_ID;
                            DogClasses dogClass = new DogClasses(connString);
                            short thisClassRunningOrder = dogClass.GetMaxRunningOrderForClass(thisClass_ID);
                            foreach (OwnersDogsClassesDrawn thisClassRow in AllEntriesInClass)
                            {
                                if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1 && DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                //if (!thisClassRow.OwnerDrawnOnDay)
                                {
                                    if (thisClassRow.Show_Final_Class_ID == thisClass_ID)
                                    {
                                        if (!thisClassRow.Helper && !(thisClassRow.OwnerDogCount == 1 && thisClassRow.ClassesPerOwnerEnteredCount == 1))
                                        {
                                            if (thisClassRow.ClassesPerOwnerEnteredCount > 1)
                                            {
                                                thisClassRunningOrder += 1;
                                                if (thisClassRunningOrder <= ClassesAndDrawQtyList[i].DrawQty)
                                                {
                                                    UpdateRunningOrder(connString, thisClassRow, thisClassRunningOrder, user_ID);
                                                    if (OwnersDrawn.IndexOf(thisClassRow.Owner_ID) == -1)
                                                        OwnersDrawn.Add(thisClassRow.Owner_ID);
                                                    ShowFinalClasses sfc = new ShowFinalClasses(connString, thisClassRow.Show_Final_Class_ID);
                                                    if (sfc.Show_ID == Day1_Show_ID)
                                                    {
                                                        if (OwnersDrawnOnDay1.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay1.Add(thisClassRow.Owner_ID);
                                                    }
                                                    else
                                                    {
                                                        if (OwnersDrawnOnDay2.IndexOf(thisClassRow.Owner_ID) == -1)
                                                            OwnersDrawnOnDay2.Add(thisClassRow.Owner_ID);
                                                    }
                                                    if (DogsDrawn.IndexOf(thisClassRow.Dog_ID) == -1)
                                                        DogsDrawn.Add(thisClassRow.Dog_ID);
                                                }
                                            }
                                        }
                                    }
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
        }

        private static void UpdateRunningOrder(string connString, OwnersDogsClassesDrawn row, int runningOrder, Guid user_ID)
        {
            try
            {
                DogClasses dc = new DogClasses(connString, row.Dog_Class_ID);
                dc.Running_Order = short.Parse(runningOrder.ToString());
                dc.Update_Dog_Class(row.Dog_Class_ID, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private static void SetRunningOrderNull(string connString, OwnersDogsClassesDrawn row, Guid user_ID)
        {
            try
            {
                DogClasses dc = new DogClasses(connString, row.Dog_Class_ID);
                dc.Running_Order = null;
                dc.Update_Dog_Class(row.Dog_Class_ID, user_ID);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void SetClassesAndDrawQty(string connString, Guid show_ID)
        {
            try
            {
                bool lowestClassSet = false;
                List<ClassesAndDrawQty> classesAndDrawQtyList = new List<ClassesAndDrawQty>();
                ShowFinalClasses showFinalClasses = new ShowFinalClasses(connString);
                List<ShowFinalClasses> showFinalClassList = showFinalClasses.GetShow_Final_ClassesByShow_ID(show_ID);

                foreach (ShowFinalClasses row in showFinalClassList)
                {
                    if (row.Show_Final_Class_Description != "NFC"
                        && !row.Show_Final_Class_Description.Contains("YKC")
                        && !row.Show_Final_Class_Description.Contains("Champ"))
                    {
                        int drawQty = 10;
                        DogClasses dogClass = new DogClasses(connString);
                        int entryCount = dogClass.GetEntryCountByShow_Final_Class_ID(row.Show_Final_Class_ID);

                        if (entryCount <= Constants.DRAW_QTY_LESS_THAN)
                        {
                            drawQty = 6;
                        }

                        ClassesAndDrawQty classAndDrawQty = new ClassesAndDrawQty();
                        classAndDrawQty.Show_Final_Class_ID = row.Show_Final_Class_ID;
                        classAndDrawQty.DrawQty = drawQty;

                        if (!lowestClassSet)
                        {
                            classAndDrawQty.LowestClass = true;
                            lowestClassSet = true;
                        }

                        classesAndDrawQtyList.Add(classAndDrawQty);
                    }
                }

                ClassesAndDrawQtyList = classesAndDrawQtyList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }

    public class ClassesAndDrawQty
    {
        public ClassesAndDrawQty()
        {

        }
        private Guid _show_Final_Class_ID;
        public Guid Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }
        private int _drawQty = 0;
        public int DrawQty
        {
            get { return _drawQty; }
            set { _drawQty = value; }
        }
        private bool _runningOrdersAllocated = false;
        public bool RunningOrdersAllocated
        {
            get { return _runningOrdersAllocated; }
            set { _runningOrdersAllocated = value; }
        }
        private bool _lowestClass = false;
        public bool LowestClass
        {
            get { return _lowestClass; }
            set { _lowestClass = value; }
        }
    }

    public class OwnersDogsClassesDrawn
    {
        private string _connString = "";

        private DataTable tblOwnersDogsClassesDrawnList = null;

        private short _ring_No;
        public short Ring_No
        {
            get { return _ring_No; }
            set { _ring_No = value; }
        }

        private string _owner = null;
        public string Owner
        {
            get { return _owner; }
            set { _owner = value; }
        }

        private List<string> _owners = null;
        public List<string> Owners
        {
            get
            {
                if (_owners == null)
                    _owners = new List<string>();

                return _owners;
            }
            set { _owners = value; }
        }

        private Dogs _dog;
        public Dogs Dog
        {
            get { return _dog; }
            set { _dog = value; }
        }

        private Guid _entrant_ID;
        public Guid Entrant_ID
        {
            get { return _entrant_ID; }
            set { _entrant_ID = value; }
        }

        private DateTime _entry_Date;
        public DateTime Entry_Date
        {
            get { return _entry_Date; }
            set { _entry_Date = value; }
        }

        private Guid _owner_ID;
        public Guid Owner_ID
        {
            get { return _owner_ID; }
            set { _owner_ID = value; }
        }

        private Guid _dog_ID;
        public Guid Dog_ID
        {
            get { return _dog_ID; }
            set { _dog_ID = value; }
        }

        private Guid _dog_Class_ID;
        public Guid Dog_Class_ID
        {
            get { return _dog_Class_ID; }
            set { _dog_Class_ID = value; }
        }

        private Guid _show_Final_Class_ID;
        public Guid Show_Final_Class_ID
        {
            get { return _show_Final_Class_ID; }
            set { _show_Final_Class_ID = value; }
        }

        private string _dog_KC_Name;
        public string Dog_KC_Name
        {
            get { return _dog_KC_Name; }
            set { _dog_KC_Name = value; }
        }

        private short _running_Order;
        public short Running_Order
        {
            get { return _running_Order; }
            set { _running_Order = value; }
        }

        private bool _offer_Of_Help;
        public bool Offer_Of_Help
        {
            get { return _offer_Of_Help; }
            set { _offer_Of_Help = value; }
        }

        private string _show_Final_Class_Description;
        public string Show_Final_Class_Description
        {
            get { return _show_Final_Class_Description; }
            set { _show_Final_Class_Description = value; }
        }

        private DogClasses _dogClass;
        public DogClasses DogClass
        {
            get { return _dogClass; }
            set { _dogClass = value; }
        }

        private bool _ownerDrawn;
        public bool OwnerDrawn
        {
            get { return _ownerDrawn; }
            set { _ownerDrawn = value; }
        }

        private bool _ownerDrawnOnDay;
        public bool OwnerDrawnOnDay
        {
            get { return _ownerDrawnOnDay; }
            set { _ownerDrawnOnDay = value; }
        }

        private bool _dogDrawn;
        public bool DogDrawn
        {
            get { return _dogDrawn; }
            set { _dogDrawn = value; }
        }

        private bool _dogDrawnInClass;
        public bool DogDrawnInClass
        {
            get { return _dogDrawnInClass; }
            set { _dogDrawnInClass = value; }
        }

        private bool _highestClass;
        public bool HighestClass
        {
            get { return _highestClass; }
            set { _highestClass = value; }
        }

        private bool _oldestDog;
        public bool OldestDog
        {
            get { return _oldestDog; }
            set { _oldestDog = value; }
        }

        private bool _helper;
        public bool Helper
        {
            get { return _helper; }
            set { _helper = value; }
        }

        private bool _hasTicketDraw;
        public bool HasTicketDraw
        {
            get { return _hasTicketDraw; }
            set { _hasTicketDraw = value; }
        }

        private int _ownerDogCount;
        public int OwnerDogCount
        {
            get { return _ownerDogCount; }
            set { _ownerDogCount = value; }
        }

        private int _ownerDogsInClassCount;
        public int OwnerDogsInClassCount
        {
            get { return _ownerDogsInClassCount; }
            set { _ownerDogsInClassCount = value; }
        }

        private int _classesPerDogEnteredCount;
        public int ClassesPerDogEnteredCount
        {
            get { return _classesPerDogEnteredCount; }
            set { _classesPerDogEnteredCount = value; }
        }

        private int _classesPerOwnerEnteredCount;
        public int ClassesPerOwnerEnteredCount
        {
            get { return _classesPerOwnerEnteredCount; }
            set { _classesPerOwnerEnteredCount = value; }
        }

        public OwnersDogsClassesDrawn(string connString)
        {
            _connString = connString;
        }

        public List<OwnersDogsClassesDrawn> GetOwnerDogsClassesDrawnList(Guid show_ID, Guid? show_Final_Class_ID, bool display)
        {
            List<OwnersDogsClassesDrawn> retVal = new List<OwnersDogsClassesDrawn>();

            try
            {
                RunningOrdersBL rOBL = new RunningOrdersBL(_connString);
                tblOwnersDogsClassesDrawnList = rOBL.GetOwnersDogsClassesDrawn(display);

                OwnersDogsClassesDrawn displayItem = new OwnersDogsClassesDrawn(_connString);
                if (tblOwnersDogsClassesDrawnList != null && tblOwnersDogsClassesDrawnList.Rows.Count > 0)
                {
                    short ring_No = 0;
                    Shows show = new Shows(_connString, show_ID);

                    string show_Final_Class_Description = string.Empty;

                    ClearDrawnFlags();
                    int rowCount = 0;
                    int rowCountRO = 0;
                    int rowCountInScope = 0;
                    foreach (DataRow row in tblOwnersDogsClassesDrawnList.Rows)
                    {
                        rowCount += 1;
                        short runningOrder = Utils.DBNullToShort(row["Running_Order"]);

                        if (runningOrder > 0)
                        {
                            rowCountRO += 1;
                            displayItem.Running_Order = runningOrder;

                            if (runningOrder < 21)
                            {
                                rowCountInScope += 1;
                                //if (display)
                                SetDrawnFlags(row, show_ID);
                                displayItem.DogDrawnInClass = true;
                            }
                        }
                    }

                    foreach (DataRow row in tblOwnersDogsClassesDrawnList.Rows)
                    {
                        ShowFinalClasses sfc = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                        short ringNo = Utils.DBNullToShort(row["Ring_No"]);
                        short runningOrder = Utils.DBNullToShort(row["Running_Order"]);
                        if ((ring_No != ringNo && ring_No != 0) || (ring_No == ringNo && show_Final_Class_Description != Utils.DBNullToString(row["Show_Final_Class_Description"])))
                        {
                            //new ring number
                            OwnersDogsClassesDrawn completeRow = BuildCompleteRow(displayItem);
                            retVal.Add(completeRow);
                            displayItem = new OwnersDogsClassesDrawn(_connString);
                        }
                        if (runningOrder > 0)
                        {
                            displayItem.Running_Order = runningOrder;
                            if (runningOrder < 21)
                            {
                                //if (display)
                                SetDrawnFlags(row, show_ID);
                                displayItem.DogDrawnInClass = true;
                            }
                        }
                        displayItem.Ring_No = ringNo;
                        Guid ownerID = Utils.DBNullToGuid(row["Owner_ID"]);
                        displayItem.Owners.Add(Utils.DBNullToString(row["Owner"]));
                        if (RunningOrders.OwnersDrawn.IndexOf(ownerID) != -1)
                            displayItem.OwnerDrawn = true;
                        if ((Guid)sfc.Show_ID == RunningOrders.Day1_Show_ID)
                        {
                            if (RunningOrders.OwnersDrawnOnDay1.IndexOf(ownerID) != -1)
                                displayItem.OwnerDrawnOnDay = true;
                        }
                        else
                        {
                            if (RunningOrders.OwnersDrawnOnDay2.IndexOf(ownerID) != -1)
                                displayItem.OwnerDrawnOnDay = true;
                        }
                        displayItem.Dog_KC_Name = Utils.DBNullToString(row["Dog_KC_Name"]);
                        bool offerOfHelp = Utils.DBNullToBool(row["Offer_Of_Help"]);
                        displayItem.Offer_Of_Help = offerOfHelp;
                        displayItem.Helper = offerOfHelp;
                        displayItem.HighestClass = IsHighestClass(row, show_ID);
                        displayItem.OldestDog = IsOldestDog(row);
                        displayItem.Entrant_ID = Utils.DBNullToGuid(row["Entrant_ID"]);
                        displayItem.Entry_Date = Utils.DBNullToDateSafe(row["Entry_Date"]);
                        displayItem.Owner_ID = ownerID;
                        displayItem.Dog_ID = Utils.DBNullToGuid(row["Dog_ID"]);
                        if (RunningOrders.DogsDrawn.IndexOf(Utils.DBNullToGuid(row["Dog_ID"])) != -1)
                            displayItem.DogDrawn = true;
                        displayItem.Dog_Class_ID = Utils.DBNullToGuid(row["Dog_Class_ID"]);
                        displayItem.Show_Final_Class_ID = Utils.DBNullToGuid(row["Show_Final_Class_ID"]);
                        SetOwnerDogCounts(row, show_ID);
                        displayItem.OwnerDogCount = RunningOrders.OwnerDogCount;
                        displayItem.OwnerDogsInClassCount = RunningOrders.OwnerDogsInClassCount;
                        displayItem.ClassesPerOwnerEnteredCount = RunningOrders.ClassesPerOwnerEnteredCount;
                        displayItem.ClassesPerDogEnteredCount = RunningOrders.ClassesPerDogEnteredCount;
                        displayItem.Show_Final_Class_Description = Utils.DBNullToString(row["Show_Final_Class_Description"]);
                        show_Final_Class_Description = Utils.DBNullToString(row["Show_Final_Class_Description"]);
                        ring_No = Utils.DBNullToShort(row["Ring_No"]);
                    }
                    OwnersDogsClassesDrawn completeRowFinal = BuildCompleteRow(displayItem);
                    retVal.Add(completeRowFinal);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        private OwnersDogsClassesDrawn BuildCompleteRow(OwnersDogsClassesDrawn displayItem)
        {
            OwnersDogsClassesDrawn completeRow = null;

            try
            {
                completeRow = new OwnersDogsClassesDrawn(_connString);
                completeRow.Ring_No = displayItem.Ring_No;
                string ownerList = string.Empty;
                displayItem.Owners.Sort();
                foreach (string owner in displayItem.Owners)
                {
                    if (ownerList.IndexOf(owner) == -1)
                    {
                        ownerList = string.Format("{0}{1}", ownerList, " & " + owner);
                    }
                }
                completeRow.Owner = ownerList.Substring(3);
                completeRow.Owner_ID = displayItem.Owner_ID;
                completeRow.Entrant_ID = displayItem.Entrant_ID;
                completeRow.OwnerDrawn = displayItem.OwnerDrawn;
                completeRow.OwnerDrawnOnDay = displayItem.OwnerDrawnOnDay;
                completeRow.Dog_KC_Name = displayItem.Dog_KC_Name;
                completeRow.Running_Order = displayItem.Running_Order;
                completeRow.DogDrawnInClass = displayItem.DogDrawnInClass;
                completeRow.Offer_Of_Help = displayItem.Offer_Of_Help;
                completeRow.Helper = displayItem.Helper;
                completeRow.HighestClass = displayItem.HighestClass;
                completeRow.OldestDog = displayItem.OldestDog;
                completeRow.Show_Final_Class_Description = displayItem.Show_Final_Class_Description;
                completeRow.Dog_ID = displayItem.Dog_ID;
                completeRow.DogDrawn = displayItem.DogDrawn;
                completeRow.Dog_Class_ID = displayItem.Dog_Class_ID;
                completeRow.Show_Final_Class_ID = displayItem.Show_Final_Class_ID;
                completeRow.OwnerDogCount = displayItem.OwnerDogCount;
                completeRow.OwnerDogsInClassCount = displayItem.OwnerDogsInClassCount;
                completeRow.ClassesPerOwnerEnteredCount = displayItem.ClassesPerOwnerEnteredCount;
                completeRow.ClassesPerDogEnteredCount = displayItem.ClassesPerDogEnteredCount;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return completeRow;
        }

        private bool IsHighestClass(DataRow row, Guid show_ID)
        {
            bool isHighestClass = true;

            try
            {
                ShowFinalClasses sfcCurrent = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));
                short currentClassNo = sfcCurrent.Show_Final_Class_No;
                DogClasses dc = new DogClasses(_connString);
                List<DogClasses> dogClassesList = dc.GetDog_ClassesByDog_ID(show_ID, Utils.DBNullToGuid(row["Dog_ID"]));
                foreach (DogClasses dcRow in dogClassesList)
                {
                    if (dcRow.Show_Final_Class_ID != null)
                    {
                        Guid show_Final_Class_ID = (Guid)dcRow.Show_Final_Class_ID;
                        ShowFinalClasses sfc = new ShowFinalClasses(_connString, show_Final_Class_ID);
                        if (sfc.Show_Final_Class_No > currentClassNo)
                            isHighestClass = false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return isHighestClass;
        }

        private void SetOwnerDogCounts(DataRow row, Guid show_ID)
        {
            RunningOrders.OwnerDogCount = 0;
            RunningOrders.OwnerDogsInClassCount = 0;
            RunningOrders.ClassesPerOwnerEnteredCount = 0;
            RunningOrders.ClassesPerDogEnteredCount = 0;

            List<Guid> ownerDogsList = new List<Guid>();
            List<Guid> ownerDogsInClassList = new List<Guid>();
            List<Guid> classesPerOwnerEnteredList = new List<Guid>();
            List<Guid> classesPerDogEnteredList = new List<Guid>();
            try
            {
                DogClasses dogClass = new DogClasses(_connString);
                List<DogClasses> dogClasses1 = dogClass.GetDog_ClassesByDog_ID(show_ID, Utils.DBNullToGuid(row["Dog_ID"]));

                foreach (DogClasses dogClass1 in dogClasses1)
                {
                    if (dogClass1.Show_Final_Class_ID != new Guid())
                    {
                        ShowFinalClasses sfc = new ShowFinalClasses(_connString, (Guid)dogClass1.Show_Final_Class_ID);

                        if ((Guid)sfc.Show_ID == show_ID)
                        {
                            if (classesPerDogEnteredList.IndexOf((Guid)dogClass1.Show_Entry_Class_ID) == -1)
                                classesPerDogEnteredList.Add((Guid)dogClass1.Show_Entry_Class_ID);
                        }
                    }
                }

                DogOwners dogOwner = new DogOwners(_connString);
                List<DogOwners> dogOwnerList = dogOwner.GetDogOwnersByOwner_ID(Utils.DBNullToGuid(row["Owner_ID"]));

                foreach (DogOwners dogOwnerRow in dogOwnerList)
                {
                    List<DogClasses> dogClasses = dogClass.GetDog_ClassesByEntrant_ID(Utils.DBNullToGuid(row["Entrant_ID"]));
                    foreach (DogClasses dcRow in dogClasses)
                    {
                        if (dcRow.Show_Final_Class_ID != new Guid())
                        {
                            ShowFinalClasses sfc = new ShowFinalClasses(_connString, Utils.DBNullToGuid(dcRow.Show_Final_Class_ID));
                            if ((Guid)sfc.Show_ID == show_ID)
                            {
                                Guid dog_ID = (Guid)dcRow.Dog_ID;
                                Guid dog_Class_ID = (Guid)dcRow.Dog_Class_ID;
                                Guid show_Entry_Class_ID = (Guid)dcRow.Show_Entry_Class_ID;
                                ShowEntryClasses sec = new ShowEntryClasses(_connString, show_Entry_Class_ID);
                                ClassNames cn = new ClassNames(_connString, int.Parse(sec.Class_Name_ID.ToString()));
                                if (cn.Class_Name_Description != "NFC")
                                {
                                    if (ownerDogsList.IndexOf(dog_ID) == -1)
                                        ownerDogsList.Add(dog_ID);
                                    if (classesPerOwnerEnteredList.IndexOf(show_Entry_Class_ID) == -1)
                                        classesPerOwnerEnteredList.Add(show_Entry_Class_ID);
                                    if (dcRow.Show_Entry_Class_ID == sfc.Show_Entry_Class_ID)
                                    {
                                        if (ownerDogsInClassList.IndexOf(dog_ID) == -1)
                                            ownerDogsInClassList.Add(dog_ID);
                                    }
                                }
                            }
                        }
                    }
                }
                RunningOrders.OwnerDogCount = ownerDogsList.Count;
                RunningOrders.OwnerDogsInClassCount = ownerDogsInClassList.Count;
                RunningOrders.ClassesPerOwnerEnteredCount = classesPerOwnerEnteredList.Count;
                RunningOrders.ClassesPerDogEnteredCount = classesPerDogEnteredList.Count;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private bool IsOldestDog(DataRow row)
        {
            bool oldestDog = true;
            try
            {
                Dogs currentDog = new Dogs(_connString, Utils.DBNullToGuid(row["Dog_ID"]));
                int? currentYOB = currentDog.Year_Of_Birth;
                if (currentYOB == null)
                {
                    DateTime? currentDOB = currentDog.Date_Of_Birth;
                    if (currentDOB != null)
                    {
                        DateTime dteCurrentDOB = (DateTime)currentDOB;
                        currentYOB = dteCurrentDOB.Year;
                    }
                    else
                    {
                        return true;
                    }
                }
                DogOwners dogOwner = new DogOwners(_connString);
                List<DogOwners> dogOwnerList = dogOwner.GetDogOwnersByOwner_ID(Utils.DBNullToGuid(row["Owner_ID"]));
                foreach (DogOwners dogOwnerRow in dogOwnerList)
                {
                    if (dogOwnerRow.Dog_ID != Utils.DBNullToGuid(row["Dog_ID"]))
                    {
                        Dogs thisDog = new Dogs(_connString, dogOwnerRow.Dog_ID);
                        int? thisYOB = thisDog.Year_Of_Birth;
                        if (thisYOB == null)
                        {
                            DateTime? thisDOB = thisDog.Date_Of_Birth;
                            if (thisDOB != null)
                            {
                                DateTime dteThisDOB = (DateTime)thisDOB;
                                thisYOB = dteThisDOB.Year;
                            }
                            else
                            {
                                thisYOB = 0;
                            }
                        }
                        if (thisYOB < currentYOB)
                            return false;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return oldestDog;
        }

        private void ClearDrawnFlags()
        {
            RunningOrders.OwnersDrawn = null;
            RunningOrders.OwnersDrawnOnDay1 = null;
            RunningOrders.OwnersDrawnOnDay2 = null;
            RunningOrders.DogsDrawn = null;
        }

        private void SetDrawnFlags(DataRow row, Guid show_ID)
        {
            bool setFlags = true;
            //if((row.Show_Final_Class_Description.Contains("Champ") || row.Show_Final_Class_Description.Contains("YKC")) && row.Running_Order <= 20)
            //{
            //    setFlags=false;
            //}
            try
            {
                if (setFlags)
                {
                    //Dog Level Flag
                    if (RunningOrders.DogsDrawn.IndexOf(Utils.DBNullToGuid(row["Dog_ID"])) == -1)
                    {
                        RunningOrders.DogsDrawn.Add(Utils.DBNullToGuid(row["Dog_ID"]));
                    }
                    //Owner Level Flag
                    if (RunningOrders.OwnersDrawn.IndexOf(Utils.DBNullToGuid(row["Owner_ID"])) == -1)
                    {
                        RunningOrders.OwnersDrawn.Add(Utils.DBNullToGuid(row["Owner_ID"]));
                    }

                    ShowFinalClasses sfc = new ShowFinalClasses(_connString, Utils.DBNullToGuid(row["Show_Final_Class_ID"]));

                    if ((Guid)sfc.Show_ID == RunningOrders.Day1_Show_ID)
                    {
                        if (RunningOrders.OwnersDrawnOnDay1.IndexOf(Utils.DBNullToGuid(row["Owner_ID"])) == -1)
                        {
                            RunningOrders.OwnersDrawnOnDay1.Add(Utils.DBNullToGuid(row["Owner_ID"]));
                        }
                    }
                    else
                    {
                        if (RunningOrders.OwnersDrawnOnDay2.IndexOf(Utils.DBNullToGuid(row["Owner_ID"])) == -1)
                        {
                            RunningOrders.OwnersDrawnOnDay2.Add(Utils.DBNullToGuid(row["Owner_ID"]));
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool PopulateOwnersDogsClassesDrawnList(Guid show_ID, Guid? show_Final_Class_ID, bool display)
        {
            bool success = false;

            try
            {
                if (show_Final_Class_ID == new Guid())
                {
                    show_Final_Class_ID = null;
                }

                RunningOrdersBL runningOrders = new RunningOrdersBL(_connString);
                if (display)
                    success = runningOrders.PopulateOwnersDogsClassesList(show_ID, show_Final_Class_ID);
                else
                    success = runningOrders.PopulateOwnersDogsClassesListOrderByEntry_Date(show_ID, null);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return success;
        }

        public static bool DeleteOwnersDogsClassesDrawnList(string connString)
        {
            bool retVal = false;

            try
            {
                RunningOrdersBL runningOrders = new RunningOrdersBL(connString);
                retVal = runningOrders.DeleteOwnersDogsClassesList();
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return retVal;
        }

        public static List<OwnersDogsClassesDrawn> GetOwnersDogsClassesDrawnListData(string connString, Guid show_ID, Guid? show_Final_Class_ID, bool display)
        {
            List<OwnersDogsClassesDrawn> ownersDogsClassesDrawnList = new List<OwnersDogsClassesDrawn>();

            try
            {
                OwnersDogsClassesDrawn ownersDogsClassesDrawn = new OwnersDogsClassesDrawn(connString);
                if (ownersDogsClassesDrawn.PopulateOwnersDogsClassesDrawnList(show_ID, show_Final_Class_ID, display))
                {
                    ownersDogsClassesDrawnList = ownersDogsClassesDrawn.GetOwnerDogsClassesDrawnList(show_ID, show_Final_Class_ID, display);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return ownersDogsClassesDrawnList;
        }
    }
}
