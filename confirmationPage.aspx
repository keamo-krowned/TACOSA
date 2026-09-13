<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmationPage.aspx.cs" Inherits="TACOSA.confirmationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFCC66">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
        .auto-style1 {
        }
        .auto-style2 {
            text-align: left;
            width: 198px;
        }
    </style>
</head>
<body style="height: 37px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="CONFIRMATION PAGE"></asp:Label>
        <div>
            <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: xx-large; color: #996633" Text="TACOSA- WHERE ADVENTURE MEETS BEAUTY .........."></asp:Label>
        </div>
        <table style="width: 100%; height: 524px;">
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblConfirmMessage" runat="server" style="font-weight: 700; color: #FFFFFF; font-size: x-large" Text="GREAT, YOUR BOOKING IS CONFIRMED . HERES THE INFORMATION YOU'LL NEED"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="247px" Width="1079px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Name:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblACCname" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Contact Information:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblContactInfo" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Booking-ID:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBookingID" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnNextBooking" runat="server" BackColor="#009933" OnClick="btnNextBooking_Click" Text="Create a new booking....." Width="186px" />
                </td>
                <td>
                    <asp:Button ID="btnClose" runat="server" BackColor="#CC0000" OnClick="btnClose_Click" Text="Close page" Width="195px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
