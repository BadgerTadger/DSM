using System;
using System.Collections.Generic;
using System.Web;

public class Constants
{
    // File Paths
    public const string DEF = "~/Default.aspx";
    public const string UPI = "~/Users/PersonalInfo.aspx";
    public const string SUA = "~/ShowAdmin/AddressSetup.aspx";
    public const string SUC = "~/ShowAdmin/ClubSetup.aspx";
    public const string SUP = "~/ShowAdmin/PersonSetup.aspx";
    public const string SUS = "~/ShowAdmin/ShowSetup.aspx";
    public const string SUV = "~/ShowAdmin/VenueSetup.aspx";
    public const string SAC = "~/ShowAdmin/AddClasses.aspx";
    public const string SAG = "~/ShowAdmin/Guarantors.aspx";
    public const string COC = "~/Competitors/Competitor.aspx";
    public const string CDC = "~/Competitors/AddDogToClasses.aspx";
    public const string DSU = "~/Dogs/DogSetup.aspx";
    public const string DOG = "~/Dogs/Dogs.aspx";

    //Show Types
    public const short NONE = 1;
    public const short OPEN = 2;
    public const short CHAMPIONSHIP = 3;
    public const short LIMIT = 4;
    public const short HTM = 5;

    public const short DATA_NO_CHANGE = 0;
    public const short DATA_INSERTED = 1;
    public const short DATA_DELETED = 2;
    public const short DATA_INSERTED_AND_DELETED = 3;

    public const int DRAW_QTY_LESS_THAN = 25;

    public const short CLASS_GENDER_NS = 0;
    public const short CLASS_GENDER_DB = 1;
    public const short CLASS_GENDER_D = 2;
    public const short CLASS_GENDER_B = 3;

    public Constants()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}