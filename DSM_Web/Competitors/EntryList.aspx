<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EntryList.aspx.cs" Inherits="Competitors_EntryList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divEntries">
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
                DataKeyNames="Show_ID,Club_ID,Venue_ID" 
                onrowdatabound="ShowGridView_RowDataBound" >
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
        <div id="divEntryList" runat="server">
            <asp:CheckBox ID="chkExcludeNFC" runat="server" Text="Exclude NFC" 
                AutoPostBack="True" oncheckedchanged="chkExcludeNFC_CheckedChanged" />
            <h4>Entries for this Show</h4>
            <asp:GridView ID="EntryGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="EntryGridView_SelectedIndexChanged"
                DataKeyNames="Entrant_ID" 
                onrowdatabound="EntryGridView_RowDataBound" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Entrant_ID" Visible="false" />
                    <asp:TemplateField HeaderText="Owner(s)">
                        <ItemTemplate>
                            <asp:GridView ID="OwnerGridView" runat="server" AutoGenerateColumns="False" 
                                EnableModelValidation="True" 
                                DataKeyNames="Person_ID" >
                                <Columns>
                                    <asp:BoundField DataField="Person_ID" Visible="False" />
                                    <asp:BoundField DataField="Person_FullName" HeaderText="Owner" />
                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dog(s)">
                        <ItemTemplate>
                            <asp:GridView ID="DogGridView" runat="server" AutoGenerateColumns="False" 
                                EnableModelValidation="True" 
                                DataKeyNames="Dog_ID" 
                                onrowdatabound="DogGridView_RowDataBound" >
                                <Columns>
                                    <asp:BoundField DataField="Dog_ID" Visible="False" />
                                    <asp:BoundField DataField="Dog_Pet_Name" HeaderText="Pet Name" />
                                    <asp:BoundField DataField="Dog_KC_Name" HeaderText="KC Name" />
                                    <asp:TemplateField HeaderText="Class(es)">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdnID" runat="server" Value='<%# Eval("Dog_ID") %>' />
                                            <asp:GridView ID="ClassGridView" runat="server" AutoGenerateColumns="False" 
                                                EnableModelValidation="True" 
                                                DataKeyNames="Dog_Class_ID" >
                                                <Columns>
                                                    <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                                                    <asp:BoundField DataField="Class_Name_Description" HeaderText="Class Name" />
                                                    <asp:BoundField DataField="Handler_Name" HeaderText="Handler" />
                                                </Columns>
                                            </asp:GridView>        
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

