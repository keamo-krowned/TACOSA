<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editAccommodation.aspx.cs" Inherits="TACOSA.editAccommodation" %>

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
            width: 246px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            width: 373px;
        }
        .auto-style34 {
            width: 298px;
            height: 48px;
            text-align: right;
        }
        .auto-style35 {
            width: 270px;
            text-align: left;
            height: 48px;
        }
        .auto-style36 {
            width: 246px;
            height: 48px;
            text-align: right;
        }
        .auto-style37 {
            width: 373px;
            height: 48px;
        }
        .auto-style42 {
            height: 47px;
            width: 298px;
            text-align: right;
        }
        .auto-style13 {
            width: 270px;
            height: 47px;
            text-align: left;
        }
        .auto-style43 {
            width: 246px;
            height: 47px;
            text-align: right;
        }
        .auto-style44 {
            height: 47px;
            width: 373px;
        }
        .auto-style45 {
            width: 298px;
            height: 72px;
            text-align: right;
        }
        .auto-style46 {
            width: 270px;
            text-align: left;
            height: 72px;
        }
        .auto-style47 {
            width: 246px;
            height: 72px;
            text-align: right;
        }
        .auto-style48 {
            width: 373px;
            height: 72px;
        }
        .auto-style53 {
            width: 298px;
            height: 51px;
            text-align: right;
        }
        .auto-style54 {
            width: 270px;
            text-align: left;
            height: 51px;
        }
        .auto-style55 {
            width: 246px;
            height: 51px;
            text-align: right;
        }
        .auto-style56 {
            width: 373px;
            height: 51px;
        }
        .auto-style38 {
            width: 298px;
            height: 49px;
            text-align: right;
        }
        .auto-style39 {
            width: 270px;
            text-align: left;
            height: 49px;
        }
        .auto-style40 {
            width: 246px;
            height: 49px;
            text-align: right;
        }
        .auto-style41 {
            width: 373px;
            height: 49px;
        }
        .auto-style25 {
            width: 298px;
        }
        .auto-style12 {
            width: 270px;
            text-align: right;
        }
        .auto-style19 {
            width: 246px;
        }
        .auto-style22 {
            width: 373px;
        }
        .auto-style69 {
            height: 57px;
            width: 298px;
        }
        .auto-style70 {
            width: 270px;
            height: 57px;
            text-align: right;
        }
        .auto-style71 {
            width: 246px;
            height: 57px;
        }
        .auto-style72 {
            height: 57px;
            width: 373px;
        }
        .auto-style73 {
            width: 298px;
            height: 34px;
            text-align: right;
        }
        .auto-style74 {
            width: 270px;
            text-align: left;
            height: 34px;
        }
        .auto-style75 {
            width: 246px;
            height: 34px;
            text-align: right;
        }
        .auto-style76 {
            width: 373px;
            height: 34px;
        }
        </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        
        <table style="width:100%;">
            <tr>
                <td class="auto-style17" colspan="4"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Edit Accommodation" ForeColor="#663300"></asp:Label>
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
                <td class="auto-style34">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style35">
                    <asp:TextBox ID="txtName" runat="server" Width="207px" OnTextChanged="txtName_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style36">
                    <asp:Label ID="lblPrice" runat="server" Text="Price Per Night:"></asp:Label>
                </td>
                <td class="auto-style37">
                    <asp:TextBox ID="txtPrice" runat="server" Width="206px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">
                    <asp:Label ID="lblDescr" runat="server" Text="Description"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtDescr" runat="server" Width="204px" Height="189px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:Label ID="lblPath1" runat="server" Text="Image Path 1:"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblPath2" runat="server" Text="Image Path 2:"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblPath3" runat="server" Text="Image Path 3:"></asp:Label>
                </td>
                <td class="auto-style44">
                    <asp:TextBox ID="txtPath1" runat="server" Width="203px" OnTextChanged="txtPath1_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPath2" runat="server" Width="203px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPath3" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">
                    <asp:Label ID="lblLocation" runat="server" Text="Location:"></asp:Label>
                </td>
                <td class="auto-style46">
                    <asp:TextBox ID="txtLocation" runat="server" Width="207px" OnTextChanged="txtLocation_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style47">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtEmail" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style53">
                    <asp:Label ID="lblCell" runat="server" Text="Cell Number:"></asp:Label>
                </td>
                <td class="auto-style54">
                    <asp:TextBox ID="txtCell" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style55">
                    <asp:Label ID="lblCapacity" runat="server" Text="Capacity Per Room:"></asp:Label>
                </td>
                <td class="auto-style56">
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
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="lblRoomType0" runat="server" Text="Rooms Available:"></asp:Label>
                </td>
                <td class="auto-style39">
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
                        <asp:ListItem Value="21"></asp:ListItem>
                        <asp:ListItem Value="22"></asp:ListItem>
                        <asp:ListItem Value="23"></asp:ListItem>
                        <asp:ListItem Value="24"></asp:ListItem>
                        <asp:ListItem Value="25"></asp:ListItem>
                        <asp:ListItem Value="26"></asp:ListItem>
                        <asp:ListItem Value="27"></asp:ListItem>
                        <asp:ListItem Value="28"></asp:ListItem>
                        <asp:ListItem Value="29"></asp:ListItem>
                        <asp:ListItem Value="30"></asp:ListItem>
                        <asp:ListItem Value="31"></asp:ListItem>
                        <asp:ListItem Value="32"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style40">
                    <asp:Label ID="lblRoomType" runat="server" Text="Room Type:"></asp:Label>
                </td>
                <td class="auto-style41">
                    <asp:TextBox ID="txtRoomType" runat="server" Width="203px" Height="68px" OnTextChanged="txtRoomType_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style73">
                    <asp:Label ID="lblRating" runat="server" Text="Rating:"></asp:Label>
                </td>
                <td class="auto-style74">
                    <asp:TextBox ID="txtRating" runat="server" Width="51px"></asp:TextBox>
                </td>
                <td class="auto-style75">
                </td>
                <td class="auto-style76">
                    </td>
            </tr>
            <tr>
                <td class="auto-style69"></td>
                <td class="auto-style70">
                    &nbsp;</td>
                <td class="auto-style71">
                    &nbsp;</td>
                <td class="auto-style72">
                    </td>
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
