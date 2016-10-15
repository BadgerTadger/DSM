<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ShowSetup.aspx.cs" Inherits="ShowAdmin_ShowSetup" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            if ($(txtShowDateTimeID)) {
                $(txtShowDateTimeID).dynDateTime({
                    showsTime: true,
                    ifFormat: "%Y-%m-%d %H:%M",
                    daFormat: "%l;%M %p, %e %m,  %Y",
                    align: "BR",
                    electric: false,
                    singleClick: false,
                    displayArea: ".siblings('.dtcDisplayArea')",
                    button: ".next()"
                });
            }
        });

        $(document).ready(function () {
            if ($(txtJudgingDateTimeID)) {
                $(txtJudgingDateTimeID).dynDateTime({
                    showsTime: true,
                    ifFormat: "%Y-%m-%d %H:%M",
                    daFormat: "%l;%M %p, %e %m,  %Y",
                    align: "BR",
                    electric: false,
                    singleClick: false,
                    displayArea: ".siblings('.dtcDisplayArea')",
                    button: ".next()"
                });
            }
        });

        $(document).ready(function () {
            if ($(txtCloseDateTimeID)) {
                $(txtCloseDateTimeID).dynDateTime({
                    showsTime: true,
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

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="DivShow">
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
        <h3>Create a Show</h3>
            <p>
                <asp:Button ID="btnReset" runat="server" Text="New Show" 
                    onclick="btnReset_Click" />
            </p>
        <div id="divGetClub" runat="server">
            <asp:Button ID="btnGetClub" runat="server" Text="Select or Add a Club" 
                onclick="btnGetClub_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divClubDetails" runat="server">
            <h4>Club Details</h4>
            <asp:Table ID="tblClubDetails" runat="server">
                <asp:TableRow ID="TableRow1"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="lblClubLongName" runat="server" Text="Club Full Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtClubLongName" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCellChangeClub" runat="server">
                        <asp:Button ID="btnChangeClub" runat="server" Text="Change Club" OnClick="btnGetClub_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divGetVenue" runat="server">
            <p>
                <asp:Button ID="btnGetVenue" runat="server" Text="Select or Add a Venue" 
                    onclick="btnGetVenue_Click" UseSubmitBehavior="False" />
            </p>
        </div>
        <div id="divVenueDetails" runat="server">
            <h4>Venue Details</h4>
            <asp:Table ID="tblVenueDetails" runat="server">
                <asp:TableRow ID="TableRow4"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="lblVenueName" runat="server" Text="Venue Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtVenueName" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell ID="TableCellChangeVenue" runat="server">
                        <asp:Button ID="btnChangeVenue" runat="server" Text="Change Venue" OnClick="btnGetVenue_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divShowDetails" runat="server">
            <h4>Show Details</h4>
            <div id="divShowYear" runat="server">
                <asp:Table ID="tblShowYear" runat="server">
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell Width="300">
                            <asp:Label ID="Label1" runat="server" Text="Show Year"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="lstShowYears" runat="server" 
                                DataTextField="ShowYear" DataValueField="Show_Year_ID" 
                                autoPostBack="true">
                                </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <div id="divShowType" runat="server">
                <asp:Table ID="tblShowType" runat="server">
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell Width="300">
                            <asp:Label ID="Label2" runat="server" Text="Show Type"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList ID="lstShowTypes" runat="server" 
                                DataTextField="Description" DataValueField="Show_Type_ID" 
                                autoPostBack="true">
                                </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
            <asp:Table ID="tblShowDetails" runat="server">
                <asp:TableRow runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label4" runat="server" Text="Show Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtShowName" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Show Date and Opening Time"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtShowDateTime" runat="server"></asp:TextBox>
                        <img alt="Calendar" src="../Images/calender.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label6" runat="server" Text="Judging Commences"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtJudgingDateTime" runat="server"></asp:TextBox>
                        <img alt="Calendar" src="../Images/calender.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow6"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label5" runat="server" Text="Entry Closing Date"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtCloseDateTime" runat="server"></asp:TextBox>
                        <img alt="Calendar" src="../Images/calender.png" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow11"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label13" runat="server" Text="Maximum Number of Classes per Dog"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtMaxClassesPerDog" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
                        
            <script type="text/javascript">
                var txtShowDateTimeID = <%= txtShowDateTime.ClientID %>;
                var txtJudgingDateTimeID = <%= txtJudgingDateTime.ClientID %>;
                var txtCloseDateTimeID = <%= txtCloseDateTime.ClientID %>;
            </script>
        </div>
        <div id="divAddGuarantors" runat="server">
            <asp:Button ID="btnAddGuarantors" runat="server" Text="Add Guarantors" 
                onclick="btnAddGuarantors_Click" />
        </div>
        <div id="divGuarantorList" runat="server">
            <h4>Guarantors</h4>
            <div id="divUpdateGuarantors" runat="server">
                <asp:Button ID="btnUpdateGuarantors" runat="server" Text="Update Guarantors" 
                    onclick="btnAddGuarantors_Click" />
            </div>
            <asp:Table ID="tblGuarantors" runat="server">
                <asp:TableRow ID="TableRow8"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label7" runat="server" Text="Chairman"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtChairman" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow9"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label8" runat="server" Text="Secretary"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSecretary" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow10"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label9" runat="server" Text="Treasurer"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtTreasurer" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC1"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label10" runat="server" Text="First Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee1" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC2"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label11" runat="server" Text="Second Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee2" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC3"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label12" runat="server" Text="Third Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee3" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divAddShow" runat="server">
            <asp:Button ID="btnAddShow" runat="server" Text="Add Show" 
                onclick="btnAddShow_Click" />
        </div>
        <div id="divUpdateShow" runat="server">
            <asp:Button ID="btnUpdateShow" runat="server" Text="Update Show" 
                onclick="btnUpdateShow_Click" />
        </div>
        <div id="divShowList" runat="server">
            <h4>Existing Shows For Club</h4>
            <asp:GridView ID="ShowGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="ShowGridView_SelectedIndexChanged"
                DataKeyNames="Show_ID,Club_ID,Venue_ID" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Show_ID" Visible="false" />
                    <asp:BoundField DataField="Club_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_ID" Visible="False" />
                    <asp:BoundField DataField="Show_Name" HeaderText="Show Name" />
                    <asp:BoundField DataField="Show_Opens" HeaderText="Show Date" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divAddClasses" runat="server">
            <p>
                <asp:Button ID="btnAddClasses" runat="server" Text="Add Classes" 
                    onclick="btnAddClasses_Click" />
            </p>
        </div>
        <div id="divClassList" runat="server">
            <h4>Classes Added to Show</h4>
            <asp:GridView ID="ClassGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                DataKeyNames="Show_Entry_Class_ID,Show_ID,Class_Name_ID" 
                onrowdeleting="ClassGridView_RowDeleting" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Show_Entry_Class_ID" Visible="False" />
                    <asp:BoundField DataField="Show_ID" Visible="False" />
                    <asp:BoundField DataField="Class_Name_Description" HeaderText="Class Name" Visible="True" />
                    <asp:BoundField DataField="Class_No" HeaderText="Class No." />
                </Columns>
            </asp:GridView>
        </div>
        <div id="DivReturn" runat="server">
            <p>
                <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
            </p>
        </div>
        <div id="divReset" runat="server">
        </div>
    </div>
</asp:Content>