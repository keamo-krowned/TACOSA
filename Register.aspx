<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TACOSA.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style7 {
            width: 213px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            width: 373px;
        }
        .auto-style12 {
            width: 213px;
            text-align: right;
        }
        .auto-style13 {
            width: 213px;
            height: 47px;
            text-align: right;
        }
        .auto-style17 {
            height: 35px;
            text-align: center;
        }
        .auto-style19 {
            width: 202px;
        }
        .auto-style20 {
            width: 202px;
            height: 26px;
        }
        .auto-style22 {
            width: 373px;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            height: 26px;
            width: 390px;
        }
        .auto-style25 {
            width: 390px;
        }
        .auto-style34 {
            width: 390px;
            height: 48px;
        }
        .auto-style35 {
            width: 213px;
            text-align: right;
            height: 48px;
        }
        .auto-style36 {
            width: 202px;
            height: 48px;
        }
        .auto-style37 {
            width: 373px;
            height: 48px;
        }
        .auto-style38 {
            width: 390px;
            height: 49px;
        }
        .auto-style39 {
            width: 213px;
            text-align: right;
            height: 49px;
        }
        .auto-style40 {
            width: 202px;
            height: 49px;
        }
        .auto-style41 {
            width: 373px;
            height: 49px;
        }
        .auto-style42 {
            height: 47px;
            width: 390px;
        }
        .auto-style43 {
            width: 202px;
            height: 47px;
        }
        .auto-style44 {
            height: 47px;
            width: 373px;
        }
        .auto-style45 {
            width: 390px;
            height: 218px;
        }
        .auto-style46 {
            width: 213px;
            text-align: right;
            height: 218px;
        }
        .auto-style47 {
            width: 202px;
            height: 218px;
        }
        .auto-style48 {
            width: 373px;
            height: 218px;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style17" colspan="4"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Register A New Tourist"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23" colspan="4">
                    <asp:Image ID="Image1" runat="server" BorderColor="#000066" BorderStyle="Solid" Height="109px" ImageUrl="~/Images/Login.png" Width="145px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style24"></td>
                <td class="auto-style7"></td>
                <td class="auto-style20"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Label ID="lblFName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName" ErrorMessage="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style13">
                    <asp:Label ID="lblLName" runat="server" Text="Lastname:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLName" ErrorMessage="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth:"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px" SelectedDate="08/23/2026 16:41:13">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
                <td class="auto-style48">
                    <asp:CustomValidator ID="CustomValidatorCalender" runat="server" ErrorMessage="*Required field / Date may not be in the future" ForeColor="Red" OnServerValidate="CustomValidatorCalender_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39">
                    <asp:Label ID="lblCOO" runat="server" Text="Country Of Origin:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtCOO" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCOO" ErrorMessage="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39">
                    <asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtId" ErrorMessage="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Required field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="btnContinue" runat="server" BorderColor="#000066" BorderStyle="Solid" Text="Continue" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
