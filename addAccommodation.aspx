<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addAccommodation.aspx.cs" Inherits="TACOSA.addAccommodation" %>

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
        .auto-style24 {
            height: 26px;
            width: 298px;
        }
        .auto-style7 {
            width: 270px;
            height: 26px;
        }
        .auto-style20 {
            width: 202px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            width: 373px;
        }
        .auto-style34 {
            width: 298px;
            height: 48px;
        }
        .auto-style35 {
            width: 270px;
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
        .auto-style42 {
            height: 47px;
            width: 298px;
        }
        .auto-style13 {
            width: 270px;
            height: 47px;
            text-align: right;
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
            width: 298px;
            height: 72px;
        }
        .auto-style46 {
            width: 270px;
            text-align: right;
            height: 72px;
        }
        .auto-style47 {
            width: 202px;
            height: 72px;
        }
        .auto-style48 {
            width: 373px;
            height: 72px;
        }
        .auto-style53 {
            width: 298px;
            height: 51px;
        }
        .auto-style54 {
            width: 270px;
            text-align: right;
            height: 51px;
        }
        .auto-style55 {
            width: 202px;
            height: 51px;
        }
        .auto-style56 {
            width: 373px;
            height: 51px;
        }
        .auto-style38 {
            width: 298px;
            height: 49px;
        }
        .auto-style39 {
            width: 270px;
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
        .auto-style49 {
            width: 298px;
            height: 60px;
        }
        .auto-style50 {
            width: 270px;
            text-align: right;
            height: 60px;
        }
        .auto-style51 {
            width: 202px;
            height: 60px;
        }
        .auto-style52 {
            width: 373px;
            height: 60px;
        }
        .auto-style25 {
            width: 298px;
        }
        .auto-style12 {
            width: 270px;
            text-align: right;
        }
        .auto-style19 {
            width: 202px;
        }
        .auto-style22 {
            width: 373px;
        }
        </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style17" colspan="4"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Add Accommodation" ForeColor="#663300"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td colspan="4">&nbsp;</td>
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
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtName" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42"></td>
                <td class="auto-style13">
                    <asp:Label ID="lblDescr" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style43">
                    <asp:TextBox ID="txtDescr" runat="server" Width="204px" Height="189px"></asp:TextBox>
                </td>
                <td class="auto-style44">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style45"></td>
                <td class="auto-style46">
                    <asp:Label ID="lblLocation" runat="server" Text="Location:"></asp:Label>
                </td>
                <td class="auto-style47">
                    <asp:TextBox ID="txtLocation" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style48">
                </td>
            </tr>
            <tr>
                <td class="auto-style53"></td>
                <td class="auto-style54">
                    <asp:Label ID="lblCell" runat="server" Text="Cell Number:"></asp:Label>
                </td>
                <td class="auto-style55">
                    <asp:TextBox ID="txtCell" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style56">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style39">
                    <asp:Label ID="lblPrice" runat="server" Text="Price Per Night:"></asp:Label>
                </td>
                <td class="auto-style40">
                    <asp:TextBox ID="txtPrice" runat="server" Width="206px"></asp:TextBox>
                </td>
                <td class="auto-style41">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34"></td>
                <td class="auto-style35">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtEmail" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style37">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style35">
                    <asp:Label ID="lblCapacity" runat="server" Text="Capacity Per Room:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:DropDownList ID="ddlCapacity" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style37">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49"></td>
                <td class="auto-style50">
                    <asp:Label ID="lblRating" runat="server" Text="Rating:"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtRating" runat="server" Width="51px"></asp:TextBox>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style50">
                    <asp:Label ID="lblRoomType" runat="server" Text="Room Type:"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtRoomType" runat="server" Width="203px" Height="68px"></asp:TextBox>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style49">&nbsp;</td>
                <td class="auto-style50">
                    <asp:Label ID="lblRoomType0" runat="server" Text="Rooms Available:"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:DropDownList ID="ddlAvailable" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                        <asp:ListItem Value="6"></asp:ListItem>
                        <asp:ListItem Value="7"></asp:ListItem>
                        <asp:ListItem Value="8"></asp:ListItem>
                        <asp:ListItem Value="9"></asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                        <asp:ListItem Value="11"></asp:ListItem>
                        <asp:ListItem Value="12"></asp:ListItem>
                        <asp:ListItem Value="13"></asp:ListItem>
                        <asp:ListItem Value="14"></asp:ListItem>
                        <asp:ListItem Value="15"></asp:ListItem>
                        <asp:ListItem Value="16"></asp:ListItem>
                        <asp:ListItem Value="17"></asp:ListItem>
                        <asp:ListItem Value="18"></asp:ListItem>
                        <asp:ListItem Value="19"></asp:ListItem>
                        <asp:ListItem Value="20"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style52">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style12">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="btnAdd" runat="server" BackColor="#663300" ForeColor="White" OnClick="btnAdd_Click" Text="Add New Accommodation" Width="238px" Height="50px" />
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
