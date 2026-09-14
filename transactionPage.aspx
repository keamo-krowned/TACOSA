<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transactionPage.aspx.cs" Inherits="TACOSA.transactionPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #CC6600">
<head runat="server">
    <title></title>
    <style type="text/css">
                .auto-style14 {
            width: 100%;
        }
        .card-box {
            background-color: #6B4226;
            border-radius: 12px;
            padding: 25px;
            box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.3);
            margin: 15px;
            height: 565px;
            width: 577px;
        }
        .summary-row {
            display: flex;
            justify-content: space-between;
            padding: 5px 0;
            font-size: large;
        }
        .summary-label {
            font-weight: bold;
            color: #FFFFFF;
        }
        .auto-style15 {
            height: 56px;
        }
        .auto-style16 {
            width: 49%;
        }
        .auto-style17 {
            color: #FFFFFF;
        }
        .auto-style18 {
            font-weight: bold;
        }
        body{
    background-color:#FFF3A3;
}
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div style="font-size: xx-large; text-align: center; color: #3366FF">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700; text-decoration: underline; color: #6B4226" Text="SECURE PAYMENT PORTAL" Font-Names="Georgia"></asp:Label>
        </div>
        <div style="font-weight: 700; color: #663300; font-size: xx-large; text-align:center;">
            <asp:Label ID="Label13" runat="server" Text="TACOSA!" ForeColor="#6B4226" Font-Names="Georgia"></asp:Label>
        </div>

        <table class="auto-style14">
            <tr>
               
                <td style="vertical-align: top;" class="auto-style16">
                    <div class="card-box">
                        <asp:Label ID="Label3" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label4" runat="server" Text="Card Number:" style="font-size: large" CssClass="auto-style17" Font-Names="Georgia"></asp:Label>
                        </strong>
                        <br />
                        <asp:TextBox ID="txtCardNO" runat="server" ToolTip="ENTER CARD NUMBER" Width="278px" Height="25px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCardNO" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />

                        <asp:Label ID="Label5" runat="server" style="color: #663300" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Card Holder name:" style="font-size: large" CssClass="auto-style17" Font-Names="geeorgia"></asp:Label>
                        </strong>
                        <br /><br />
                        <asp:TextBox ID="txtCardholderName" runat="server" ToolTip="ENTER NAME OF CARD" Width="279px" Height="23px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCardholderName" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />

                        <asp:Label ID="Label7" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <strong>
                        <asp:Label ID="Label9" runat="server" Text="Expiry date:" style="font-size: large; color: #FFFFFF;"></asp:Label>
                        </strong>
                        <br />



                        <asp:TextBox ID="txtExpire" runat="server" Width="264px" TextMode="Date"></asp:TextBox>



                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtExpire" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br />

                        <asp:Label ID="Label10" runat="server" style="color: #CC0000" Text="*"></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="CVV:" style="color: #FFFFFF"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtCVVNumber" runat="server" ToolTip="ENTER CVV NUMBER" Width="245px" Height="23px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCVVNumber" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <br /><br />

                        <br /><br />
                        <br /><br />
                    </div>
                </td>

                <td style="width: 50%; vertical-align: top;">
                    <div class="card-box">
                        <asp:Label ID="Label14" runat="server" style="font-weight: 700; text-decoration: underline; color: #FFFFFF; font-size: xx-large;" Text="Payment Summary:" ForeColor="#990033" Font-Names="Georgia"></asp:Label>
                        <br /><br />

                        <div class="summary-row">
                            <span class="summary-label">Merchant:</span>
                            <asp:Label ID="lblMerchantName" runat="server" CssClass="auto-style17"></asp:Label>
                        </div>
                        <hr />
                        <div class="summary-row">
                            <span class="summary-label">Booking date:</span>
                            <asp:Label ID="lblCheckout" runat="server" CssClass="auto-style17"></asp:Label>
                        </div>
                        <hr class="auto-style17" />
                        <div class="summary-row">
                            <span class="summary-label">Booking-ID:</span>
                            <asp:Label ID="lblBookID" runat="server" CssClass="auto-style17"></asp:Label>
                        </div>
                        <hr />
                        <div class="summary-row">
                            <span class="summary-label">Price:</span>
                            <asp:Label ID="lblPrice" runat="server" CssClass="auto-style17"></asp:Label>
                        </div>
                        <hr />
                        <div class="summary-row">
                            <span class="summary-label">Service Fee:</span>
                            <asp:Label ID="lblServicefee" runat="server" CssClass="auto-style17"></asp:Label>
                        </div>
                        <hr />
                        <div class="summary-row">
                            <span class="summary-label" style="font-size: x-large; color: white;">Total:</span>
                            <asp:Label ID="lblGrandTotal" runat="server" style="font-size: x-large; color: white; font-weight: bold;" ForeColor="White"></asp:Label>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <table style="width: 100%; height: 153px; margin-top: 12px;">
            <tr>
                <td class="auto-style15" style="text-align: center">

                        <strong>

                        <asp:Button ID="btnPayment" runat="server" BackColor="#6B4226" BorderColor="#6B4226" Height="35px" Text="CONFIRM PAYMENT" ToolTip="CLICK TO CONFIRM PAYMENT!" Width="433px" style="text-align: center" OnClick="btnPayment_Click" CssClass="auto-style18" Font-Names="Georgia" ForeColor="White" />
                        </strong>
                        </td>
            </tr>
            <tr>
                <td style="text-align: center">
                        <asp:Label ID="Label12" runat="server" Text="-----------------------------------OR------------------------------------------"></asp:Label>
                        <asp:Label ID="lblerror" runat="server"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td style="text-align: center">
                        <strong>
                        <asp:Button ID="btnCancel" runat="server" BackColor="#6B4226" Height="41px" Text="CANCEL PAYMENT/ RETURN" ToolTip="CLICK TO CANCEL PAYMENT" OnClick="btnCancel_Click" Width="429px" BorderColor="#6B4226" CssClass="auto-style18" Font-Names="Georgia" ForeColor="White" />
                        </strong>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>