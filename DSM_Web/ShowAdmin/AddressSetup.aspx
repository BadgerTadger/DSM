<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddressSetup.aspx.cs" Inherits="ShowAdmin_AddressSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="DivAddress">
        <p>
            <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
        </p>
        <h3>
            Add New or Select Existing Address
        </h3>
        <asp:Table ID="tblAddressDetails" runat="server">
            <asp:TableRow ID="TableRow6"  runat="server">
                <asp:TableCell Width="200">
                    <asp:Label ID="lblAddress1" runat="server" Text="Address Line 1"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow7"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblAddress2" runat="server" Text="Address Line 2"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAddress2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow8"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblTown" runat="server" Text="Town"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtTown" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow9"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow10"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblCounty" runat="server" Text="County"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCounty" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow11"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblPostcode" runat="server" Text="Postcode"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPostcode" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        <div id="DivAddAddress" runat="server">
            <asp:Button ID="btnAddAddress" runat="server" Text="Add Address" 
                onclick="btnAddAddress_Click" />
        </div>
        <div id="divNewAddress" runat="server">
            <asp:Button ID="btnNewAddress" runat="server" Text="New Address" 
                onclick="btnNewAddress_Click" />
        </div>
        <div id="divUpdateAddress" runat="server">
            <asp:Button ID="btnUpdateAddress" runat="server" Text="Update Address" 
                onclick="btnUpdateAddress_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <br />
        <asp:Table ID="tblAddressSearch" runat="server">
            <asp:TableRow ID="TableRow1"  runat="server">
                <asp:TableCell Width="200" VerticalAlign="Top">
                    <asp:Label ID="Label2" runat="server" Text="Find Addresses where..."></asp:Label>
                    <asp:RadioButtonList ID="AddressFilterBy" runat="server" >
                        <asp:ListItem Text="Address Line 1" Value="Address_1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Town" Value="Address_Town"></asp:ListItem>
                        <asp:ListItem Text="City" Value="Address_City"></asp:ListItem>
                        <asp:ListItem Text="County" Value="Address_County"></asp:ListItem>
                        <asp:ListItem Text="Postcode" Value="Address_Postcode"></asp:ListItem>
                    </asp:RadioButtonList>
                </asp:TableCell>
                <asp:TableCell>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </p>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="&nbsp;"></asp:Label>
                    <asp:RadioButtonList ID="AddressSearchType" runat="server">
                        <asp:ListItem Text="Starts with..." Value="s"></asp:ListItem>
                        <asp:ListItem Text="Contains..." Value="c" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="...the value:"></asp:Label>
                        <asp:TextBox ID="txtAddressFilter" runat="server"></asp:TextBox>
                    </p>
                    <asp:Button ID="btnAddressSearch" runat="server" Text="Search Addresses" 
                        onclick="btnAddressSearch_Click" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div id="divAddressList">
            <asp:GridView ID="AddressGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="AddressGridView_SelectedIndexChanged"
                DataKeyNames="Address_ID" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Address_ID" Visible="False" />
                    <asp:BoundField DataField="Address_1" HeaderText="Address Line 1" />
                    <asp:BoundField DataField="Address_2" HeaderText="Address Line 2" />
                    <asp:BoundField DataField="Address_Town" HeaderText="Town" />
                    <asp:BoundField DataField="Address_City" HeaderText="City" />
                    <asp:BoundField DataField="Address_County" HeaderText="County" />
                    <asp:BoundField DataField="Address_Postcode" HeaderText="Postcode" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

