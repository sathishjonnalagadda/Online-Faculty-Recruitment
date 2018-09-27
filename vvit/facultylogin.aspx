<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="facultylogin.aspx.cs" Inherits="facultyhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }
    .auto-style2 {
        height: 30px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <body>

    <form id="form2" runat="server">
      <div style="background-color:#ffc04c">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">Faculty Login Form</td>
            </tr>
            <tr style="align-content:center">
                <td class="right">UserName</td>
                <td>
                    <asp:TextBox ID="TextBoxUserName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Enter UserName" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="right">Password</td>
                <td>
                    <asp:TextBox ID="TextBoxPass" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Enter password" ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
               <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                  <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click1" ValidationGroup="1" BackColor="#FF8080" BorderColor="#FF8080" BorderStyle="Double" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="SignUp" OnClick="Button1_Click1" TabIndex="1" BackColor="#FF8080" BorderColor="#FF8080" BorderStyle="Double" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
          </div>
    </form>
</body>
         <!--########################################################-->

    
      <!--########################################################-->
</asp:Content>

