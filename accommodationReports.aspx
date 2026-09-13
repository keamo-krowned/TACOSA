<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accommodationReports.aspx.cs" Inherits="TACOSA.accommodationReports" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFF3A3">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 49px;
            text-align: left;
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
                    <br />
                    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblError" runat="server" style="color:red;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                   
                    <asp:Chart ID="Chart1" runat="server" Height="532px" Width="1393px" BackColor="Sienna">
                        <series>
                            <asp:Series Name="Accommodations" ChartType="Column" Color="#336600">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 569px;">
            <tr>
                <td>
                    
                    <asp:GridView ID="GVAccommodations" runat="server" 
                        Height="605px" 
                        Width="1393px"
                        BackColor="#DEBA84"
                        BorderColor="#DEBA84"
                        BorderWidth="1px"
                        CellPadding="3" BorderStyle="None" CellSpacing="2">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" ForeColor="White" Font-Bold="True"/>
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
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
                    <asp:Button ID="Button2" runat="server" 
                        BackColor="#00CC00" 
                        Height="40px" 
                        style="text-align: left" 
                        Text="Export data to MS Excel" 
                        Width="198px" ToolTip="click to export data to MS excel" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" 
                        BackColor="#993300" 
                        Height="40px" 
                        style="text-align: left" 
                        Text="return to reports" 
                        Width="198px" OnClick="Button3_Click" ToolTip="click to return to request page" />
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style1"></td>
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