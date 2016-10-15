<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Login ID="myLogin" runat="server" CreateUserText="Not registered yet? Create an account!" 
        CreateUserUrl="~/Membership/CreateUserWizard.aspx" RememberMeSet="True" 
        TitleText="" UserNameLabelText="Username:" 
        UserNameRequiredErrorMessage="Username is required." 
    onloginerror="myLogin_LoginError">
    </asp:Login>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" Runat="Server">
    <asp:LoginView ID="LoginView1" runat="server">
    </asp:LoginView>
    <br /><br />
</asp:Content>

