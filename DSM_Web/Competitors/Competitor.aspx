<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Competitor.aspx.cs" Inherits="Competitors_Competitor" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            if ($(txtEntryDateID)) {
                $(txtEntryDateID).dynDateTime({
                    showsTime: false,
                    ifFormat: "%Y-%m-%d",
                    daFormat: "%l;%M %p, %e %m,  %Y",
                    align: "BR",
                    electric: false,
                    singleClick: false,
                    displayArea: ".siblings('.dtcDisplayArea')",
                    button: ".next()"
                });
            }
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divCompetitors" runat="server">
        <p>
            <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
        </p>
        <div id="divNewCompetitor" runat="server">
            <asp:Button ID="btnNewCompetitor" runat="server" Text="New Entry"
                onClick="btnNewCompetitor_Click" UseSubmitBehavior="false" />
        </div>
        <div id="divClubList" runat="server">
            <h4>Select the Club</h4>
            <asp:GridView ID="ClubGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="ClubGridView_SelectedIndexChanged"
                DataKeyNames="Club_ID, Club_Contact" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Club_ID" Visible="false" />
                    <asp:BoundField DataField="Club_Long_Name" HeaderText="Club Full Name" />
                    <asp:BoundField DataField="Club_Short_Name" HeaderText="Club Short Name" />
                    <asp:BoundField DataField="Club_Contact" Visible="False" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divClubDetails" runat="server">
            <div id="divChangeClub" runat="server">
                <asp:Button ID="btnChangeClub" runat="server" Text="Change Club" 
                    onclick="btnChangeClub_Click" />
            </div>
            <h4>Club Details</h4>
            <asp:Table ID="tblClubDetails" runat="server">
                <asp:TableRow ID="TableRow2"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="lblClubLongName" runat="server" Text="Club Full Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtClubLongName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divShowList" runat="server">
            <h4>Select the Show</h4>
            <asp:GridView ID="ShowGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="ShowGridView_SelectedIndexChanged"
                DataKeyNames="Show_ID,Club_ID,Venue_ID" 
                onrowdatabound="ShowGridView_RowDataBound" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Show_ID" Visible="false" />
                    <asp:BoundField DataField="Club_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_ID" Visible="False" />
                    <asp:BoundField DataField="Show_Name" HeaderText="Show Name" />
                    <asp:BoundField DataField="Show_Opens" HeaderText="Show Date" />
                    <asp:BoundField DataField="Closing_Date" HeaderText="Entry Closing Date" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divShowDetails" runat="server">
            <div id="divChangeShow" runat="server">
                <asp:Button ID="btnChangeShow" runat="server" Text="Change Show" 
                    onclick="btnChangeShow_Click" />
            </div>
            <h4>Show Details</h4>
            <asp:Table ID="tblShowDetails" runat="server">
                <asp:TableRow ID="TableRow1"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label1" runat="server" Text="Show Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtShowName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divGetOwner" runat="server">
            <asp:Button ID="btnGetOwner" runat="server" Text="Select or Add Owner(s)"
            onclick="btnGetOwner_Click" />
        </div>
        <div id="divOwnerList" runat="server">
            <h4>Owner Details</h4>
            <asp:GridView ID="OwnerGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                 onrowdeleting="OwnerGridView_RowDeleting" 
                DataKeyNames="Person_ID" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Person_ID" Visible="False" />
                    <asp:BoundField DataField="Person_Title" HeaderText="Title" />
                    <asp:BoundField DataField="Person_Forename" HeaderText="Forename" />
                    <asp:BoundField DataField="Person_Surname" HeaderText="Surname" />
                    <asp:BoundField DataField="Person_Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Person_Landline" HeaderText="Landline" />
                    <asp:BoundField DataField="Person_Email" HeaderText="Email" />
                    <asp:BoundField DataField="Person_OE_Owner_ID" HeaderText="OE Owner ID" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divGetDog" runat="server">
            <asp:Button ID="btnGetDog" runat="server" Text="Select or Add a Dog" 
                onclick="btnGetDog_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divDogList" runat="server">
            <h4>Dogs you have added</h4>
            <asp:GridView ID="DogGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True"
                DataKeyNames="Dog_ID" onrowdeleting="DogGridView_RowDeleting" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Dog_ID" Visible="False" />
                    <asp:BoundField DataField="Dog_Pet_Name" HeaderText="Pet Name" />
                    <asp:BoundField DataField="Dog_KC_Name" HeaderText="KC Name" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divEntryDetails" runat="server">
            <h4>Entry Details</h4>
            <asp:Table ID="tblEntry" runat="server">
                <asp:TableRow ID="TableRow16"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblEntryDate" runat="server" Text="Date on Entry Form"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtEntryDate" runat="server"></asp:TextBox>
                        <img alt="Calendar" src="../Images/calender.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label7" runat="server" Text="Withold Address?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkWithold_Address" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="Catalogue Required?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkCatalogue" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow6"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Overnight Camping Required?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkOvernight_Camping" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow8"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label8" runat="server" Text="Send Running Order?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkSend_Running_Order" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow9"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Amount Over or Under-Paid"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButton ID="rdoOverpayment" Text="Overpayment" GroupName="PaymentDiff" runat="server" />
                        <asp:RadioButton ID="rdoUnderpayment" Text="Underpayment" GroupName="PaymentDiff" runat="server" />
                        <br />
                        <asp:Literal runat="server">£</asp:Literal>
                        <asp:TextBox ID="txtPaymentDiff" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow11"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Offer Of Help?"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="chkOffer_Of_Help" runat="server" AutoPostBack="True" OnCheckedChanged="chkOffer_Of_Help_CheckedChanged" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowHelpDetails"  runat="server">
                    <asp:TableCell ColumnSpan="2">
                        <asp:Label ID="Label12" runat="server" Text="Help Details"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtHelp_Details" runat="server" TextMode="MultiLine" Rows="5" Width="600"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <script type="text/javascript">
            var txtEntryDateID = <%= txtEntryDate.ClientID %>;
        </script>
        <div id="divAddCompetitor" runat="server">
            <asp:Button ID="btnAddCompetitor" runat="server" Text="Save and Add Dogs to Classes" 
                onclick="btnAddCompetitor_Click" />
        </div>
        <div id="divUpdateCompetitor" runat="server">
            <asp:Button ID="btnUpdateCompetitor" runat="server" Text="Save and Add Dogs to Classes" 
                onclick="btnUpdateCompetitor_Click" />
        </div>
    </div>
</asp:Content>

