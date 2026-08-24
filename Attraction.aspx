<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attraction.aspx.cs" Inherits="TACOSA.Attraction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: #FFFFCC;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 941px;
        }
        a:active {
            background-color: #FF00FF;
        }
        .auto-style3 {
            text-align: center;
            width: 392px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="lblAttractions" runat="server" style="font-size: larger; color: #000000; text-align: center" Text="ATTARCTIONS" Width="600px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">
                    <asp:Label ID="lblAttractions0" runat="server" style="font-size: large; font-style: italic; text-align: center; margin-left: 129px; margin-bottom: 0px" Text="Explore our Amazing Attarctions" Width="700px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="padding: 15px; background-color: #FFFFFF">
                    <asp:Image ID="imgSafari" runat="server" BorderStyle="None" Height="112px" ImageUrl="~/Images/Landing.png" Width="182px" />
                    <br />
                    <asp:Label ID="lblName" runat="server" Text="Pilannesberg Safari"></asp:Label>
                    <br />
                    <asp:Label ID="lblWildlife" runat="server" Text="Discover wildlife, stunning landscapes, and the magic of the African bush."></asp:Label>
                    <br />
                    <asp:Label ID="lblPrice" runat="server" Text="R450 / day"></asp:Label>
                    <br />
                    <asp:Button ID="btnView" runat="server" BackColor="#FFFFCC" BorderColor="White" BorderStyle="Solid" Text="View Details" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
