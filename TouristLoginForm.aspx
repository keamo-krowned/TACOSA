<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouristLoginForm.aspx.cs" Inherits="TACOSA.TouristLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 197px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
            width: 554px;
        }
        .auto-style5 {
            width: 197px;
            height: 71px;
        }
        .auto-style6 {
            width: 554px;
            height: 71px;
            text-align: center;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style8 {
            width: 197px;
            height: 26px;
        }
        .auto-style9 {
            width: 554px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style12 {
            text-align: center;
            width: 554px;
            height: 146px;
        }
        .auto-style13 {
            width: 197px;
            height: 146px;
        }
        .auto-style14 {
            height: 146px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style17 {
            width: 197px;
            height: 35px;
        }
        .auto-style18 {
            width: 554px;
            height: 35px;
            text-align: center;
        }
        .auto-style19 {
            height: 35px;
        }
    </style>
</head>
<body  style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style15">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style2" ForeColor="#6B4226" Text="LOG IN" Font-Names="Georgia"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Image ID="Image1" runat="server" BorderColor="#000066" BorderStyle="Solid" Height="109px" ImageUrl="~/Images/Login.png" Width="145px" />
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="lblEmail" runat="server" Text="Please enter Email to Login*" Font-Names="Georgia" ForeColor="#6B4226"></asp:Label>
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server" Width="331px" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnLogin" runat="server" BackColor="#6B4226" OnClick="btnLogin_Click" Text="Login" Height="67px" Width="177px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17"></td>
                <td class="auto-style18">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="lblRedirectToReg" runat="server" Text="Don't Have an Account? "></asp:Label>
                    <asp:HyperLink ID="hplRegister" runat="server" NavigateUrl="~/TouristRegister.aspx" ForeColor="#6B4226">Click Here</asp:HyperLink>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style3">
                </td>
                <td></td>
            </tr>
        </table>
    </form>
</body>
</html>
