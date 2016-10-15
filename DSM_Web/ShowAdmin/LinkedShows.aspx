<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LinkedShows.aspx.cs" Inherits="ShowAdmin_LinkedShows" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divLinkedShows" runat="server">
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
            <div id="divChangeClub" runat="server">
                <asp:Button ID="btnChangeClub" runat="server" Text="Change Club" 
                    onclick="btnChangeClub_Click" />
            </div>
        </div>
        <div id="divShowYear" runat="server">
            <asp:Table ID="tblShowYear" runat="server">
                <asp:TableRow ID="TableRow4" runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label3" runat="server" Text="Show Year"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="lstShowYears" runat="server" 
                            DataTextField="Show_Year" DataValueField="Show_Year_ID" 
                            autoPostBack="true" 
                            onselectedindexchanged="lstShowYears_SelectedIndexChanged">
                        </asp:DropDownList>                    
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divParentShowList" runat="server">
            <h4>Select the First Show</h4>
            <asp:GridView ID="ParentShowGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="ParentShowGridView_SelectedIndexChanged"
                DataKeyNames="Show_ID,Club_ID,Venue_ID" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Show_ID" Visible="false" />
                    <asp:BoundField DataField="Club_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_ID" Visible="False" />
                    <asp:BoundField DataField="Show_Name" HeaderText="Show Name" />
                    <asp:BoundField DataField="Show_Opens" HeaderText="Show Date" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divParentShowDetails" runat="server">
            <h4>First Show Details</h4>
            <asp:Table ID="tblParentShowDetails" runat="server">
                <asp:TableRow ID="TableRow1"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label1" runat="server" Text="First Show Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtParentShowName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div id="divChangeParentShow" runat="server">
                <asp:Button ID="btnChangeParentShow" runat="server" Text="Change First Show" 
                    onclick="btnChangeParentShow_Click" />
            </div>
        </div>
        <div id="divChildShowList" runat="server">
            <h4>Select the Second Show</h4>
            <asp:GridView ID="ChildShowGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onselectedindexchanged="ChildShowGridView_SelectedIndexChanged"
                DataKeyNames="Show_ID,Club_ID,Venue_ID" >
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Show_ID" Visible="false" />
                    <asp:BoundField DataField="Club_ID" Visible="false" />
                    <asp:BoundField DataField="Venue_ID" Visible="False" />
                    <asp:BoundField DataField="Show_Name" HeaderText="Show Name" />
                    <asp:BoundField DataField="Show_Opens" HeaderText="Show Date" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divChildShowDetails" runat="server">
            <h4>Second Show Details</h4>
            <asp:Table ID="tblChildShowDetails" runat="server">
                <asp:TableRow ID="TableRow3"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label2" runat="server" Text="Second Show Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtChildShowName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div id="divChangeChildShow" runat="server">
                <asp:Button ID="btnChangeChildShow" runat="server" Text="Change Second Show" 
                    onclick="btnChangeChildShow_Click" />
            </div>
        </div>
        <div id="divSaveLinkedShows" runat="server">
            <asp:Button ID="btnSaveLinkedShows" runat="server" Text="Save Linked Shows" 
                onclick="btnSaveLinkedShows_Click" />
        </div>
        <div id="divClubLinkedShows" runat="server">
            <h4>Linked Shows for this Club</h4>
            <asp:GridView ID="LinkedShowsGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True"
                DataKeyNames="Linked_Show_ID,Parent_Show_ID,Child_Show_ID" 
                onrowdeleting="LinkedShowsGridView_RowDeleting" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Linked_Show_ID" Visible="false" />
                    <asp:BoundField DataField="Parent_Show_ID" Visible="false" />
                    <asp:BoundField DataField="Child_Show_ID" Visible="False" />
                    <asp:BoundField DataField="Parent_Show_Name" HeaderText="First Show Name" />
                    <asp:BoundField DataField="Parent_Show_Opens" HeaderText="First Show Date" />
                    <asp:BoundField DataField="Child_Show_Name" HeaderText="Second Show Name" />
                    <asp:BoundField DataField="Child_Show_Opens" HeaderText="Second Show Date" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

