<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouristUpdateDetailsForm.aspx.cs" Inherits="TACOSA.TouristUpdateDetailsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style17 {
            height: 35px;
            text-align: center;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style7 {
            width: 317px;
            height: 26px;
            text-align: right;
        }
        .auto-style20 {
            width: 202px;
            height: 26px;
        }
        .auto-style35 {
            width: 317px;
            text-align: right;
            height: 48px;
        }
        .auto-style36 {
            width: 202px;
            height: 48px;
        }
        .auto-style13 {
            width: 317px;
            height: 47px;
            text-align: right;
        }
        .auto-style43 {
            width: 202px;
            height: 47px;
        }
        .auto-style46 {
            width: 317px;
            text-align: right;
            height: 218px;
        }
        .auto-style47 {
            width: 202px;
            height: 218px;
        }
        .auto-style39 {
            width: 317px;
            text-align: right;
            height: 49px;
        }
        .auto-style40 {
            width: 202px;
            height: 49px;
        }
        .auto-style48 {
            width: 100%;
        }
    </style>
</head>
<body style="background-color: #FFF3A3" >
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style48">
            <tr>
                <td class="auto-style17" colspan="2"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Which Information Do You Want To Change?"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblFName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblLName" runat="server" Text="Lastname:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth:"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" Font-Italic="False" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblCOO" runat="server" Text="Country Of Origin:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtCOO" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    &nbsp;</td>
                <td class="auto-style36">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style35">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Button ID="BtnSubmitChanges" runat="server" BackColor="#3366FF" OnClick="BtnHomePage_Click" Text="Submit Changes" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
