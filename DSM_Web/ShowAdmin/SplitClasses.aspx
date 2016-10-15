<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SplitClasses.aspx.cs" Inherits="ShowAdmin_SplitClasses" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divRingNo">
        <p>
            <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
        </p>
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
                DataKeyNames="Show_ID,Club_ID,Venue_ID" >
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
        <div id="divGetEntryClasses" runat="server">
            <asp:Button ID="btnGetEntryClasses" runat="server" Text="Get Entry Classes" 
                onclick="btnGetEntryClasses_Click" />
        </div>
        <div id="divEntryClassList" runat="server">
            <asp:GridView ID="EntryClassGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" >
                <Columns>
                    <asp:BoundField DataField="Class_Name_Description" HeaderText="Class Name" />
                    <asp:BoundField DataField="Class_No" HeaderText="Class No." />
                    <asp:BoundField DataField="Entries" HeaderText="Entries" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divGetFinalClasses" runat="server">
            <asp:Button ID="btnGetFinalClasses" runat="server" Text="Get Split Class Names" 
                onclick="btnGetFinalClasses_Click" />
        </div>
        <div id="divFinalClassList" runat="server">
            <asp:GridView ID="FinalClassGridView" runat="server" AutoGenerateColumns="False" 
                OnRowCancelingEdit="FinalClassGridView_RowCancelingEdit" 
                OnRowEditing="FinalClassGridView_RowEditing" 
                OnRowUpdating="FinalClassGridView_RowUpdating"
                EnableModelValidation="True" >
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Show_Entry_Class_ID" Visible="false" />
                    <asp:BoundField DataField="Class_Name_Description" HeaderText="Class Name" ReadOnly="true" />
                    <asp:BoundField DataField="Class_No" HeaderText="Class No." ReadOnly="true" />
                    <asp:TemplateField HeaderText="Final Class Name">
                        <ItemTemplate>
                            <asp:Label ID="lblShowFinalClassDescription" runat="server" 
                                Text='<%# Eval("Show_Final_Class_Description") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtShowFinalClassDescription" runat="server" 
                                Text='<%# Bind("Show_Final_Class_Description") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Entries" HeaderText="Entries" ReadOnly="true" />
                    <asp:BoundField DataField="OrderBy" Visible="false" />
                </Columns>
            </asp:GridView>
            <div id="divCommit" runat="server">
                <asp:Button ID="btnCommit" runat="server" Text="Commit Final Class Names to Database" 
                    onclick="btnCommit_Click" />
            </div>
            <div id="divClear" runat="server">
                <asp:Button ID="btnClearFinalClassNames" runat="server" Text="Remove Final Class Names from Database" 
                    onclick="btnClearFinalClassNames_Click" />
            </div>
            <div id="divAllocateDogs" runat="server">
                <asp:Button ID="btnAllocateDogs" runat="server" Text="Allocate Dogs To Final Classes" 
                    onclick="btnAllocateDogs_Click" />
            </div>
            <div id="divUnAllocateDogs" runat="server">
                <asp:Button ID="btnUnAllocateDogs" runat="server" Text="Delete Dogs To Final Classes Allocations" 
                    onclick="btnUnAllocateDogs_Click" />
            </div>
        </div>
    </div>
</asp:Content>

