<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminNewBooking.aspx.cs" Inherits="TACOSA.adminNewBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .auto-style48 {
            width: 100%;
        }
        
        .auto-style17 {
            height: 35px;
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style7 {
            width: 301px;
            height: 26px;
            text-align: right;
        }
        .auto-style20 {
            width: 202px;
            height: 26px;
        }
        .auto-style35 {
            width: 301px;
            text-align: right;
            height: 48px;
        }
        .auto-style36 {
            width: 202px;
            height: 48px;
        }
        .auto-style13 {
            width: 301px;
            height: 47px;
            text-align: right;
        }
        .auto-style43 {
            width: 202px;
            height: 47px;
        }
        .auto-style39 {
            width: 301px;
            height: 49px;
            display:flex;
        }
        .auto-style40 {
            width: 202px;
            height: 49px;
            text-align: left;
            display:felx;
        }
        .auto-style49 {
            width: 301px;
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
        .auto-style55 {
            width: 301px;
            text-align: right;
            height: 49px;
            display: flex;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        
        <table class="auto-style48">
            <tr>
                <td class="auto-style17" colspan="2"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Create A New Accommodation Booking" ForeColor="#663300"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblTouristID0" runat="server" Text=" Accommodation ID:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtAcc" runat="server" Width="226px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAcc" ErrorMessage="Needs to refer to an Accommodation" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lblTouristID" runat="server" Text="Tourist ID:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtTouristID" runat="server" Width="226px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTouristID" ErrorMessage="Needs to refer to a Tourist." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="lblType" runat="server" Text="Booking Type:"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtType" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="lblNumPeople" runat="server" Text="Number Of People:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtPeople" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">
                    <asp:Label ID="lblNumPeople0" runat="server" Text="Number Of Rooms:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtRooms" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblCheckIn" runat="server" Text="Check In Date:"></asp:Label>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <asp:CustomValidator ID="CustomValidatorCal1" runat="server" ErrorMessage="Date Cannot be in the past." ForeColor="Red" OnServerValidate="CustomValidatorCal1_ServerValidate"></asp:CustomValidator>
                </td>
                <td class="auto-style40">
                    <asp:Label ID="lblCheckOut" runat="server" Text="Check Out Date:"></asp:Label>
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    <asp:CustomValidator ID="CustomValidatorCal2" runat="server" ErrorMessage="Required Field." ForeColor="Red" OnServerValidate="CustomValidatorCal2_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    &nbsp;</td>
                <td class="auto-style40">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblGrandTotal" runat="server" Text="Grand Total:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtGrandPrice" runat="server" Width="226px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style39">
                    <asp:Label ID="lblStatus" runat="server" Text="Booking Status:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtStatus" runat="server" Width="226px"></asp:TextBox>
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
                    <asp:Button ID="btnSubmitChanges" runat="server" BackColor="#663300" OnClick="btnSubmitChanges_Click" Text="Create Booking" Width="166px" />
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
