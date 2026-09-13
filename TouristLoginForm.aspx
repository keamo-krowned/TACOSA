<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouristLoginForm.aspx.cs" Inherits="TACOSA.TouristLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 136px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
            width: 688px;
        }
        .auto-style5 {
            width: 136px;
            height: 71px;
        }
        .auto-style6 {
            width: 688px;
            height: 71px;
            text-align: center;
        }
        .auto-style7 {
            height: 71px;
        }
        .auto-style8 {
            width: 136px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style12 {
            text-align: center;
            width: 688px;
            height: 130px;
        }
        .auto-style13 {
            width: 136px;
            height: 130px;
        }
        .auto-style14 {
            height: 130px;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            text-align: center;
            width: 688px;
            height: 26px;
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
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style2" ForeColor="#6B4226" Text="LOG IN"></asp:Label>
                    </strong>
                </td>
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
                    <asp:Label ID="lblEmail" runat="server" Text="Please enter Email to Login*" ForeColor="#6B4226"></asp:Label>
                    </strong>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtEmail" runat="server" Width="331px" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
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
                    <asp:Button ID="btnLogin" runat="server" BackColor="#6B4226" OnClick="btnLogin_Click" Text="LOGIN " BorderColor="#6B4226" Height="75px" Width="174px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style12">
                    <strong>
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style16">
                    <strong>
                    <asp:Label ID="lblRedirectToReg" runat="server" Text="Don't Have an Account? " ForeColor="#6B4226"></asp:Label>
                    <asp:HyperLink ID="hplRegister" runat="server" NavigateUrl="~/TouristRegister.aspx">Click Here</asp:HyperLink>
                    </strong>
                </td>
                <td class="auto-style10"></td>
            </tr>
        </table>
    </form>
</body>
</html>
