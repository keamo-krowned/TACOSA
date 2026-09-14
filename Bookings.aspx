<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="TACOSA.Bookings" %> 
<!DOCTYPE html> 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server"> 
        <title>My Bookings - TACOSA</title> 
        <style> 
            body { 
                margin: 0; 
                background-color: #FFF3A3; 

            } 
            #MainContainer { 
                margin: 30px 120px 50px 120px; 

            } 
            .cardCss { 
                display: flex; 
                width: 100%; 
                min-height: 200px; 
                margin-bottom: 25px; 
                border-radius: 12px; 
                overflow: hidden; 
                border: 2px solid #c9c5bc; 
                background-color: white; 
                box-sizing: border-box; 

            } 
            .imgCss { 
                width: 25%; 
                min-height: 200px; 
                display: flex; 
                align-items: center; 
                justify-content: center; 
                overflow: hidden; } 
            .imgCss img { 
                width: 100%; 
                height: 100%; 
                object-fit: cover; 
                display: block; } 
            .bookingTextCss { 
                width: 75%; 
                padding: 25px; 
                box-sizing: border-box; 

            } 
            .bookingTextCss h3 { 
                margin-top: 0; 
                margin-bottom: 15px; 
                font-family: Georgia, serif; 
                font-size: 25px; 
                color: #6B4226; } 
            .bookingTextCss p { 
                margin: 8px 0; 
                font-family: Arial, sans-serif; 
                font-size: 16px; 
                color: #333333; } 
            .headerLinks { 
                text-decoration: none; 
                font-family: Georgia, serif; 
                font-size: 18px; 
                font-weight: bold; color: #6B4226; 
                letter-spacing: 1px; 

            } 
            #lblZeroBookings { 
                font-family: Georgia, serif; 
                font-size: 20px; 
                color: #6B4226; 

            } 
            .buttonDiv {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-top: 25px;
                width: 100%;
            }

            .buttons {
                padding: 10px 25px;
                border: none;
                border-radius: 6px;
                background-color: #6B4226;
                color: white;
                font-family: Georgia, serif;
                font-size: 15px;
                font-weight: bold;
                cursor: pointer;
                text-decoration: none;
            }

            .buttons:hover {
                opacity: 0.8;
            }

            .auto-style1 {
                height: 20px;
            }

        </style> 

    </head> 
    <body> 
        <form id="form1" runat="server"> 
            <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3; margin-bottom:20px;">
                <tr> 
                    <td colspan="4" class="auto-style1"></td>

                </tr> 
                <tr> 
                    <td colspan="4" style="padding-left:6%; padding-bottom:18px;">
                        <asp:Label ID="lblTacosa" runat="server" Text="TACOSA" style=" font-family:Georgia, serif; font-size:35px; font-weight:bold; color:#6B4226; letter-spacing:1px; "> 

                        </asp:Label> 

                    </td> 

                </tr> 
                <tr> 
                    <td style=" text-align:center; padding:0 25px; white-space:nowrap; width:25%; "> &nbsp; 

                    </td> 
                    <td style=" text-align:center; padding:0 25px; white-space:nowrap; width:25%; ">
                        <asp:HyperLink ID="hlkAcc" runat="server" CssClass="headerLinks" NavigateUrl="Accommodations.aspx">
                            ACCOMMODATIONS </asp:HyperLink> 

                    </td> 
                    <td style=" text-align:center; padding:0 25px; white-space:nowrap; width:25%; ">
                        <asp:HyperLink ID="hlkAttractions" runat="server" CssClass="headerLinks" NavigateUrl="Attractions.aspx"> ATTRACTIONS </asp:HyperLink>

                    </td> 
                    <td style=" text-align:center; padding:0 25px; white-space:nowrap; width:25%; ">
                        <asp:HyperLink ID="hlkBookings" runat="server" CssClass="headerLinks"> 
                            BOOKINGS </asp:HyperLink> 

                    </td> 

                </tr> 

            </table> 
            <section id="MainContainer" runat="server">
                <asp:Label ID="lblZeroBookings" runat="server" Text="You currently have no bookings." Visible="False">

                </asp:Label>

            </section> 

        </form> 

    </body> 

</html>