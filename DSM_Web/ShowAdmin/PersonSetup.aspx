<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PersonSetup.aspx.cs" Inherits="ShowAdmin_PersonSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="DivPerson">
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
        <h3>Add a Person</h3>
        <div id="divNewPerson" runat="server">
            <asp:Button ID="btnNewPerson" runat="server" Text="New Person" 
                onclick="btnNewPerson_Click" />
        </div>
        <asp:Table ID="tblPersonDetails" runat="server">
            <asp:TableRow ID="TableRow13" runat="server">
                <asp:TableCell Width="200">
                    <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblForename" runat="server" Text="Forename"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtForename" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblSurname" runat="server" Text="Surname"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblMobile" runat="server" Text="Telephone (Mobile)"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblLandline" runat="server" Text="Telephone (Landline)"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLandline" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow5"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="divOnlineEntry" runat="server">
            <asp:Table ID="tblOnlineEntry" runat="server">
                <asp:TableRow ID="TableRow14"  runat="server">
                    <asp:TableCell Width="200">
                        <asp:Label ID="lblOE_Owner_ID" runat="server" Text="Online Entry Owner ID"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtOE_Owner_ID" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divGetAddress" runat="server">
            <asp:Button ID="btnGetAddress" runat="server" Text="Select or Add Address" 
                onclick="btnGetAddress_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divChangeAddress" runat="server">
            <asp:Button ID="btnChangeAddress" runat="server" Text="Change Address" 
                onclick="btnGetAddress_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divAddressDetails" runat="server">
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
        <div id="DivAddPerson" runat="server">
            <asp:Button ID="btnAddPerson" runat="server" Text="Add Person" 
                onclick="btnAddPerson_Click" />
        </div>
        <div id="divUpdatePerson" runat="server">
            <asp:Button ID="btnUpdatePerson" runat="server" Text="Update Person" 
                onclick="btnUpdatePerson_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <br />
        <asp:Table ID="tblPersonSearch" runat="server">
            <asp:TableRow ID="TableRow12"  runat="server">
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label ID="Label2" runat="server" Text="Find People where..."></asp:Label>
                    <asp:RadioButtonList ID="PersonFilterBy" runat="server" >
                        <asp:ListItem Text="Forename" Value="Person_Forename"></asp:ListItem>
                        <asp:ListItem Text="Surname" Value="Person_Surname" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
                <asp:TableCell>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </p>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;"></asp:Label>
                    <asp:RadioButtonList ID="PersonSearchType" runat="server">
                        <asp:ListItem Text="Starts with..." Value="s"></asp:ListItem>
                        <asp:ListItem Text="Contains..." Value="c" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="...the value:"></asp:Label>
                        <asp:TextBox ID="txtPersonFilter" runat="server"></asp:TextBox>
                    </p>
                    <asp:Button ID="btnPersonSearch" runat="server" Text="Search People" 
                        onclick="btnPersonSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div id="divPersonList">
            <asp:GridView ID="PersonGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="PersonGridView_SelectedIndexChanged"
                DataKeyNames="Person_ID, Address_ID" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Person_ID" Visible="False" />
                    <asp:BoundField DataField="Person_Title" HeaderText="Title" />
                    <asp:BoundField DataField="Person_Forename" HeaderText="Forename" />
                    <asp:BoundField DataField="Person_Surname" HeaderText="Surname" />
                    <asp:BoundField DataField="Address_ID" Visible="false" />
                    <asp:BoundField DataField="Person_Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Person_Landline" HeaderText="Landline" />
                    <asp:BoundField DataField="Person_Email" HeaderText="Email" />
                    <asp:BoundField DataField="Person_OE_Owner_ID" HeaderText="OE Owner ID" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="Btn_Previous" CommandName="Previous" 
                runat="server" OnCommand="ChangePage" 
                Text="Previous" />
            <asp:Button ID="Btn_Next" runat="server" CommandName="Next" 
                OnCommand="ChangePage" Text="Next" />
            <p>Page&nbsp;<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>&nbsp;of&nbsp;<asp:Label ID="lblTotalPages" runat="server"></asp:Label></p>
        </div>
    </div>
</asp:Content>

