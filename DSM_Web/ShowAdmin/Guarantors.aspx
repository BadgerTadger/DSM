<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Guarantors.aspx.cs" Inherits="ShowAdmin_Guarantors" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divGuarantors" runat="server">
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
        <div id="divGuarantorList" runat="server">
            <h4>Guarantors</h4>
            <asp:Table ID="tblGuarantors" runat="server">
                <asp:TableRow ID="TableRow3"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label2" runat="server" Text="Chairman"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtChairman" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddChairman" runat="server" Text="Add" OnClick="btnAddChairman_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeChairman" runat="server" Text="Change" OnClick="btnChangeChairman_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow4"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label3" runat="server" Text="Secretary"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSecretary" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddSecretary" runat="server" Text="Add" OnClick="btnAddSecretary_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeSecretary" runat="server" Text="Change" OnClick="btnChangeSecretary_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label4" runat="server" Text="Treasurer"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtTreasurer" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddTreasurer" runat="server" Text="Add" OnClick="btnAddTreasurer_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeTreasurer" runat="server" Text="Change" OnClick="btnChangeTreasurer_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC1"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label5" runat="server" Text="First Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee1" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddCommittee1" runat="server" Text="Add" OnClick="btnAddCommittee1_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeCommittee1" runat="server" Text="Change" OnClick="btnChangeCommittee1_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC2"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label6" runat="server" Text="Second Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee2" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddCommittee2" runat="server" Text="Add" OnClick="btnAddCommittee2_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeCommittee2" runat="server" Text="Change" OnClick="btnChangeCommittee2_Click" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRowC3"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label7" runat="server" Text="Third Committee Member"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtCommittee3" runat="server"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnAddCommittee3" runat="server" Text="Add" OnClick="btnAddCommittee3_Click" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btnChangeCommittee3" runat="server" Text="Change" OnClick="btnChangeCommittee3_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div id="divAddGuarantors" runat="server">
                <asp:Button ID="btnAddGuarantors" runat="server" Text="Add Guarantors" 
                    onclick="btnAddGuarantors_Click" />
            </div>
            <div id="divUpdateGuarantors" runat="server">
                <asp:Button ID="btnUpdateGuarantors" runat="server" Text="Update Guarantors" 
                    onclick="btnUpdateGuarantors_Click" />
            </div>
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <div id="divReset" runat="server">
            <asp:Button ID="btnReset" runat="server" Text="Reset all Fields" 
                onclick="btnReset_Click" />
        </div>
        <div id="divMessageChairman" runat="server">
            <asp:Label ID="MessageChairman" runat="server" CssClass="Important"></asp:Label>
        </div>
        <div id="divMessageSecretary" runat="server">
            <asp:Label ID="MessageSecretary" runat="server" CssClass="Important"></asp:Label>
        </div>
        <div id="divMessageTreasurer" runat="server">
            <asp:Label ID="MessageTreasurer" runat="server" CssClass="Important"></asp:Label>
        </div>
        <div id="divMessageCommittee" runat="server">
            <asp:Label ID="MessageCommittee" runat="server" CssClass="Important"></asp:Label>
        </div>
        <p>
            <asp:Label ID="MessageLabel" runat="server" CssClass="Important"></asp:Label>
        </p>
    </div>
</asp:Content>

