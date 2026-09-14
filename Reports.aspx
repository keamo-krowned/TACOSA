<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="TACOSA.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFF3A3">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 98px;
            text-align: center;
        }
        .auto-style4 {
            width: 162px;
            height: 57px;
        }
        .auto-style5 {
            height: 57px;
        }
        .auto-style6 {
            height: 98px;
        }
        .auto-style10 {
            height: 57px;
            width: 286px;
        }
        .auto-style11 {
            height: 98px;
            width: 286px;
        }
        .auto-style12 {
            width: 162px;
            height: 75px;
        }
        .auto-style13 {
            height: 75px;
            width: 286px;
        }
        .auto-style14 {
            height: 75px;
        }
        .auto-style15 {
            width: 162px;
            height: 83px;
        }
        .auto-style16 {
            height: 83px;
            width: 286px;
        }
        .auto-style17 {
            height: 83px;
        }
        .auto-style18 {
            width: 162px;
            height: 68px;
        }
        .auto-style19 {
            height: 68px;
            width: 286px;
        }
        .auto-style20 {
            height: 68px;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
                                        <table style="
    width:100%;
    border-collapse:collapse;
    background-color:#FFF3A3;
    padding:0;
    margin:0;
">

    <tr>

        <!-- TACOSA -->
        <td style="
            width:27%;
            padding-left:2%;
            padding-top:25px;
            padding-bottom:25px;
            text-align:left;
            vertical-align:middle;
        ">

            <asp:Label
                ID="lblTacosa"
                runat="server"
                Text="TACOSA"
                style="
                    font-family:Georgia, serif;
                    font-size:26px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:2px;
                    cursor:pointer;
                    white-space:nowrap;
                "
                onclick="window.location.href='homepage.aspx';">
            </asp:Label>

        </td>


        <!-- ACCOMMODATIONS -->
        <td style="
            width:19%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAccommodation1" 
                runat="server" 
                NavigateUrl="~/adminTransactions.aspx"
                Text="TRANSACTIONS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>


        <td style="
            width:19%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAccommodation0" 
                runat="server" 
                NavigateUrl="~/Reports.aspx"
                Text="REPORTS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>


        <td style="
            width:19%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAccommodation" 
                runat="server" 
                NavigateUrl="~/adminAccommodations.aspx"
                Text="ACCOMMODATIONS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>


        <!-- ATTRACTIONS -->
        <td style="
            width:18%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAttractions" 
                runat="server" 
                NavigateUrl="~/AdminMaintainAttBookings.aspx"
                Text="ATTRACTIONS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>


        <!-- MY PROFILE -->
        <td style="
            width:14%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkTourists" 
                runat="server" 
                NavigateUrl="~/AdminMaintainTourist.aspx"
                Text="TOURISTS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>


        <!-- BOOKINGS -->
        <td style="
            width:22%;
            text-align:center;
            vertical-align:middle;
            padding-right:2%;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkTourists0" 
                runat="server" 
                NavigateUrl="~/adminBookings.aspx"
                Text="ACCBOOKINGS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                "></asp:HyperLink>

        </td>

    </tr>

</table>
        <div style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="font-size: xx-large; font-weight: 700" Text="TACOSA- WHERE BEAUTY MEETS ADVENTURE....."></asp:Label>
        </div>
        <table style="width: 100%; height: 492px;">
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtName" runat="server" Height="22px" ToolTip="enter your name" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Surname:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtSurname" runat="server" Height="22px" ToolTip="enter your surname" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label4" runat="server" Text="email:"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtEmail" runat="server" Height="22px" ToolTip="enter your email" Width="208px"></asp:TextBox>
                </td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="Label5" runat="server" Text="Select report type:"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="reportsType" Text="Top 5 Accommodations" />
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="reportsType" Text="Top 5 Attractions" />
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Select time period for report:"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="148px">
                        <asp:ListItem Enabled="False">Select month:</asp:ListItem>
                        <asp:ListItem>Jan 2026</asp:ListItem>
                        <asp:ListItem>Feb 2026</asp:ListItem>
                        <asp:ListItem>Mar 2026</asp:ListItem>
                        <asp:ListItem>Apr 2026</asp:ListItem>
                        <asp:ListItem>May 2026</asp:ListItem>
                        <asp:ListItem>Jun 2026</asp:ListItem>
                        <asp:ListItem>Jul 2026</asp:ListItem>
                        <asp:ListItem>Aug 2026</asp:ListItem>
                        <asp:ListItem>Sept 2026</asp:ListItem>
                        <asp:ListItem>Oct 2026</asp:ListItem>
                        <asp:ListItem>Nov 2026</asp:ListItem>
                        <asp:ListItem>Dec 2026</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2">
                    <asp:Button ID="btnrequest" runat="server" BackColor="#339933" OnClick="Button1_Click" Text="Request Reports" ToolTip="click to generate report:" />
                    <br />
                    <br />
                    <asp:Button ID="btnCancel" runat="server" BackColor="Red" OnClick="btnCancel_Click" Text="cancel request" ToolTip="click to cancel request" Width="183px" />
                    <br />
                    <br />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
