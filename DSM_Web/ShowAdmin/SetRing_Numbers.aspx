<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SetRing_Numbers.aspx.cs" Inherits="ShowAdmin_SetRing_Numbers" %>

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
        <div id="divSetRingNos" runat="server">
            <asp:Button ID="btnSetRing_Numbers" runat="server" Text="Get Ring Numbers" 
                onclick="btnSetRing_Numbers_Click" />
        </div>
        <div id="divRingNumberList" runat="server">
            <asp:GridView ID="RingNumberGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" >
                <Columns>
                    <asp:BoundField DataField="Ring_No" HeaderText="Ring No." />
                    <asp:BoundField DataField="Dog_ID" Visible="false" />
                    <asp:BoundField DataField="Dog_KC_Name" HeaderText="Dog KC Name" />
                    <asp:BoundField DataField="Person_Forename" HeaderText="Handler First Name" />
                    <asp:BoundField DataField="Person_Surname" HeaderText="Handler Surname" />
                </Columns>
            </asp:GridView>
            <div id="divUpdateDB" runat="server">
                <h4>Click here to confirm and allocate the above ring numbers in to the database.</h4>
                <asp:Button ID="btnAllocateRingNumbers" runat="server" 
                    Text="Allocate Ring Numbers" onclick="btnAllocateRingNumbers_Click" />
                <h4>Click here to reset the ring numbers in the database for this show.</h4>
                <asp:Button ID="btnResetRingNumbers" runat="server" 
                    Text="Reset Ring Numbers" onclick="btnResetRingNumbers_Click" />
            </div>        
        </div>
    </div>
</asp:Content>

