<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accommodationReports.aspx.cs" Inherits="TACOSA.accommodationReports" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFF3A3">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 49px;
            text-align: center;
        }
        .auto-style2 {
            width: 315px;
        }
        .auto-style3 {
            height: 49px;
            text-align: center;
            width: 315px;
        }
    </style>
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Chart ID="Chart1" runat="server" Height="532px" Width="1259px" BackColor="SaddleBrown" DataSourceID="SqlDataSource2">
                        <series>
                            <asp:Series Name="Series1">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
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
        <table style="width: 100%; height: 569px;">
            <tr>
                <td>
                    <asp:GridView ID="GVAccommodations" runat="server" Height="373px" Width="1393px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 149px;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" BackColor="#00CC00" Height="40px" style="text-align: center" Text="Export data to  MS Excel" Width="182px" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" BackColor="#FF3300" Height="42px" style="text-align: center" Text="export data to pdf form" Width="165px" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server" BackColor="#0066FF" Height="42px" style="text-align: center" Text="export data to MS Word" Width="146px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
