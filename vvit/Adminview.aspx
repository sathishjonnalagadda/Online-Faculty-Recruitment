<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Adminview.aspx.cs" Inherits="Adminview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <div style="background-color:lightgray">
        <asp:Label ID="Label1" runat="server" Text="Years of Experience"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Department"></asp:Label>
                    <asp:DropDownList ID="DropDownListdept" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>CIVIL</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>MECH</asp:ListItem>
                        <asp:ListItem>PETROLIUM</asp:ListItem>
                    </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" />
        <br />
        <asp:GridView ID="GridView1" runat="server" >
        </asp:GridView>
        <br />
            <asp:Panel ID="panel1" runat="server" Visible="False">
        <table class="auto-style1">
            <tr>
                <td rowspan="2" class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="47px"  TextMode="MultiLine" Width="315px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
                </asp:Panel>
            </div>
    </form>
</asp:Content>

