<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="VenueSetup.aspx.cs" Inherits="ShowAdmin_VenueSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="DivVenue">
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
        <h3>Select or Create a Venue</h3>
        <h4>Venue Details</h4>
        <asp:Table ID="tblVenueDetails" runat="server">
            <asp:TableRow ID="TableRow1"  runat="server">
                <asp:TableCell Width="200">
                    <asp:Label ID="lblVenueName" runat="server" Text="Venue Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtVenueName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="divGetAddress" runat="server">
            <asp:Button ID="btnGetAddress" runat="server" Text="Select or Add Address" 
                onclick="btnGetAddress_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divChangeAddress" runat="server">
            <asp:Button ID="btnChangeAddress" runat="server" Text="Change Address" 
                onclick="btnGetAddress_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divAddressDetails" runat="server">
            <h4>Address Details</h4>
            <asp:Table ID="tblAddressDetails" runat="server">
                <asp:TableRow ID="TableRow6"  runat="server">
                    <asp:TableCell Width="200">
                        <asp:Label ID="lblAddress1" runat="server" Text="Address Line 1"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtAddress1" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblAddress2" runat="server" Text="Address Line 2"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtAddress2" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow8"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblTown" runat="server" Text="Town"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtTown" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow9"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCity" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow10"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblCounty" runat="server" Text="County"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCounty" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow11"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblPostcode" runat="server" Text="Postcode"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtPostcode" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divGetPerson" runat="server">
            <asp:Button ID="btnGetPerson" runat="server" Text="Select or Add a Contact" 
                onclick="btnGetPerson_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divChangePerson" runat="server">
            <asp:Button ID="btnChangePerson" runat="server" Text="Change Contact" 
                onclick="btnGetPerson_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divPersonDetails" runat="server">
            <h4>Venue Contact Details</h4>
            <asp:Table ID="tblPersonDetails" runat="server">
                <asp:TableRow ID="TableRow14" runat="server">
                    <asp:TableCell Width="200">
                        <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtTitle" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblForename" runat="server" Text="Forename"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtForename" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow3"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSurname" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow4"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="lblMobile" runat="server" Text="Telephone (Mobile)"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtMobile" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
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
        <div id="DivAddVenue" runat="server">
            <asp:Button ID="btnAddVenue" runat="server" Text="Add Venue" 
                onclick="btnAddVenue_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <br />
        <asp:Table ID="tblVenueSearch" runat="server">
            <asp:TableRow ID="TableRow13"  runat="server">
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label ID="Label2" runat="server" Text="Find Venue where Venue Name..."></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </p>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;"></asp:Label>
                    <asp:RadioButtonList ID="VenueSearchType" runat="server">
                        <asp:ListItem Text="Starts with..." Value="s"></asp:ListItem>
                        <asp:ListItem Text="Contains..." Value="c"></asp:ListItem>
                    </asp:RadioButtonList>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="...the value:"></asp:Label>
                        <asp:TextBox ID="txtVenueFilter" runat="server"></asp:TextBox>
                    </p>
                    <asp:Button ID="btnVenueSearch" runat="server" Text="Search Venues" 
                        onclick="btnVenueSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div id="divVenueList">
            <asp:GridView ID="VenueGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="VenueGridView_SelectedIndexChanged"
                DataKeyNames="Venue_ID, Address_ID, Venue_Contact" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Venue_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_Name" HeaderText="Venue Name" />
                    <asp:BoundField DataField="Address_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_Contact" Visible="False" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

