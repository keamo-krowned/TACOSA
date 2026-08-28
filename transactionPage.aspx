<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transactionPage.aspx.cs" Inherits="TACOSA.transactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FF6600">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 46px;
        }
        .auto-style1 {
            width: 416px;
        }
        .auto-style2 {
            height: 116px;
            text-align:center;
        }
        .auto-style4 {
            width: 416px;
            height: 117px;
        }
        .auto-style5 {
            height: 117px;
        }
        .auto-style6 {
            width: 416px;
            height: 107px;
            text-align: center;
        }
        .auto-style7 {
            height: 117px;
            width: 541px;
        }
        .auto-style8 {
            width: 541px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-size: xx-large; text-align: left; color: #3366FF">
            <asp:Label ID="Label1" runat="server" style="font-style: italic; font-weight: 700; text-decoration: underline; color: #0000FF" Text="SECURE PAYMENT PORTAL"></asp:Label>
        </div>
        <table style="width: 100%; height: 499px;">
            <tr>
                <td class="auto-style2" colspan="3">
                    <br />
            <asp:Label ID="Label13" runat="server" style="font-style: italic; font-weight: 700; text-decoration: underline; color: #0000FF; font-size: xx-large;" Text="TACOSA!"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="Card Number:" style="font-size: large"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCardNO" runat="server" ToolTip="ENTER CARD NUMBER " Width="278px" Height="36px"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style5">
            <asp:Label ID="Label14" runat="server" style="font-style: italic; font-weight: 700; text-decoration: underline; color: #0000FF; font-size: xx-large;" Text="Payment Summary:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label8" runat="server" Text="Card Holder name:" style="font-size: large"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCardholderName" runat="server" ToolTip="ENTER NAME OF CARD" Width="279px" Height="30px"> </asp:TextBox>
                </td>
                <td rowspan="7" class="auto-style8">&nbsp;</td>
                <td rowspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label9" runat="server" Text="Expiry date:" style="font-size: large"></asp:Label>
                    <asp:Calendar ID="CalExpirydate" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                    <asp:Label ID="Label11" runat="server" Text="CVV:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCVVNumber" runat="server" ToolTip="ENTER CVV NUMBER" Width="245px" Height="35px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Save Card" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnPayment" runat="server" BackColor="#336600" BorderColor="#339933" Height="35px" style="text-align: center" Text="CONFIRM PAYMENT" ToolTip="CLICK TO CONFIRM PAYMENT!" Width="179px" />
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="---------------------OR-------------------------"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="Red" Height="41px" Text="CANCEL PAYMENT/ RETURN" ToolTip="CLICK TO CANCEL PAYMENT" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
