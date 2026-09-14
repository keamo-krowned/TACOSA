<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminAccommodations.aspx.cs" Inherits="TACOSA.adminAccommodations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-size: xx-large;
        }

        .auto-style12 {
            height: 73px;
            width: 157px;
        }
        .auto-style17 {
            height: 73px;
            width: 285px;
        }
        .auto-style13 {
            height: 73px;
            width: 202px;
        }
        .auto-style14 {
            height: 73px;
        }
        .auto-style10 {
            width: 157px;
        }
        .auto-style19 {
            width: 285px;
            text-align: center;
        }
        .auto-style15 {
            width: 202px;
            text-align: center;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style16 {
            width: 157px;
            text-align: center;
        }
        .auto-style11 {
            height: 33px;
            width: 157px;
            text-align: center;
        }
        .auto-style20 {
            height: 33px;
            width: 285px;
            text-align: center;
        }
        .auto-style9 {
            height: 33px;
            width: 202px;
        }
        .auto-style7 {
            height: 33px;
            text-align: center;
        }
        .auto-style18 {
            width: 285px;
        }
        .auto-style8 {
            width: 202px;
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
        <div class="auto-style1">
    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style2" ForeColor="#663300" Text="Mainatin Accommodations"></asp:Label>
<div>

        <table style="width:100%;">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style17"></td>
                <td class="auto-style13">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="btnViewAll" runat="server" BackColor="#663300" ForeColor="White" Text="View Accommodations" OnClick="btnViewAll_Click" Width="271px" />
                </td>
                <td class="auto-style19">
                    <asp:Label ID="lblAdd" runat="server" Text="Add Accommodation"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:Label ID="lblDelete" runat="server" Text="Delete Acc By ID"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMaintain" runat="server" Text="Update Accommodation"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="btnAddAcc" runat="server" BackColor="#663300" ForeColor="White" OnClick="bntAddNewT_Click" Text="Add Accommodation" Width="190px" />
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtDelete" runat="server" Width="233px"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtMaintain" runat="server" Width="233px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="btnDelete" runat="server" BackColor="#FFCCCC" ForeColor="Red" Text="Delete Acc By ID" OnClick="btnDelete_Click" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="btnChange" runat="server" BackColor="#663300" ForeColor="White" Text="Change Detail" Width="227px" OnClick="btnMainatin_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" Height="187px" Width="1068px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
