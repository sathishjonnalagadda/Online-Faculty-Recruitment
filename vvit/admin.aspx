<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 251px;
    }
    .auto-style2 {
        width: 46px;
    }
    .auto-style4 {
        width: 162px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <form id="form1" runat="server">
        
    <div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
        <div style="background-color:#ffedcc">
         <table class="auto-style1">
             
             <tr>
                 <td colspan="3" style="text-align:left">
                     <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Size="X-Large" Text="Admin login"></asp:Label>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2"></td>
                 <td class="auto-style2">
                     <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                 </td>
                 <td style="text-align:left" class="auto-style4">
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2"></td>
                 <td>
                     <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                 </td>
                 <td style="text-align:left" class="auto-style4">
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2"></td>
                 <td>
                     &nbsp;</td>
                 
                 <td style="text-align:left" class="auto-style4"> 
                     <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" BackColor="#FF8080" BorderColor="#FF8080" BorderStyle="Double" />
           
                 </td>
             </tr>
             
         </table>
         <!--########################################################-->

    
      <!--########################################################-->
      </div>
     </div>
      </div>
        </div>   
             
    </form>
</asp:Content>

