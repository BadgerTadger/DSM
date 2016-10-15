<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ChangeHandler.aspx.cs" Inherits="Competitors_ChangeHandler" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divChangeHandler">
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
        <div id="divOwners" runat="server">
            <h5>Select an Owner</h5>
            <asp:DropDownList ID="lstOwners" runat="server"
                DataTextField="Owner" 
                DataValueField="Owner_ID" >
            </asp:DropDownList>
            <asp:Button ID="btnGetList" runat="server" 
                Text="Get Dogs, Classes and Handlers" onclick="btnGetList_Click" />
        </div>
        <div id="divOwnersDogsClasses" runat="server">
            <asp:GridView ID="OwnersDogsClassesGridView" runat="server"
                AutoGenerateColumns="False" EnableModelValidation="True"
                OnRowCancelingEdit="OwnersDogsClassesGridView_RowCancelingEdit" 
                OnRowEditing="OwnersDogsClassesGridView_RowEditing" 
                OnRowUpdating="OwnersDogsClassesGridView_RowUpdating"
                OnRowDataBound="OwnersDogsClassesGridView_RowDataBound"
                DataKeyNames="Dog_Class_ID, Owner_ID, Handler_ID" >
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                    <asp:BoundField DataField="Owner_ID" Visible="false" />
                    <asp:BoundField DataField="Handler_ID" Visible="false" />
                    <asp:BoundField DataField="Owner" ReadOnly="true" HeaderText="Owner" />
                    <asp:BoundField DataField="Dog_KC_Name" ReadOnly="true" HeaderText="Dog's Name" />
                    <asp:BoundField DataField="Class" ReadOnly="true" HeaderText="Class Name" />
                    <asp:TemplateField HeaderText="Handler">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlNewHandler" runat="server"
                                DataTextField="Owner" 
                                DataValueField="Owner_ID" >
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblNewHandler" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

