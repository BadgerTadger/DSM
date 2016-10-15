<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="RunningOrders.aspx.cs" Inherits="Competitors_RunningOrders" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divSpecialRequests">
        <h3>Running Orders</h3>
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
        <div id="divGetRequestList" runat="server">
            <p>Select a Class</p>
            <asp:DropDownList ID="lstClasses" runat="server"
                DataTextField="Show_Final_Class_Description" 
                DataValueField="Show_Final_Class_ID" 
                onselectedindexchanged="lstClasses_SelectedIndexChanged" >
            </asp:DropDownList>
            <asp:Button ID="btnGetRequestList" runat="server" Text="Get Running Order List" 
                onclick="btnGetRequestList_Click" />
        </div>
        <div id="divRequestList" runat="server">
            <div id="divAllocate" runat="server">
                <asp:Button ID="btnAllocate" runat="server" Text="Allocate Running Orders" 
                    onclick="btnAllocate_Click" />
            </div>
            <div id="divClearRunningOrders" runat="server">
                <asp:Button ID="btnClearRunningOrders" runat="server" Text="Clear Running Orders" 
                    onclick="btnClearRunningOrders_Click" />
            </div>
            <h5>LIST OF COMPETITORS BY ENTRY DATE (LATEST FIRST):</h5>
            <asp:GridView ID="RunningOrdersGridView" runat="server" 
                AutoGenerateColumns="False" EnableModelValidation="True"
                OnRowCancelingEdit="RunningOrdersGridView_RowCancelingEdit" 
                OnRowEditing="RunningOrdersGridView_RowEditing" 
                OnRowUpdating="RunningOrdersGridView_RowUpdating"
                OnRowDataBound="RunningOrdersGridView_RowDataBound"
                DataKeyNames="Dog_ID, Dog_Class_ID, Show_Final_Class_ID" 
                CssClass="RunningOrdersGrid" >
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Dog_ID" Visible="false" />
                    <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                    <asp:BoundField DataField="Show_Final_Class_ID" Visible="false" />
                    <asp:BoundField DataField="Ring_No" ReadOnly="true" HeaderText="Ring Number" />
                    <asp:BoundField DataField="Owner" ReadOnly="true" HeaderText="Name" />
                    <asp:BoundField DataField="OwnerDrawn" ReadOnly="true" HeaderText="Owner Drawn" />
                    <asp:BoundField DataField="OwnerDrawnOnDay" ReadOnly="true" HeaderText="Owner Drawn Today" />
                    <asp:BoundField DataField="Dog_KC_Name" ReadOnly="true" HeaderText="Dog's Name" />
                    <asp:BoundField DataField="DogDrawn" ReadOnly="true" HeaderText="Dog Drawn" />
                    <asp:BoundField DataField="OldestDog" ReadOnly="true" HeaderText="Oldest Dog" />
                    <asp:BoundField DataField="Helper" ReadOnly="true" HeaderText="Helper" />
                    <asp:BoundField DataField="Show_Final_Class_Description" ReadOnly="true" HeaderText="Part of Class Drawn" />
                    <asp:BoundField DataField="DogDrawnInClass" ReadOnly="true" HeaderText="Dog Drawn in this Class" />
                    <asp:BoundField DataField="HighestClass" ReadOnly="true" HeaderText="Highest Class Owner's Dogs" />
                    <asp:BoundField DataField="OwnerDogCount" ReadOnly="true" HeaderText="Owner Dogs" />
                    <asp:BoundField DataField="OwnerDogsInClassCount" ReadOnly="true" HeaderText="Owner Dogs in Class" />
                    <asp:BoundField DataField="ClassesPerOwnerEnteredCount" ReadOnly="true" HeaderText="Owner Classes Entered" />
                    <asp:BoundField DataField="ClassesPerDogEnteredCount" ReadOnly="true" HeaderText="Dog Classes Entered" />
                    <asp:TemplateField HeaderText="Running Order">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtRunningOrder" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lblRunningOrder" runat="server" Text="Label"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

