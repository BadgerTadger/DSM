<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ClubSetup.aspx.cs" Inherits="ShowAdmin_ClubSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="DivClub">
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
        <div id="divNewClub" runat="server">
            <asp:Button ID="btnNewClub" runat="server" Text="New Club" 
                onclick="btnNewClub_Click" />
        </div>
        <h3>Select or Create a Club</h3>
        <h4>Club Details</h4>
        <asp:Table ID="tblClubDetails" runat="server">
            <asp:TableRow ID="TableRow1"  runat="server">
                <asp:TableCell Width="200">
                    <asp:Label ID="lblClubLongName" runat="server" Text="Club Full Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtClubLongName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblClubShortName" runat="server" Text="Club Short Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtClubShortName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="divGetPerson" runat="server">
            <asp:Button ID="btnGetPerson" runat="server" Text="Select or Add a Contact" 
                onclick="btnGetPerson_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divPersonDetails" runat="server">
            <h4>Club Contact Details</h4>
            <asp:Button ID="btnChangeContact" runat="server" Text="Change Contact" onclick="btnGetPerson_Click" />
            <asp:Table ID="tblPersonDetails" runat="server">
                <asp:TableRow ID="TableRow7" runat="server">
                    <asp:TableCell Width="200">
                        <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtTitle" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow3" runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblForename" runat="server" Text="Forename"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtForename" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow4"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSurname" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblMobile" runat="server" Text="Telephone (Mobile)"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtMobile" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow6"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblLandline" runat="server" Text="Telephone (Landline)"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtLandline" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow12"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtEmail" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divAddClub" runat="server">
            <asp:Button ID="btnAddClub" runat="server" Text="Add Club" 
                onclick="btnAddClub_Click" />
        </div>
        <div id="divUpdateClub" runat="server">
            <asp:Button ID="btnUpdateClub" runat="server" Text="Update Club" 
                onclick="btnUpdateClub_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <br />
        <asp:Table ID="tblClubSearch" runat="server">
            <asp:TableRow ID="TableRow13"  runat="server">
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label ID="Label2" runat="server" Text="Find Club where..."></asp:Label>
                    <asp:RadioButtonList ID="ClubFilterBy" runat="server" >
                        <asp:ListItem Text="Club Full Name" Value="Club_Long_Name"></asp:ListItem>
                        <asp:ListItem Text="Club Short Name" Value="Club_Short_Name"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
                <asp:TableCell>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </p>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;"></asp:Label>
                    <asp:RadioButtonList ID="ClubSearchType" runat="server">
                        <asp:ListItem Text="Starts with..." Value="s"></asp:ListItem>
                        <asp:ListItem Text="Contains..." Value="c"></asp:ListItem>
                    </asp:RadioButtonList>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="...the value:"></asp:Label>
                        <asp:TextBox ID="txtClubFilter" runat="server"></asp:TextBox>
                    </p>
                    <asp:Button ID="btnClubSearch" runat="server" Text="Search Clubs" 
                        onclick="btnClubSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div id="divClubList">
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
    </div>
</asp:Content>

