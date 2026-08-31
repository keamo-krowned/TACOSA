<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMaintainTourist.aspx.cs" Inherits="TACOSA.AdminMaintainTourist" %>

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
        }
        .auto-style7 {
            height: 33px;
            text-align: center;
        }
        .auto-style8 {
            width: 202px;
        }
        .auto-style9 {
            height: 33px;
            width: 202px;
        }
        .auto-style10 {
            width: 157px;
        }
        .auto-style11 {
            height: 33px;
            width: 157px;
            text-align: center;
        }
        .auto-style12 {
            height: 76px;
            width: 157px;
        }
        .auto-style13 {
            height: 76px;
            width: 202px;
        }
        .auto-style14 {
            height: 76px;
        }
        .auto-style15 {
            width: 202px;
            text-align: center;
        }
        .auto-style16 {
            width: 157px;
            text-align: center;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Label ID="lblTitle" runat="server" CssClass="auto-style2" ForeColor="#663300" Text="Mainatin Tourists"></asp:Label>
        <div>
        </div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="btnViewAll" runat="server" BackColor="#663300" ForeColor="White" Text="View all Tourists" OnClick="btnViewAll_Click" />
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblDelete" runat="server" Text="Delete Tourist By ID"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMaintain" runat="server" Text="Maintain Toruist Details By ID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtDelete" runat="server" Width="233px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtMaintain" runat="server" Width="233px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style9">
                    <asp:Button ID="btnDelete" runat="server" BackColor="#FFCCCC" ForeColor="Red" Text="Delete Tourst By ID" OnClick="btnDelete_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnMainatin" runat="server" BackColor="#663300" ForeColor="White" Text="Maintain Detail" Width="227px" OnClick="btnMainatin_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridView1" runat="server" Height="187px" Width="1068px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
