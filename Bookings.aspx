<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="TACOSA.Bookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        #MainContainer{
            margin: 30px 120px 0px 120px;
        }

        .cardCss {
            display: flex;
            width: 100%;
            min-height: 200px;
            border-radius: 12px;
            overflow: hidden;
            border: 2px solid #c9c5bc;
        }

        .imgCss {
            width: 25%;
           
        }

        .imgCss img {
            width: 80%;
            height: 80%;
            object-fit: cover;
        }

        .bookingTextCss {
            width: 75%;
            padding: 25px;
            box-sizing: border-box;
        }



        .auto-style16 {
            width: 188px;
        }
        .auto-style17 {
            width: 226px;
        }
        .headerLinks{
            
             text-decoration:none;
             font-family:Georgia, serif;
             font-size:18px;
             font-weight:bold;
             color:#6B4226;
             letter-spacing:1px;
        }
        


    </style>
</head>
<body style="background-color: #FFF3A3">
    <form id="form1" runat="server">

               <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3; margin-bottom:20px;">

    <tr>
        <td colspan="4" style="height:20px;"></td>
    </tr>

    <tr>
        <td colspan="4" style="padding-left:6%; padding-bottom:18px;">

            <asp:Label
                ID="lblTacosa"
                runat="server"
                Text="TACOSA"
                style="
                    font-family:Georgia, serif;
                    font-size:35px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                "> </asp:Label>

        </td>
    </tr>

    <tr>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style16">

            &nbsp;</td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style17">

            <asp:HyperLink ID="hlkAcc" runat="server"
                style="
    font-family:Georgia, serif;
    font-size:18px;
    font-weight:bold;
    color:#6B4226;
    letter-spacing:1px;
" NavigateUrl="Accommodations.aspx"> ACCOMMODATIONS</asp:HyperLink>

        </td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        ">

            <asp:HyperLink ID="hlkAttractions" runat="server"
               CssClass ="headerLinks" NavigateUrl="Attractions.aspx"
                >ATTRACTIONS</asp:HyperLink>

        </td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        ">

            <asp:HyperLink ID="hlkBookings" runat="server"
                CssClass ="headerLinks">BOOKINGS</asp:HyperLink>

        </td>

    </tr>

</table>


    </form>


        <table style="width:100%; margin-top:50px">
            <tr>
            <td>&nbsp;</td>
            </tr>
        </table>

        <section id ="MainContainer" runat="server">
            <asp:Label ID="lblZeroBookings" runat="server" Text="You currently have no bookings."></asp:Label>
            
        </section>
       

      

        </body>
</html>
