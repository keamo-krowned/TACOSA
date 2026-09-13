<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editTransactions.aspx.cs" Inherits="TACOSA.editTransactions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style4 {
            font-size: x-large;
            justify-self:center;
        }
        .card-box {
            background-color: #6B4226;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.3);
            margin: 15px;
            height: 1150px;
            width: 577px;
            
        }
        .auto-style17 {
            color: #FFFFFF;
        }
        </style>
</head>

<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">
                <div style="justify-content:center;">
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style4" Text="Change Transaction" ForeColor="#663300" ></asp:Label>
                    <div class="card-box">
                        <asp:Label ID="Label12" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label13" runat="server" Text="Booking ID:" style="font-size: large" CssClass="auto-style17" Font-Names="Georgia"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtBooking" runat="server" ToolTip="ENTER CARD NUMBER" Width="217px" Height="25px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label14" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label15" runat="server" Text="Card Number:" style="font-size: large" CssClass="auto-style17" Font-Names="Georgia"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtCardNO1" runat="server" ToolTip="ENTER CARD NUMBER" Width="278px" Height="25px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text="Amount to Pay:" style="font-size: large" CssClass="auto-style17" Font-Names="Georgia"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtAmount" runat="server" ToolTip="ENTER CARD NUMBER" Width="278px" Height="25px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <strong>
                        <asp:Label ID="Label16" runat="server" Text="Payment" style="font-size: large; color: #FFFFFF;"></asp:Label>
                        </strong>
                        <br />



                        <asp:Calendar ID="CalPayDate" runat="server"
    BackColor="White"
    BorderColor="Black"
    Font-Names="Verdana"
    Font-Size="9pt"
    ForeColor="Black"
    Height="225px"
    NextPrevFormat="ShortMonth"
    Width="547px"
    BorderStyle="Solid"
    CellSpacing="1">

    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />

    <DayStyle BackColor="#CCCCCC" />

    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />

    <OtherMonthDayStyle ForeColor="#999999" />

    <SelectedDayStyle BackColor="#FFFFFF" ForeColor="White" />

    <TitleStyle
        BackColor="#663300"
        Font-Bold="True"
        Font-Size="12pt"
        ForeColor="White"
        BorderStyle="Solid"
        Height="12pt" />

    <TodayDayStyle BackColor="#999999" ForeColor="White" />

</asp:Calendar>



                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>



                        <br />
                        <br />
                        <br />

                        <asp:Label ID="Label7" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label9" runat="server" Text="Expiry date:" style="font-size: large; color: #FFFFFF;"></asp:Label>
                        </strong>
                        <br />



                        <asp:Calendar ID="CalExpirydate" runat="server"
    BackColor="White"
    BorderColor="Black"
    Font-Names="Verdana"
    Font-Size="9pt"
    ForeColor="Black"
    Height="225px"
    NextPrevFormat="ShortMonth"
    Width="547px"
    BorderStyle="Solid"
    CellSpacing="1">

    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />

    <DayStyle BackColor="#CCCCCC" />

    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />

    <OtherMonthDayStyle ForeColor="#999999" />

    <SelectedDayStyle BackColor="#FFFFFF" ForeColor="White" />

    <TitleStyle
        BackColor="#663300"
        Font-Bold="True"
        Font-Size="12pt"
        ForeColor="White"
        BorderStyle="Solid"
        Height="12pt" />

    <TodayDayStyle BackColor="#999999" ForeColor="White" />

</asp:Calendar>



                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>



                        <br /><br />

                        <asp:Label ID="Label10" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="CVV:" style="color: #FFFFFF"></asp:Label>
                        <br />

                        <asp:TextBox ID="txtCVVNumber" runat="server" ToolTip="ENTER CVV NUMBER" Width="245px" Height="23px"></asp:TextBox>
                        <br /><br />
                    <asp:Button ID="btnAdd" runat="server" BackColor="#FFF3A3" ForeColor="#6B4226" OnClick="btnAdd_Click" Text="Add New Transaction" Width="225px" />
                        <br />
                        <br />

                        <br /><br />
                        <br /><br />
                    </div>
                </div>
        
    </form>

</html>
