<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attractionsReports.aspx.cs" Inherits="TACOSA.attractionsReports" %>
<%@ Register 
    Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" 
    Namespace="System.Web.UI.DataVisualization.Charting" 
    TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFCC66">
<head runat="server">
    <title>Top 5 Attractions</title>
    <style>
        .card {
            background: white;
            border-radius: 12px;
            padding: 20px;
            margin: 15px;
            box-shadow: 0px 6px 18px rgba(0,0,0,0.2);
        }
        .page-title {
            text-align: center;
            font-size: xx-large;
            font-weight: 700;
            color: #663300;
            padding: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

       
        <div class="page-title">
            <asp:Label ID="Label1" runat="server" 
                Text="Attraction request page">
            </asp:Label>
        </div>

        
        <div class="card" style="text-align:center;">
            <asp:Label ID="lblAttraction" runat="server" 
                style="font-weight:700; font-size:large; color:#663300;">
            </asp:Label>
            <br />
            <asp:Label ID="lblWelcome" runat="server" 
                style="font-weight:700; font-size:medium;">
            </asp:Label>
            <br />
            <asp:Label ID="lblError" runat="server" 
                style="color:red;">
            </asp:Label>
        </div>

        
        <div class="card">
            <asp:Label runat="server"
                style="font-size:large; font-weight:bold; color:#663300;"
                Text="Top 5 Most Visited Attractions:">
            </asp:Label>
            <br /><br />

            
            <asp:Chart ID="Chart1" runat="server" 
                Width="1306px" 
                Height="400px">
                <Series>
                    <asp:Series 
                        Name="Attractions" 
                        ChartType="Column" 
                        Color="Orange">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
        </div>

        
        <div class="card">
            <asp:Label runat="server"
                style="font-size:large; font-weight:bold; color:#663300;"
                Text="Attraction Details:">
            </asp:Label>
            <br /><br />

            <asp:GridView ID="GVattractions" runat="server"
                AutoGenerateColumns="True"
                Width="100%"
                BackColor="White"
                BorderColor="Orange"
                BorderWidth="1px"
                CellPadding="8">
                <HeaderStyle 
                    BackColor="Orange" 
                    ForeColor="White" 
                    Font-Bold="True"/>
                <AlternatingRowStyle 
                    BackColor="#fff9c4"/>
            </asp:GridView>
        </div>

        
        <div class="card" style="text-align:center;">
            &nbsp;<asp:Button ID="Button3" runat="server" BackColor="#00CC00" Height="37px" OnClick="Button3_Click" Text="export to MS excel " Width="161px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBack" runat="server"
                Text="Back to Reports"
                OnClick="btnBack_Click"
                BackColor="#663300"
                ForeColor="White"
                Height="35px"
                Width="150px"/>
        </div>

    </form>
</body>
</html>