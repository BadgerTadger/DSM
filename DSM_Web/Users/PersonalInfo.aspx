<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PersonalInfo.aspx.cs" Inherits="Users_PersonalInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
    </p>
    <div id="DivContactDetails">
        <div id="divUser" runat="server">
            <div id="divChangeUser" runat="server">
                <asp:Button ID="btnChangeUser" runat="server" Text="Change User Details" 
                    onclick="btnGetUser_Click" UseSubmitBehavior="False" />
            </div>
            <div id="divUserDetails" runat="server">
                <h4>User Details</h4>
                <asp:Table ID="tblOwner" runat="server">
                    <asp:TableRow ID="TableRow4"  runat="server">
                        <asp:TableCell Width="300">
                            <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="txtUsername" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow1"  runat="server">
                        <asp:TableCell Width="300">
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Label ID="txtUser" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
            </asp:Table>
            </div>
            <div id="divUpdateDetails" runat="server">
                <asp:Button ID="btnUpdate" runat="server" Text="Save User Details" 
                    onclick="btnUpdate_Click" />
            </div>
        </div>
    </div>
</asp:Content>

