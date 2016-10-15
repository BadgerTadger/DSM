<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AddDogToClasses.aspx.cs" Inherits="Competitors_AddDogToClasses" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divDogClasses" runat="server">
        <p>
            <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
        </p>
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
        <div id="divDogsAndClasses" runat="server">
            <h4>Add Dogs to Classes</h4>
                        
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow ID="TableRow2"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label2" runat="server" Text="Select a Dog"></asp:Label>
                        <br />
                        <asp:DropDownList ID="lstDogs" runat="server"
                            DataTextField="Dog_KC_Name" DataValueField="Dog_ID" 
                            autoPostBack="true" 
                            onselectedindexchanged="lstDogs_SelectedIndexChanged">
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label3" runat="server" Text="Select a Class"></asp:Label>
                        <br />
                        <asp:DropDownList ID="lstClasses" runat="server"
                            DataTextField="Class_Name_Description" DataValueField="Show_Entry_Class_ID" 
                            autoPostBack="true">
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div id="divHandler" runat="server">
                <h4>Select Handler from list of Owners, or add a new person.</h4>
                <div id="divOwnerList" runat="server">
                    <h3>Owners for this dog</h3>
                    <asp:GridView ID="OwnerGridView" runat="server" AutoGenerateColumns="False" 
                        EnableModelValidation="True" 
                        DataKeyNames="Person_ID" 
                        onselectedindexchanged="OwnerGridView_SelectedIndexChanged" >
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Person_ID" Visible="False" />
                            <asp:BoundField DataField="Person_Title" HeaderText="Title" />
                            <asp:BoundField DataField="Person_Forename" HeaderText="Forename" />
                            <asp:BoundField DataField="Person_Surname" HeaderText="Surname" />
                            <asp:BoundField DataField="Person_Mobile" HeaderText="Mobile" />
                            <asp:BoundField DataField="Person_Landline" HeaderText="Landline" />
                            <asp:BoundField DataField="Person_Email" HeaderText="Email" />
                            <asp:BoundField DataField="Person_OE_Owner_ID" HeaderText="OE Owner ID" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div id="divGetHandler" runat="server">
                    <asp:Button ID="btnGetHandler" runat="server" Text="Select or Add Handler" 
                        onclick="btnGetHandler_Click" UseSubmitBehavior="False" />
                </div>
                <div id="divChangeHandler" runat="server">
                    <asp:Button ID="btnChangeHandler" runat="server" Text="Change Handler" 
                        onclick="btnGetHandler_Click" UseSubmitBehavior="False" />
                </div>
                <div id="divHandlerDetails" runat="server">
                    <asp:Table ID="Table4" runat="server">
                        <asp:TableRow ID="TableRow6"  runat="server">
                            <asp:TableCell Width="300">
                                <asp:Label ID="Label6" runat="server" Text="Handler Name"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="txtHandlerName" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div>
            <asp:Table ID="Table3" runat="server">
                <asp:TableRow ID="TableRow3"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label4" runat="server" Text="Special Request"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Literal ID="Literal1" runat="server">&nbsp;</asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7"  runat="server">
                    <asp:TableCell ColumnSpan="2">
                        <asp:TextBox ID="txtSpecialRequest" runat="server" 
                        TextMode="MultiLine" Rows="6" Width="600"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="btnAddDogClass" runat="server" Text="Add Dog to Class" 
                OnClick="btnAddDogClass_Click" />
        </div>
        <div id="divEntryList" runat="server">
            <h4>Dogs Entered in Classes</h4>
            <asp:GridView ID="DogClassGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                onrowdeleting="DogClassGridView_RowDeleting"
                DataKeyNames="Dog_Class_ID" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Dog_Class_ID" Visible="false" />
                    <asp:BoundField DataField="Dog_KC_Name" HeaderText="Dog KC Name" />
                    <asp:BoundField DataField="Class_Name_Description" HeaderText="Class Name" />
                    <asp:BoundField DataField="Handler_Name" HeaderText="Handler" />
                </Columns>
            </asp:GridView>        
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
    </div>
</asp:Content>

