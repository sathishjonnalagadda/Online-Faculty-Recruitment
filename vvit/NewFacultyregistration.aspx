<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="NewFacultyregistration.aspx.cs" Inherits="NewFacutlyregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
            text-align: left;
            width: 469px;
        }
        .auto-style3 {
            text-align: left;
            width: 469px;
        }
        .auto-style4 {
            height: 24px;
            width: 924px;
        }
        .auto-style5 {
            height: 24px;
            text-align: left;
            width: 469px;
        }
        .auto-style6 {
            font-size: large;
        width: 631px;
    }
    .auto-style7 {
            width: 631px;
        }
    .auto-style8 {
        height: 30px;
        width: 631px;
    }
    .auto-style9 {
            text-align: left;
            width: 631px;
        }
    .auto-style10 {
        height: 24px;
        text-align: left;
        width: 631px;
    }
    .auto-style11 {
        height: 24px;
        width: 631px;
    }
        .auto-style12 {
            height: 32px;
            width: 469px;
        }
        .auto-style13 {
            width: 631px;
            height: 32px;
        }
        .auto-style14 {
            width: 539px;
        }
        .auto-style15 {
            height: 30px;
            width: 539px;
        }
        .auto-style16 {
            text-align: left;
            width: 539px;
        }
        .auto-style17 {
            height: 24px;
            width: 539px;
        }
        .auto-style18 {
            width: 539px;
            height: 32px;
        }
        .auto-style19 {
            width: 924px;
        }
        .auto-style20 {
            height: 30px;
            width: 924px;
        }
        .auto-style21 {
            text-align: left;
            width: 924px;
        }
        .auto-style22 {
            height: 32px;
            width: 924px;
        }
        .auto-style23 {
            width: 469px;
        }
        .auto-style24 {
            width: 469px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div style="background-color: #ffdb99" align="center" >
        <table class="auto-style1">
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style6">Registration Form</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">POU Name</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="POUName_lst" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>HYDERABAD</asp:ListItem>
                        <asp:ListItem>GUNTUR</asp:ListItem>
                        <asp:ListItem>NALGONDA</asp:ListItem>
                        <asp:ListItem>VIZAG</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="POUName_lst" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8"></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style3">Salutattion</td>
                <td class="auto-style9">Full Name</td>
                <td class="auto-style21"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListSalutation" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListSalutation" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxfn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxfn" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Marital Status</td>
                <td class="auto-style7">Photo(latest self photo size 50kb)</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListMarital" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>MARRIED</asp:ListItem>
                        <asp:ListItem>UNMARRIED</asp:ListItem>
                        <asp:ListItem>SINGLE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListMarital" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:FileUpload ID="FileUploadPHOTO" runat="server" Width="208px" />
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUploadPHOTO" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Wife/Husand Name</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">Father Name</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxWH" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoXFaName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoXFaName" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">DOB(dd/mm/yyyy)</td>
                <td class="auto-style7">Gender</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxdob" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxdob" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownListGen" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListGen" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Address</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxAddress"   runat="server" Height="56px"  Width="232px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">State</td>
                <td class="auto-style10">City</td>
                <td class="auto-style4"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:DropDownList ID="DropDownListstate" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>ANDHRA PRADESH</asp:ListItem>
                        <asp:ListItem>TELANGANA</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                        <asp:ListItem>MADYA PRADESH</asp:ListItem>
                        <asp:ListItem>KARNATAKA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListstate" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownListcity" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>HYDERABAD</asp:ListItem>
                        <asp:ListItem>BANGGLORE</asp:ListItem>
                        <asp:ListItem>CHENNAI</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownListcity" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style11"></td>
                <td class="auto-style4"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxemail" runat="server"  Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style13">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter valid Email*" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style22"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style23">Mobile</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">Pincode</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxMoblie" runat="server" TextMode="Phone" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxMoblie" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxPincode" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxPincode" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">UserName</td>
                <td class="auto-style9">Password</td>
                <td class="auto-style21">Re-Enter Password</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRPass" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both passwords must be same" ValidationGroup="1" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">PAN Number</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">Aadhar Number</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxPANno" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPANno" runat="server" ControlToValidate="TextBoxPANno" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxAadharNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAadharno" runat="server" ControlToValidate="TextBoxAadharNo" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">PAN card document(max size 100Kb)</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">Aadhar card document(maximum size 100kb)</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:FileUpload ID="FileUploadPANdocument" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="FileUploadPANdocument" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">
                    <asp:FileUpload ID="FileUploadAadhardoc" runat="server" />
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="FileUploadAadhardoc" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">Department</td>
                <td class="auto-style21">Years of experience(in digits)</td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownListdept" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>CIVIL</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>MECH</asp:ListItem>
                        <asp:ListItem>PETROLIUM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownListdept" ErrorMessage="*" ForeColor="Red" InitialValue="SELECT" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxYearofexper" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBoxYearofexper" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Educational Qualification :</strong></td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">M.tech college Name</td>
                <td class="auto-style7">year of pass</td>
                <td class="auto-style19">Percentage\marks achieved</td>
                <td class="auto-style14">total marks</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxMCN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxMYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxMPA" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxMTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">B.tech colleg name</td>
                <td class="auto-style7">year of pass</td>
                <td class="auto-style19">Percentage\marks achieved</td>
                <td class="auto-style14">total marks</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxBCN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxBYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxBPA" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxBTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">CBSE/INTER college name</td>
                <td class="auto-style7">year of pass</td>
                <td class="auto-style19">Percentage\marks achieved</td>
                <td class="auto-style14">total marks</td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBoxICN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxIYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxIPA" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBoxITM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">SSC/HSC school name</td>
                <td class="auto-style7">year of pass</td>
                <td class="auto-style19">Percentage\marks achieved</td>
                <td class="auto-style14">total marks</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBoxSSN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxSYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBoxSPA" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBoxSTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" Text="submit" Width="95px" OnClick="Button1_Click" BackColor="DarkCyan" BorderColor="#FF6600" BorderStyle="None" ValidationGroup="1" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="Button2" runat="server" Text="Login" Width="105px" OnClick="Button2_Click1" BackColor="DarkCyan" BorderColor="#FF6600" BorderStyle="None" />
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
            </div>
    </form>
</body>
</asp:Content>

