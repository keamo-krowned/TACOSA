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
            text-align: center;
            border-radius: 12px;
            padding: 15px;
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
            <table style="width:85%;">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblTitle" runat="server" style="text-align: center; font-weight: 700; font-size: larger" Text="ATTRACTIONS" Width="265px" Font-Names="Ink Free" Height="34px"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style9">
                        <asp:Label ID="lblTitle0" runat="server" style="text-align: center; font-style: italic" Text="Explore Our Amazing Attractions" Width="320px" Font-Names="Gabriola" Height="42px"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border: 1px solid #C0C0C0; padding: 15px; margin: 10px; line-height: 15px;">
                        <br />
                        <asp:Image ID="imgSafari" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/Images/Landing.png" style="text-align: right" Width="200px" />
                        <br />
                        <asp:Label ID="lblSafari" runat="server" Text="Pilanesberg Safari" style="font-weight: 700"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr" runat="server" Text="Discover wildlife, stunning landscapes, and the magic of the African bush."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice" runat="server" Text="R450 / day" style="font-weight: 700"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" BorderStyle="None" style="font-weight: 700; text-align: center" Text="View Details" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style3" style="border: 1px solid #C0C0C0; padding: 15px; margin: 10px; line-height: 15px; vertical-align: 12%;">
                        <asp:Image ID="Image1" runat="server" Height="136px" ImageUrl="~/Images/Landing.png" Width="199px" />
                        <br />
                        <asp:Label ID="lblCape" runat="server" style="font-weight: 700" Text="Table Mountain Summit"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescrip" runat="server" Text="Ride the cableway to the top of Cape Town’s iconic Table Mountain. Enjoy 360° views of the city, ocean, and winelands with a guided nature walk."></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice0" runat="server" Text="R650 per adult | R350 per child (3-12)" style="font-weight: 700"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" BackColor="#FFFFCC" BorderStyle="None" style="font-weight: 700; text-align: center" Text="View Details" OnClick="Button1_Click" />
                    </td>
                    <style>
    .auto-style3 {
        border-radius: 12px;
    }
                        .auto-style8 {
                            width: 261px;
                        }
                        .auto-style9 {
                            height: 26px;
                            width: 261px;
                        }
                        .auto-style1 {
                            background-color: #C0C0C0;
                        }
                        .auto-style1 {
                            background-color: #FFFFFF;
                        }
                        .auto-style1 {
                            background-position: center;
                            border-width: 1px;
                            border-top-style: 1;
                            border-right-style: 1;
                            border-bottom-style: 1;
                            border-left-style: 1;
                            padding: 15px;
                            vertical-align: top;
                        }
                        .auto-style1 {
                            border-style: solid;
                            border-color: #C0C0C0;
                        }
                    </style>
                    <td class="auto-style1">
                        <asp:Image ID="imgSafari0" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/Images/Landing.png" style="text-align: right" Width="200px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="imgSafari1" runat="server" Height="150px" ImageAlign="Top" ImageUrl="~/Images/Landing.png" style="text-align: right" Width="200px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="imgSafari2" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/Images/Landing.png" style="text-align: right" Width="200px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
