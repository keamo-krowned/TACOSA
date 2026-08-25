<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attractions.aspx.cs" Inherits="TACOSA.Attractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: #FFFFCC;
        }
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            height: 26px;
            width: 262px;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            background-color: #FFFFFF;
            text-align: center;
        }
        .newStyle1 {
            padding: 15px;
        }
        .newStyle2 {
            border-style: dotted;
        }
        .auto-style4 {
            width: 262px;
            height: 26px;
        }
        .auto-style3 {
            padding: 15px;
        }
    </style>
    <link href="Images/Landing.png" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblTitle" runat="server" style="text-align: center; font-weight: 700; font-size: larger" Text="ATTRACTIONS" Width="600px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style1">
                        <asp:Label ID="lblTitle0" runat="server" style="text-align: center; font-style: italic" Text="Explore Our Amazing Attractions" Width="600px"></asp:Label>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <br />
                        <asp:Image ID="imgSafari" runat="server" Height="111px" ImageAlign="Middle" ImageUrl="~/Images/Landing.png" style="text-align: right" Width="129px" />
                        <br />
                        <asp:Label ID="lblSafari" runat="server" Text="Pilanesberg Safari"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr" runat="server" Text="Discover wildlife, stunning landscapes, and the magic of the African bush."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="R450 / day"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderStyle="None" style="font-weight: 700; text-align: center" Text="View Details" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1"></td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
