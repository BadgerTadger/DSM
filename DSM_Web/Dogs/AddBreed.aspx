<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddBreed.aspx.cs" Inherits="Dogs_AddBreed" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
    </p>
    <h3>Add a new Dog Breed</h3>                    
    <asp:TextBox ID="txtNewBreed" runat="server"></asp:TextBox>
    <asp:Button ID="btnAddBreed" runat="server" Text="Add Breed" 
        onclick="btnAddBreed_Click" />
    <div id="DivReturn" runat="server">
        <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
    </div>
</asp:Content>

