<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="TACOSA.Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        #MainContainer{
            margin: 30px 120px 0px 120px;
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

       
        <td style="
            width:45%;
            padding-left:4%;
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
                ">
            </asp:Label>

            <br />
            <br />

        </td>


       
        <td style="
            width:20%;
            text-align:center;
            vertical-align:middle;
        ">

            <asp:Label
                ID="lblAccommadation"
                runat="server"
                Text="ACCOMMODATIONS"
                style="
                    font-family:Georgia, serif;
                    font-size:17px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                    white-space:nowrap;
                "></asp:Label>

        </td>


      
        <td style="
            width:17%;
            text-align:center;
            vertical-align:middle;
        ">

            <asp:Label
                ID="lblAttractions"
                runat="server"
                Text="ATTRACTIONS"
                style="
                    font-family:Georgia, serif;
                    font-size:17px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                    white-space:nowrap;
                ">
            </asp:Label>

        </td>


        <td style="
            width:18%;
            text-align:center;
            vertical-align:middle;
            padding-right:3%;
        ">

            <asp:Label
                ID="Label5"
                runat="server"
                Text="BOOKINGS"
                style="
                    display:inline-block;
                    padding:12px 30px;
                    border:2px solid #6B4226;
                    border-radius:30px;
                    color:white;
                    background-color:#6B4226;
                    font-family:Georgia, serif;
                    font-weight:bold;
                    letter-spacing:2px;
                    white-space:nowrap;
                " CssClass="auto-style30">
            </asp:Label>

        </td>

    </tr>

</table>

        <section id ="MainContainer">
            <asp:Label ID="lblZeroBookings" runat="server" Text="You currently have no bookings."></asp:Label>
            <div id ="bookingContainer" runat="server">

            </div>
        </section>
       
    </form>
</body>
</html>
