<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SpecialRequests.aspx.cs" Inherits="Competitors_SpecialRequests" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divSpecialRequests">
        <h3>Special Requests</h3>
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
                DataTextField="Class_Name_Description" 
                DataValueField="Show_Entry_Class_ID" 
                onselectedindexchanged="lstClasses_SelectedIndexChanged" >
            </asp:DropDownList>
            <asp:Button ID="btnGetRequestList" runat="server" Text="Get Special Requests List" 
                onclick="btnGetRequestList_Click" />
        </div>
        <div id="divRequestList" runat="server">
            <asp:Button ID="btnPrint" runat="server" Text="Print" OnClick="btnPrint_Click" /><br />
            <asp:Panel ID="PrintPanel" runat="server">
                <h5>ALPHABETICAL LIST OF COMPETITORS WITH SPECIAL REQUESTS FOLLOWS:</h5>
                <asp:GridView ID="SpecialRequestGridView" runat="server" 
                    AutoGenerateColumns="False" EnableModelValidation="True"
                    OnRowCancelingEdit="SpecialRequestGridView_RowCancelingEdit" 
                    OnRowEditing="SpecialRequestGridView_RowEditing" 
                    OnRowUpdating="SpecialRequestGridView_RowUpdating"
                    OnRowDataBound="SpecialRequestGridView_RowDataBound"
                    DataKeyNames="Dog_Class_ID, Show_Entry_Class_ID, Show_Final_Class_ID" 
                    CssClass="SpecialRequestGrid" >
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Show_Entry_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Show_Final_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Ring_No" ReadOnly="true" HeaderText="Ring Number" />
                        <asp:BoundField DataField="Owner" ReadOnly="true" HeaderText="Name" />
                        <asp:BoundField DataField="Dog_KC_Name" ReadOnly="true" HeaderText="Dog's Name" />
                        <asp:BoundField DataField="Special_Request" ReadOnly="true" HeaderText="Special Request" />
                        <asp:BoundField DataField="Class_Name" ReadOnly="true" HeaderText="Part of Class Drawn" />
                        <asp:TemplateField HeaderText="New Part of Class">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlNewPart" runat="server">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblNewPart" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <h5>ALPHABETICAL LIST OF COMPETITORS WITH NO SPECIAL REQUESTS FOLLOWS:</h5>
                <asp:GridView ID="NoSpecialRequestGridView" runat="server" 
                    AutoGenerateColumns="False" EnableModelValidation="True"
                    OnRowCancelingEdit="NoSpecialRequestGridView_RowCancelingEdit" 
                    OnRowEditing="NoSpecialRequestGridView_RowEditing" 
                    OnRowUpdating="NoSpecialRequestGridView_RowUpdating"
                    OnRowDataBound="NoSpecialRequestGridView_RowDataBound"
                    DataKeyNames="Dog_Class_ID, Show_Entry_Class_ID, Show_Final_Class_ID" 
                    CssClass="SpecialRequestGrid" >
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Show_Entry_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Show_Final_Class_ID" Visible="false" />
                        <asp:BoundField DataField="Ring_No" ReadOnly="true" HeaderText="Ring Number" />
                        <asp:BoundField DataField="Owner" ReadOnly="true" HeaderText="Name" />
                        <asp:BoundField DataField="Dog_KC_Name" ReadOnly="true" HeaderText="Dog's Name" />
                        <asp:BoundField DataField="Special_Request" ReadOnly="true" HeaderText="Special Request" />
                        <asp:BoundField DataField="Class_Name" ReadOnly="true" HeaderText="Part of Class Drawn" />
                        <asp:TemplateField HeaderText="New Part of Class">
                            <EditItemTemplate>
                                <asp:DropDownList ID="ddlNewPart" runat="server">
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblNewPart" runat="server" Text="Label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </div>
</asp:Content>

