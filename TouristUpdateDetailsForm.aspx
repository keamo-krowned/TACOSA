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
            font-size: x-large;
        }
        .auto-style7 {
            width: 211px;
            height: 26px;
            text-align: right;
        }
        .auto-style20 {
            width: 202px;
            height: 26px;
        }
        .auto-style35 {
            width: 211px;
            text-align: right;
            height: 48px;
        }
        .auto-style36 {
            width: 202px;
            height: 48px;
        }
        .auto-style13 {
            width: 211px;
            height: 47px;
            text-align: right;
        }
        .auto-style43 {
            width: 202px;
            height: 47px;
        }
        .auto-style46 {
            width: 211px;
            text-align: right;
            height: 218px;
        }
        .auto-style47 {
            width: 202px;
            height: 218px;
        }
        .auto-style39 {
            width: 211px;
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
        .auto-style49 {
            width: 211px;
            text-align: right;
            height: 73px;
        }
        .auto-style50 {
            width: 202px;
            height: 73px;
        }
        .auto-style51 {
            width: 202px;
            height: 48px;
            text-align: right;
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
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="What Information Do You Want To Change?"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtFName" runat="server" Width="226px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtLName" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">
                    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth:"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="216px" ShowGridLines="True" Width="237px">
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
                    <asp:TextBox ID="txtCOO" runat="server" Width="226px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtId" runat="server" Width="223px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtEmail" runat="server" Width="222px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                    </td>
                <td class="auto-style50">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    &nbsp;</td>
                <td class="auto-style51">
                    <asp:Button ID="btnSubmitChanges" runat="server" BackColor="#663300" OnClick="btnSubmitChanges_Click" Text="Submit Changes" Width="129px" ForeColor="White" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
