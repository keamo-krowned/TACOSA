<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accommodationReports.aspx.cs" Inherits="TACOSA.accommodationReports" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFF3A3">
<head runat="server">
    <title></title>
</head>
<body style="height: 517px">
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="font-size: xx-large" Text="TACOSA- WHERE ADVENTURE MEETS BEAUTY"></asp:Label>
        </div>
        <table style="width: 100%; height: 334px;">
            <tr>
                <td colspan="3" style="text-align: center">
            <asp:Label ID="lblAccPerMonth" runat="server" style="font-size: xx-large"></asp:Label>
                    <br />
                    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" Height="532px" Width="1259px" BackColor="SaddleBrown">
                        <series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
