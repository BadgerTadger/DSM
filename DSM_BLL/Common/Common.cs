using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Web;
using BLL;
using System.Configuration;
using System.Data.SqlClient;

public static class Common
{    
    private static string _returnUrl = null;
    public static string ReturnUrl
    {
        get
        {
            return _returnUrl;
        }
        set
        {
            _returnUrl = value;
        }
    }

    public static string ReturnPath(NameValueCollection nvc, string qS, string removeMe)
    {
        NameValueCollection nv = new NameValueCollection(nvc);
        if (!string.IsNullOrEmpty(removeMe))
            nv.Remove(removeMe);
        string ReturnUrl = Constants.DEF;
        if (!string.IsNullOrEmpty(qS) && qS.Length > 2)
        {
            switch (qS.Substring(qS.Length - 3, 3))
            {
                case "sua":
                    ReturnUrl = Constants.SUA;
                    break;
                case "suc":
                    ReturnUrl = Constants.SUC;
                    break;
                case "sup":
                    ReturnUrl = Constants.SUP;
                    break;
                case "sus":
                    ReturnUrl = Constants.SUS;
                    break;
                case "suv":
                    ReturnUrl = Constants.SUV;
                    break;
                case "sac":
                    ReturnUrl = Constants.SAC;
                    break;
                case "sag":
                    ReturnUrl = Constants.SAG;
                    break;
                case "coc":
                    ReturnUrl = Constants.COC;
                    break;
                case "cdc":
                    ReturnUrl = Constants.CDC;
                    break;
                case "dsu":
                    ReturnUrl = Constants.DSU;
                    break;
                case "dog":
                    ReturnUrl = Constants.DOG;
                    break;
                case "upi":
                    ReturnUrl=Constants.UPI;
                    break;
                default:
                    ReturnUrl = Constants.DEF;
                    break;
            }
            string newQuery = "";
            nv["return"] = qS.Substring(0, qS.Length - 3);

            foreach (string k in nv.Keys)
            {
                newQuery += k + "=" + nv[k] + "&";
            }
            string url = string.Format("{0}?{1}", ReturnUrl, newQuery.Substring(0, newQuery.Length - 1));
            
            ReturnUrl = url;
        }
        return ReturnUrl;
    }

    public static string AppendReturnChars(NameValueCollection qs, string returnChars)
    {
        NameValueCollection newQs = new NameValueCollection(qs);
        string rC = string.Empty;
        newQs["return"] += returnChars;
        foreach (string k in newQs.Keys)
        {
            rC += k + "=" + newQs[k] + "&";
        }
        return rC.Substring(0, rC.Length - 1);
    }


    private static string _connString = "";
    public static string ConnString
    {
        get { return _connString; }
        set { _connString = value; }
    }
    
    private static string _new_User_ID;
    public static string New_User_ID
    {
        get { return _new_User_ID; }
        set { _new_User_ID = value; }
    }
    private static string _user_Person_ID;
    public static string User_Person_ID
    {
        get { return _user_Person_ID; }
        set { _user_Person_ID = value; }
    }
    private static bool _guarantorsPopulated = false;
    public static bool GuarantorsPopulated
    {
        get { return _guarantorsPopulated; }
        set { _guarantorsPopulated = value; }
    }

    private static string _club_ID;
    public static string Club_ID
    {
        get { return _club_ID; }
        set { _club_ID = value; }
    }

    private static string _show_ID;
    public static string Show_ID
    {
        get { return _show_ID; }
        set { _show_ID = value; }
    }

    private static string _show_Name;
    public static string Show_Name
    {
        get { return _show_Name; }
        set { _show_Name = value; }
    }

    private static string _show_Opens;
    public static string Show_Opens
    {
        get { return _show_Opens; }
        set { _show_Opens = value; }
    }

    private static string _judging_Commences;
    public static string Judging_Commences
    {
        get { return _judging_Commences; }
        set { _judging_Commences = value; }
    }

    private static string _closing_Date;
    public static string Closing_Date
    {
        get { return _closing_Date; }
        set { _closing_Date = value; }
    }

    private static string _venue_ID;
    public static string Venue_ID
    {
        get { return _venue_ID; }
        set { _venue_ID = value; }
    }

    private static string _venue_Name;
    public static string Venue_Name
    {
        get { return _venue_Name; }
        set { _venue_Name = value; }
    }

    private static string _venue_Address_ID;
    public static string Venue_Address_ID
    {
        get { return _venue_Address_ID; }
        set { _venue_Address_ID = value; }
    }

    private static string _venue_Contact_ID;
    public static string Venue_Contact_ID
    {
        get { return _venue_Contact_ID; }
        set { _venue_Contact_ID = value; }
    }

    private static string _show_Entry_Class_ID;
    public static string Show_Entry_Class_ID
    {
        get { return _show_Entry_Class_ID; }
        set { _show_Entry_Class_ID = value; }
    }

    private static string _show_Final_Class_ID;
    public static string Show_Final_Class_ID
    {
        get { return _show_Final_Class_ID; }
        set { _show_Final_Class_ID = value; }
    }

    private static string _class_Name_ID;
    public static string Class_Name_ID
    {
        get { return _class_Name_ID; }
        set { _class_Name_ID = value; }
    }

    private static string _class_No;
    public static string Class_No
    {
        get { return _class_No; }
        set { _class_No = value; }
    }

    private static string _class_Gender;
    public static string Class_Gender
    {
        get { return _class_Gender; }
        set { _class_Gender = value; }
    }

    private static string _address_ID;
    public static string Address_ID
    {
        get { return _address_ID; }
        set { _address_ID = value; }
    }

    private static string _person_ID;
    public static string Person_ID
    {
        get { return _person_ID; }
        set { _person_ID = value; }
    }

    private static string _person_Address_ID;
    public static string Person_Address_ID
    {
        get { return _person_Address_ID; }
        set { _person_Address_ID = value; }
    }

    private static string _club_Contact_ID;
    public static string Club_Contact_ID
    {
        get { return _club_Contact_ID; }
        set { _club_Contact_ID = value; }
    }

    private static string _club_Long_Name;
    public static string Club_Long_Name
    {
        get { return _club_Long_Name; }
        set { _club_Long_Name = value; }
    }

    private static string _club_Short_Name;
    public static string Club_Short_Name
    {
        get { return _club_Short_Name; }
        set { _club_Short_Name = value; }
    }

    private static string _guarantor_ID;
    public static string Guarantor_ID
    {
        get { return _guarantor_ID; }
        set { _guarantor_ID = value; }
    }

    private static string _chairman_ID;
    public static string Chairman_ID
    {
        get { return _chairman_ID; }
        set { _chairman_ID = value; }
    }

    private static string _treasurer_ID;
    public static string Treasurer_ID
    {
        get { return _treasurer_ID; }
        set { _treasurer_ID = value; }
    }

    private static string _secretary_ID;
    public static string Secretary_ID
    {
        get { return _secretary_ID; }
        set { _secretary_ID = value; }
    }

    private static string _committee1_ID;
    public static string Committee1_ID
    {
        get { return _committee1_ID; }
        set { _committee1_ID = value; }
    }

    private static string _committee2_ID;
    public static string Committee2_ID
    {
        get { return _committee2_ID; }
        set { _committee2_ID = value; }
    }

    private static string _committee3_ID;
    public static string Committee3_ID
    {
        get { return _committee3_ID; }
        set { _committee3_ID = value; }
    }

    private static string _maxClassesPerDog;
    public static string MaxClassesPerDog
    {
        get { return _maxClassesPerDog; }
        set { _maxClassesPerDog = value; }
    }
    private static string _title;
    public static string Title
    {
        get { return _title; }
        set { _title = value; }
    }
    private static string _forename;
    public static string Forename
    {
        get { return _forename; }
        set { _forename = value; }
    }

    private static string _surname;
    public static string Surname
    {
        get { return _surname; }
        set { _surname = value; }
    }

    private static string _mobile;
    public static string Mobile
    {
        get { return _mobile; }
        set { _mobile = value; }
    }

    private static string _landline;
    public static string Landline
    {
        get { return _landline; }
        set { _landline = value; }
    }

    private static string _email;
    public static string Email
    {
        get { return _email; }
        set { _email = value; }
    }

    private static string _show_Year_ID;
    public static string Show_Year_ID
    {
        get { return _show_Year_ID; }
        set { _show_Year_ID = value; }
    }

    private static string _show_Type_ID;
    public static string Show_Type_ID
    {
        get { return _show_Type_ID; }
        set { _show_Type_ID = value; }
    }

    private static string _dog_ID;
    public static string Dog_ID
    {
        get { return _dog_ID; }
        set { _dog_ID = value; }
    }
    private static string _current_Dog_ID;
    public static string Current_Dog_ID
    {
        get { return _current_Dog_ID; }
        set { _current_Dog_ID = value; }
    }
    private static string _dog_KC_Name;
    public static string Dog_KC_Name
    {
        get { return _dog_KC_Name; }
        set { _dog_KC_Name = value; }
    }
    private static string __dog_Pet_Name;
    public static string Dog_Pet_Name
    {
        get { return __dog_Pet_Name; }
        set { __dog_Pet_Name = value; }
    }
    private static string _dam_ID;
    public static string Dam_ID
    {
        get { return _dam_ID; }
        set { _dam_ID = value; }
    }
    private static string _sire_ID;
    public static string Sire_ID
    {
        get { return _sire_ID; }
        set { _sire_ID = value; }
    }
    private static string _dog_Owner_ID;
    public static string Dog_Owner_ID
    {
        get { return _dog_Owner_ID; }
        set { _dog_Owner_ID = value; }
    }
    private static string _owner_ID;
    public static string Owner_ID
    {
        get { return _owner_ID; }
        set { _owner_ID = value; }
    }
    private static string _dog_Breeder_ID;
    public static string Dog_Breeder_ID
    {
        get { return _dog_Breeder_ID; }
        set { _dog_Breeder_ID = value; }
    }
    private static string _breeder_ID;
    public static string Breeder_ID
    {
        get { return _breeder_ID; }
        set { _breeder_ID = value; }
    }
    private static string _reg_No;
    public static string Reg_No
    {
        get { return _reg_No; }
        set { _reg_No = value; }
    }
    private static string _date_Of_Birth;
    public static string Date_Of_Birth
    {
        get { return _date_Of_Birth; }
        set { _date_Of_Birth = value; }
    }
    private static string _merit_Points;
    public static string Merit_Points
    {
        get { return _merit_Points; }
        set { _merit_Points = value; }
    }
    private static bool _nLWU;
    public static bool NLWU
    {
        get { return _nLWU; }
        set { _nLWU = value; }
    }
    private static string _entrant_ID;
    public static string Entrant_ID
    {
        get { return _entrant_ID; }
        set { _entrant_ID = value; }
    }
    private static string _existingEntrant_ID;
    public static string ExistingEntrant_ID
    {
        get { return _existingEntrant_ID; }
        set { _existingEntrant_ID = value; }
    }
    private static bool _withold_Address;
    public static bool Withold_Address
    {
        get { return _withold_Address; }
        set { _withold_Address = value; }
    }
    private static bool _catalogue;
    public static bool Catalogue
    {
        get { return _catalogue; }
        set { _catalogue = value; }
    }
    private static bool _overnight_Camping;
    public static bool Overnight_Camping
    {
        get { return _overnight_Camping; }
        set { _overnight_Camping = value; }
    }
    private static bool _send_Running_Order;
    public static bool Send_Running_Order
    {
        get { return _send_Running_Order; }
        set { _send_Running_Order = value; }
    }
    private static string _entry_Date;
    public static string Entry_Date
    {
        get { return _entry_Date; }
        set { _entry_Date = value; }
    }
    private static string _overpayment;
    public static string Overpayment
    {
        get { return _overpayment; }
        set { _overpayment = value; }
    }
    private static string _underpayment;
    public static string Underpayment
    {
        get { return _underpayment; }
        set { _underpayment = value; }
    }
    private static bool _offer_Of_Help;
    public static bool Offer_Of_Help
    {
        get { return _offer_Of_Help; }
        set { _offer_Of_Help = value; }
    }
    private static string _help_Details;
    public static string Help_Details
    {
        get { return _help_Details; }
        set { _help_Details = value; }
    }
    private static string _dog_Class_ID;
    public static string Dog_Class_ID
    {
        get { return _dog_Class_ID; }
        set { _dog_Class_ID = value; }
    }
    private static string _special_Request;
    public static string Special_Request
    {
        get { return _special_Request; }
        set { _special_Request = value; }
    }
    private static string _handler_ID;
    public static string Handler_ID
    {
        get { return _handler_ID; }
        set { _handler_ID = value; }
    }
    private static string _linked_Show_ID;
    public static string Linked_Show_ID
    {
        get { return _linked_Show_ID; }
        set { _linked_Show_ID = value; }
    }
    private static string _parent_Show_ID;
    public static string Parent_Show_ID
    {
        get { return _parent_Show_ID; }
        set { _parent_Show_ID = value; }
    }
    private static string _child_Show_ID;
    public static string Child_Show_ID
    {
        get { return _child_Show_ID; }
        set { _child_Show_ID = value; }
    }
    private static bool _dogAdded = false;
    public static bool DogAdded
    {
        get { return _dogAdded; }
        set { _dogAdded = value; }
    }
    private static bool _exclNFC = false;
    public static bool ExclNFC
    {
        get { return _exclNFC; }
        set { _exclNFC = value; }
    }
    private static List<Dogs> _dog_GridViewData;
    public static List<Dogs> Dog_GridViewData
    {
        get
        {
            if (_dog_GridViewData == null)
            {
                _dog_GridViewData = new List<Dogs>();
                Dogs dogs = new Dogs(_connString);
                _dog_GridViewData = dogs.GetDogs();
            }

            return _dog_GridViewData;
        }
        set { _dog_GridViewData = value; }
    }
    private static List<People> _person_GridViewData;
    public static List<People> Person_GridViewData
    {
        get
        {
            if (_person_GridViewData == null)
            {
                _person_GridViewData = new List<People>();
                People people = new People(_connString);
                _person_GridViewData = people.GetPeople();
            }

            return _person_GridViewData;
        }
        set { _person_GridViewData = value; }
    }

    public static void ResetPerson()
    {
        Club_Contact_ID = null;
        Venue_Contact_ID = null;
        Person_ID = null;
        Chairman_ID = null;
        Treasurer_ID = null;
        Secretary_ID = null;
        Committee1_ID = null;
        Committee2_ID = null;
        Committee3_ID = null;
        Owner_ID = null;
        Breeder_ID = null;
        New_User_ID = null;
    }

    public static void Reset()
    {
        Club_ID = null;
        Show_ID = null;
        Show_Name = null;
        Show_Opens = null;
        Judging_Commences = null;
        Closing_Date = null;
        Venue_ID = null;
        Venue_Name = null;
        Venue_Address_ID = null;
        Venue_Contact_ID = null;
        Show_Entry_Class_ID = null;
        Class_Name_ID = null;
        Class_No = null;
        Address_ID = null;
        Person_ID = null;
        Person_Address_ID = null;
        Club_Contact_ID = null;
        Club_Long_Name = null;
        Club_Short_Name = null;
        Chairman_ID = null;
        Treasurer_ID = null;
        Secretary_ID = null;
        Committee1_ID = null;
        Committee2_ID = null;
        Committee3_ID = null;
        Forename = null;
        Surname = null;
        Mobile = null;
        Landline = null;
        Email = null;
        Show_Year_ID = null;
        Show_Type_ID = null;
        Guarantor_ID = null;
        GuarantorsPopulated = false;
        Dog_ID = null;
        Dam_ID = null;
        Sire_ID = null;
        Owner_ID = null;
        Breeder_ID = null;
        Current_Dog_ID = null;
        Dog_Class_ID = null;
        New_User_ID = null;
        User_Person_ID = null;
    }

    private static List<Dogs> _myDogList;
    public static List<Dogs> MyDogList
    {
        get { return _myDogList; }
        set { _myDogList = value; }
    }
    private static List<People> _dogOwnerList;
    public static List<People> DogOwnerList
    {
        get { return _dogOwnerList; }
        set { _dogOwnerList = value; }
    }
    private static List<People> _dogBreederList;
    public static List<People> DogBreederList
    {
        get { return _dogBreederList; }
        set { _dogBreederList = value; }
    }
    private static List<RingNumbers> _ringNumberList;
    public static List<RingNumbers> RingNumberList
    {
        get { return _ringNumberList; }
        set { _ringNumberList = value; }
    }
    private static List<EntryClassesCount> _entryClassList;
    public static List<EntryClassesCount> EntryClassList
    {
        get { return _entryClassList; }
        set { _entryClassList = value; }
    }
    private static List<FinalClassNames> _finalClassNameList;
    public static List<FinalClassNames> FinalClassNameList
    {
        get { return _finalClassNameList; }
        set { _finalClassNameList = value; }
    }
    private static List<CatalogueList> _catalogueListByRingNumberList;
    public static List<CatalogueList> CatalogueListByRingNumberList
    {
        get { return _catalogueListByRingNumberList; }
        set { _catalogueListByRingNumberList = value; }
    }
    private static List<SpecialRequests> _specialRequestList;
    public static List<SpecialRequests> SpecialRequestList
    {
        get { return _specialRequestList; }
        set { _specialRequestList = value; }
    }
    private static List<OwnersDogsClassesDrawn> _ownersDogsClassesDrawnList;
    public static List<OwnersDogsClassesDrawn> OwnersDogsClassesDrawnList
    {
        get { return _ownersDogsClassesDrawnList; }
        set { _ownersDogsClassesDrawnList = value; }
    }
    private static List<string> _newClass_ID;
    public static List<string> NewClass_ID
    {
        get { return _newClass_ID; }
        set { _newClass_ID = value; }
    }
    private static List<int> _selIndex;
    public static List<int> SelIndex
    {
        get { return _selIndex; }
        set { _selIndex = value; }
    }
    private static List<int> _selIndex2;
    public static List<int> SelIndex2
    {
        get { return _selIndex2; }
        set { _selIndex2 = value; }
    }
    private static List<OwnersDogsClassesHandlers> _ownersDogsClassesHandlersList;
    public static List<OwnersDogsClassesHandlers> OwnersDogsClassesHandlersList
    {
        get { return _ownersDogsClassesHandlersList; }
        set { _ownersDogsClassesHandlersList = value; }
    }
}