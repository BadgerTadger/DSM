<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddClasses.aspx.cs" Inherits="ShowAdmin_AddClasses" %>
<%@ Reference Page="~/ShowAdmin/ShowSetup.aspx" %>
<%@ Reference Page="~/ShowAdmin/ClubSetup.aspx" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divAddClasses" runat="server">
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
        <div id="divGetClub" runat="server">
            <asp:Button ID="btnGetClub" runat="server" Text="Select or Add a Club" 
                onclick="btnGetClub_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divClubDetails" runat="server">
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
        <div id="divGetShow" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Select or Add a Show" 
                onclick="btnGetShow_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divShowDetails" runat="server">
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
        <div id="divClassEntry">
            <h4>Class Details</h4>
            <asp:Table ID="tblClassEntry" runat="server">
                <asp:TableRow ID="TableRow7"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label6" runat="server" Text="Class Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="lstClassNames" runat="server"
                            DataTextField="Class_Name_Description" 
                            DataValueField="Class_Name_ID" 
                            OnSelectedIndexChanged="lstClassEntry_SelectedIndexChanged"
                            autoPostBack="true" >
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow ID="TableRow8"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Class Number"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtClassNo" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
               <asp:TableRow ID="TableRow3"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Class Gender"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="lstClassGender" runat="server" 
                            DataTextField="Text" 
                            DataValueField="Value" 
                            OnSelectedIndexChanged="lstClassGender_SelectedIndexChanged"
                            AutoPostBack="true" >
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <asp:Button ID="btnAddClass" runat="server" Text="Add Class" 
                onclick="btnAddClass_Click" />
        </div>
        <div id="divClassList" runat="server">
            <h4>Added Classes</h4>
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
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <div id="divReset" runat="server">
            <asp:Button ID="btnReset" runat="server" Text="Reset all Fields" 
                onclick="btnReset_Click" />
        </div>
    </div>
</asp:Content>

