<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="ChatBot.aspx.cs" Inherits="TACOSA.ChatBot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #663300;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #663300;
        }
        .auto-style4 {
            height: 75px;
            text-align: center;
        }
        .auto-style5 {
            font-size: large;
            color: #663300;
            text-decoration: underline;
        }
        .auto-style6 {
            text-align: center;
            height: 26px;
        }
        .auto-style7 {
            text-align: right;
        }
        .auto-style8 {
            font-style: italic;
        }
        .auto-style9 {
            text-align: center;
            height: 33px;
        }
    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div class="auto-style2">
        <div>
        </div>
                <strong>
                <asp:Label ID="lblTitle" runat="server" CssClass="auto-style1" Text="TACOSA CHATBOT"></asp:Label>
                <br />
                <br />
                </strong><span class="auto-style3"><em>Hi My Name is<strong> TommyChat.<br />
                </strong></em></span>
            </div>
            <em>
            <asp:Label ID="lblHeading" runat="server" CssClass="auto-style3" Text="Need to know something? Ask me"></asp:Label>
            </em>
        </div>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtQuestion" runat="server" Width="927px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Button ID="btnAnswer" runat="server" BackColor="#663300" ForeColor="White" OnClick="btnAnswer_Click" Text="Get Answer" Width="203px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblAnswer" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <em>
                    <asp:Button ID="btnBack" runat="server" BackColor="#663300" CssClass="auto-style8" ForeColor="White" OnClick="btnBack_Click" Text="Return to Homepage" Width="158px" />
                    </em>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
