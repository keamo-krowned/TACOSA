<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attractionsReports.aspx.cs" Inherits="TACOSA.attractionsReports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFCC66">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; font-size: xx-large">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; text-align: center" Text="Attraction request page"></asp:Label>
        </div>
        <table style="width: 100%; height: 495px;">
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="lblAttraction" runat="server" style="font-weight: 700; text-align: center" Text="Attraction request page"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="lblWelcome" runat="server" style="font-weight: 700; text-align: center"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" Height="544px" Width="1574px">
                        <Series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 361px;">
            <tr>
                <td>
                    <asp:GridView ID="GVattractions" runat="server" DataSourceID="SqlDataSource1" Height="295px" Width="1477px">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
