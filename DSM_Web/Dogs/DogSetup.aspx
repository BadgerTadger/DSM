<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DogSetup.aspx.cs" Inherits="Dogs_DogSetup" %>

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
    <p>
        <asp:Label ID="MessageLabel" CssClass="Important" runat="server" Text=""></asp:Label>
    </p>
    <div id="divGetDog" runat="server">
        <asp:Button ID="btnGetDog" runat="server" Text="Select or Add a Dog" 
            onclick="btnGetDog_Click" UseSubmitBehavior="False" />
    </div>
    <div id="divChangeDog" runat="server">
        <asp:Button ID="btnChangeDog" runat="server" Text="Change Dog" 
            onclick="btnGetDog_Click" UseSubmitBehavior="False" />
    </div>
    <div id="divDogDetails" runat="server">
        <h3>Dog Details</h3>
        <asp:Table ID="tblDogDetails" runat="server">
            <asp:TableRow ID="TableRow7"  runat="server">
                <asp:TableCell Width="300">
                    <asp:Label ID="lblPetName" runat="server" Text="Pet Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtPetName" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow6"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblKCName" runat="server" Text="KC Name"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtKCName" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow8"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblBreed" runat="server" Text="Breed"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtDogBreed" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow9"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblDogGender" runat="server" Text="Gender"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtDogGender" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow15"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblRegNo" runat="server" Text="KC Reg. No."></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtRegNo" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow16"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblDogDOB" runat="server" Text="Date of Birth"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="txtDogDOB" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow17"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblMeritPoints" runat="server" Text="Merit Points"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtMeritPoints" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow18"  runat="server">
                <asp:TableCell>
                    <asp:Label ID="lblNLWU" runat="server" Text=""></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:CheckBox ID="chkNLWU" runat="server" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div id="divGetOwner" runat="server">
            <asp:Button ID="btnGetOwner" runat="server" Text="Select or Add Owner" 
                onclick="btnGetOwner_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divOwnerList" runat="server">
            <asp:GridView ID="OwnerGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                 onrowdeleting="OwnerGridView_RowDeleting" 
                DataKeyNames="Person_ID" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Person_ID" Visible="False" />
                    <asp:BoundField DataField="Person_Title" HeaderText="Title" />
                    <asp:BoundField DataField="Person_Forename" HeaderText="Forename" />
                    <asp:BoundField DataField="Person_Surname" HeaderText="Surname" />
                    <asp:BoundField DataField="Person_Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Person_Landline" HeaderText="Landline" />
                    <asp:BoundField DataField="Person_Email" HeaderText="Email" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divGetBreeder" runat="server">
            <asp:Button ID="btnGetBreeder" runat="server" Text="Select or Add Breeder" 
                onclick="btnGetBreeder_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divBreederList" runat="server">
            <asp:GridView ID="BreederGridView" runat="server" AutoGenerateColumns="False" 
                EnableModelValidation="True" 
                 onrowdeleting="BreederGridView_RowDeleting" 
                DataKeyNames="Person_ID" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Person_ID" Visible="False" />
                    <asp:BoundField DataField="Person_Title" HeaderText="Title" />
                    <asp:BoundField DataField="Person_Forename" HeaderText="Forename" />
                    <asp:BoundField DataField="Person_Surname" HeaderText="Surname" />
                    <asp:BoundField DataField="Person_Mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="Person_Landline" HeaderText="Landline" />
                    <asp:BoundField DataField="Person_Email" HeaderText="Email" />
                </Columns>
            </asp:GridView>
        </div>
        <div id="divGetSire" runat="server">
            <asp:Button ID="btnGetSire" runat="server" Text="Select or Add a Sire" 
                onclick="btnGetSire_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divChangeSire" runat="server">
            <asp:Button ID="btnChangeSire" runat="server" Text="Change Sire" 
                onclick="btnGetSire_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divSireDetails" runat="server">
            <h3>Sire Details</h3>
            <asp:Table ID="tblSireDetails" runat="server">
                <asp:TableRow ID="TableRow12"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label13" runat="server" Text="Sire Pet Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSirePetName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow11"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label11" runat="server" Text="Sire KC Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSireKCName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow13"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label15" runat="server" Text="Sire Breed"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSireBreed" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow14"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label17" runat="server" Text="Sire Gender"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtSireGender" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divGetDam" runat="server">
            <asp:Button ID="btnGetDam" runat="server" Text="Select or Add a Dam" 
                onclick="btnGetDam_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divChangeDam" runat="server">
            <asp:Button ID="btnChangeDam" runat="server" Text="Change Dam" 
                onclick="btnGetDam_Click" UseSubmitBehavior="False" />
        </div>
        <div id="divDamDetails" runat="server">
            <h3>Dam Details</h3>
            <asp:Table ID="tblDamDetails" runat="server">
                <asp:TableRow ID="TableRow4"  runat="server">
                    <asp:TableCell Width="300">
                        <asp:Label ID="Label3" runat="server" Text="Dam Pet Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtDamPetName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow1"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Dam KC Name"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtDamKCName" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow5"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label7" runat="server" Text="Dam Breed"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtDamBreed" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow10"  runat="server">
                    <asp:TableCell>
                        <asp:Label ID="Label9" runat="server" Text="Dam Gender"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Label ID="txtDamGender" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div id="divSaveDog" runat="server">
            <asp:Button ID="btnSaveDog" runat="server" Text="Save Dog Details" 
                onclick="btnSaveDog_Click" />
        </div>
        <div id="DivReturn" runat="server">
            <asp:Button ID="btnReturn" runat="server" Text="Return to Previous Page" />
        </div>
    </div>
</asp:Content>

