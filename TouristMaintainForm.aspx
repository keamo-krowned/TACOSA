<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouristMaintainForm.aspx.cs" Inherits="TACOSA.TouristMaintainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 401px;
            text-align: center;
        }
        .auto-style3 {
            width: 401px;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            height: 26px;
            width: 317px;
        }
        .auto-style6 {
            width: 317px;
        }
        .auto-style7 {
            width: 401px;
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            width: 401px;
            text-align: center;
            height: 34px;
        }
        .auto-style10 {
            width: 317px;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" BorderColor="#000066" BorderStyle="Solid" Height="109px" ImageUrl="~/Images/Login.png" Width="145px" />
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style1">
                    <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style4" Text="Welcome"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="BtnDeleteAccount" runat="server" Font-Bold="True" ForeColor="Red" Text="Delete Account" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnUpdateDetails" runat="server" OnClick="BtnUpdateDetails_Click" Text="Update Details" />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style5"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="BtnHomePage" runat="server" BackColor="#3366FF" OnClick="BtnHomePage_Click" Text="Back To Home Page" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
