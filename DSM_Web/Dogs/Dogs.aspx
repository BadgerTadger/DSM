<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Dogs.aspx.cs" Inherits="Dogs_Dogs" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            if ($(txtDogDOBID)) {
                $(txtDogDOBID).dynDateTime({
                    showsTime: false,
                    ifFormat: "%Y-%m-%d",
                    daFormat: "%l;%M %p, %e %m,  %Y",
                    align: "BR",
                    electric: false,
                    singleClick: false,
                    displayArea: ".siblings('.dtcDisplayArea')",
                    button: ".next()"
                });
            }
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="divDogs" runat="server">
        <p>
            <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
        </p>
        <h3>Add a Dog</h3>                    
        <asp:Table ID="tblDogDetails" runat="server">
            <asp:TableRow ID="TableRow7"  runat="server">
                <asp:TableCell Width="200">
                    <asp:Label ID="lblPetName" runat="server" Text="Pet Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPetName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow6"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblKCName" runat="server" Text="KC Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtKCName" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow8"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblBreed" runat="server" Text="Breed"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="lstDogBreeds" runat="server"
                        DataTextField="Description" DataValueField="Dog_Breed_ID" 
                            autoPostBack="true">
                    </asp:DropDownList>
                    <asp:Button ID="btnAddBreed" runat="server" Text="Add" OnClick="btnAddBreed_Click" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow9"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="lstGender" runat="server"
                        DataTextField="Description" DataValueField="Dog_Gender_ID" 
                            autoPostBack="true">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow15"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblRegNo" runat="server" Text="KC Reg. No."></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRegNo" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow16"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblDogDOB" runat="server" Text="Date of Birth"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDogDOB" runat="server"></asp:TextBox>
                    <img alt="Calendar" src="../Images/calender.png" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <script type="text/javascript">
            var txtDogDOBID = "<%= txtDogDOB.ClientID %>";
        </script>
        <div id="divAddDog" runat="server">
            <asp:Button ID="btnAddDog" runat="server" Text="Add Dog" 
                UseSubmitBehavior="False"
                onclick="btnAddDog_Click" />
        </div>
        <div id="divNewDog" runat="server">
            <asp:Button ID="btnNewDog" runat="server" Text="New Dog" 
                onclick="btnNewDog_Click" />
        </div>
        <div id="divUpdateDog" runat="server">
            <asp:Button ID="btnUpdateDog" runat="server" Text="Update Dog" 
                onclick="btnUpdateDog_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
        <div id="divViewEntry" runat="server">
            <asp:Button ID="btnViewEntry" runat="server" Text="View existing Entry for this Dog" OnClick="btnViewEntry_Click" />
        </div>
        <br />
        <div id="divDogSearch" runat="server">
            <asp:Table ID="tblDogSearch" runat="server">
                <asp:TableRow ID="TableRow1"  runat="server">
                    <asp:TableCell Width="200" VerticalAlign="Top">
                        <asp:Label ID="Label2" runat="server" Text="Find Dogs where..."></asp:Label>
                        <asp:RadioButtonList ID="DogFilterBy" runat="server" >
                            <asp:ListItem Text="Pet Name" Value="Pet_Name"></asp:ListItem>
                            <asp:ListItem Text="KC Name" Value="KC_Name" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Breed" Value="Breed_ID"></asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                    <asp:TableCell>
                        <p>
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </p>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="Label4" runat="server" Text="&nbsp;"></asp:Label>
                        <asp:RadioButtonList ID="DogSearchType" runat="server">
                            <asp:ListItem Text="Starts with..." Value="s"></asp:ListItem>
                            <asp:ListItem Text="Contains..." Value="c" Selected="True"></asp:ListItem>
                        </asp:RadioButtonList>
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="...the value:"></asp:Label>
                            <asp:TextBox ID="txtDogFilter" runat="server"></asp:TextBox>
                        </p>
                        <asp:Button ID="btnDogSearch" runat="server" Text="Search Dogs" 
                            onclick="btnDogSearch_Click" />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <br />
            <div id="divDogList">
                <asp:GridView ID="DogGridView" runat="server" AutoGenerateColumns="False" 
                    EnableModelValidation="True" 
                    onselectedindexchanged="DogGridView_SelectedIndexChanged"
                    DataKeyNames="Dog_ID" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Dog_ID" Visible="False" />
                        <asp:BoundField DataField="Dog_Pet_Name" HeaderText="Pet Name" />
                        <asp:BoundField DataField="Dog_KC_Name" HeaderText="KC Name" />
                        <asp:BoundField DataField="Dog_Breed_Description" HeaderText="Breed" />
                        <asp:BoundField DataField="Dog_Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="Reg_No" HeaderText="KC Reg. No." />
                    </Columns>
                </asp:GridView>
                <asp:Button ID="Btn_Previous" CommandName="Previous" 
                    runat="server" OnCommand="ChangePage" 
                    Text="Previous" />
                <asp:Button ID="Btn_Next" runat="server" CommandName="Next" 
                    OnCommand="ChangePage" Text="Next" />
                <p>Page&nbsp;<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>&nbsp;of&nbsp;<asp:Label ID="lblTotalPages" runat="server"></asp:Label></p>
            </div>
        </div>
    </div>
</asp:Content>

