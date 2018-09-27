<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="FacultyUpdate.aspx.cs" Inherits="FacultyUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 233px;
        }
        .auto-style2 {
            height: 28px;
        }
        .auto-style3 {
            width: 233px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
    <form id="form1" runat="server">
    <div>
    <div style="background-color: #ffdb99" align="center">
        <table class="auto-style1" border="0">
            
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Logout" Width="121px" OnClick="Button2_Click1" BackColor="DarkCyan" BorderColor="#FF6600" BorderStyle="None" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">POU Name</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DropDownList ID="POUName_lst" runat="server">
                        <asp:ListItem>HYDERABAD</asp:ListItem>
                        <asp:ListItem>GUNTUR</asp:ListItem>
                        <asp:ListItem>NALGONDA</asp:ListItem>
                        <asp:ListItem>VIZAG</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="POUName_lst" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Salutattion</td>
                <td class="auto-style1" rowspan="1">Full Name</td>
                <td class="auto-style5" rowspan="0"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListSalutation" runat="server">
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownListSalutation" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxfn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxfn" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4" rowspan="0">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Marital Status</td>
                <td class="auto-style1" rowspan="1">Photo(latest self photo size 50kb)</td>
                <td class="auto-style4" rowspan="0">
                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListMarital" runat="server">
                        <asp:ListItem>MARRIED</asp:ListItem>
                        <asp:ListItem>UNMARRIED</asp:ListItem>
                        <asp:ListItem>SINGLE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListMarital" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    
                    <asp:FileUpload ID="FileUploadPHOTO" runat="server" />
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUploadPHOTO" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Wife/Husand Name</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">Father Name</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxWH" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoXFaName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoXFaName" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">DOB(dd/mm/yyyy)</td>
                <td class="auto-style1" rowspan="1">Gender</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxdob" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxdob" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:DropDownList ID="DropDownListGen" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>MALE</asp:ListItem>
                        <asp:ListItem>FEMALE</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListGen" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Address</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxAddress"   runat="server" Height="56px"  Width="232px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxAddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">State</td>
                <td class="auto-style1" rowspan="1">City</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListstate" runat="server">
                        <asp:ListItem>ANDHRA PRADESH</asp:ListItem>
                        <asp:ListItem>TELANGANA</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                        <asp:ListItem>MADYA PRADESH</asp:ListItem>
                        <asp:ListItem>KARNATAKA</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownListstate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:DropDownList ID="DropDownListcity" runat="server">
                        <asp:ListItem>HYDERABAD</asp:ListItem>
                        <asp:ListItem>BANGGLORE</asp:ListItem>
                        <asp:ListItem>CHENNAI</asp:ListItem>
                        <asp:ListItem>DELHI</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListcity" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Email</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxemail" runat="server"  Width="246px"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">Mobile</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">Pincode</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMoblie" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxMoblie" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    &nbsp;</td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxPincode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxPincode" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">UserName</td>
                <td class="auto-style1" rowspan="1">Password</td>
                <td class="auto-style5" rowspan="0">Re-Enter Password</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorRPass" runat="server" ControlToValidate="TextBoxRPass" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both password must be same" ForeColor="Red" ValidationGroup="1"></asp:CompareValidator>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">PAN Number</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">Aadhar Number</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPANno" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBoxPANno" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxAadharNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBoxAadharNo" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">PAN card document(max size 100Kb)</td>
                <td class="auto-style1" rowspan="1">
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" />
                </td>
                <td class="auto-style4" rowspan="0">Aadhar card document(maximum size 100kb)</td>
                <td>
                    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:FileUpload ID="FileUploadPANdocument" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="FileUploadPANdocument" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">
                    <asp:FileUpload ID="FileUploadAadhardoc" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="FileUploadAadhardoc" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style1" rowspan="1">Department</td>
                <td class="auto-style5" rowspan="0">Years of experience(in digits)</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style1" rowspan="1">
                    <asp:DropDownList ID="DropDownListdept" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>CIVIL</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>MECH</asp:ListItem>
                        <asp:ListItem>PETROLIUM</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownListdept" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxYearofexper" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBoxYearofexper" ErrorMessage="*" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Educational Qualification :</strong></td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">M.tech college Name</td>
                <td class="auto-style1" rowspan="1">year of pass</td>
                <td class="auto-style4" rowspan="0">Percentage\marks achieved</td>
                <td>total marks</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxMCN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxMYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxMPA" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxMTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">B.tech colleg name</td>
                <td class="auto-style1" rowspan="1">year of pass</td>
                <td class="auto-style4" rowspan="0">Percentage\marks achieved</td>
                <td>total marks</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxBCN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxBYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxBPA" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxBTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">CBSE/INTER college name</td>
                <td class="auto-style1" rowspan="1">year of pass</td>
                <td class="auto-style4" rowspan="0">Percentage\marks achieved</td>
                <td>total marks</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxICN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxIYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxIPA" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxITM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">SSC/HSC school name</td>
                <td class="auto-style1" rowspan="1">year of pass</td>
                <td class="auto-style4" rowspan="0">Percentage\marks achieved</td>
                <td>total marks</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxSSN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1" rowspan="1">
                    <asp:TextBox ID="TextBoxSYP" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4" rowspan="0">
                    <asp:TextBox ID="TextBoxSPA" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxSTM" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style1" rowspan="1">&nbsp;</td>
                <td class="auto-style4" rowspan="0">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3" rowspan="1">
                    <asp:Button ID="Button1" runat="server" Text="Update" Width="95px" OnClick="Button1_Click2" BackColor="#004000" BorderColor="#FF3300" BorderStyle="None" ValidationGroup="1"/>
                </td>
                <td class="auto-style2" rowspan="0" colspan="0"></td>
                <td class="auto-style2"></td>
            </tr>
           
        </table>
     </div>
    </div>
    </form>
</body>
</asp:Content>

