<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="TACOSA.defualt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            height: 239px;
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #FF6600">
    <form id="form1" runat="server">
        <div class="auto-style1">
        <div>
        </div>
            <strong>
        <asp:Label ID="lblTitle" runat="server" Text="Welcome To TACOSA" CssClass="auto-style2"></asp:Label>
            </strong>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="216px" ImageUrl="~/Images/Landing.png" Width="650px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Btn1" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="btn2" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="bnt3" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
