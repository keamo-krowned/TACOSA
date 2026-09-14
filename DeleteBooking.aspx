<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteBooking.aspx.cs" Inherits="TACOSA.DeleteBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         body { 
             margin: 0; 
             background-color: #FFF3A3; 

         } 
        .auto-style1 {
            height: 20px;
        }
            .headerLinks { 
                text-decoration: none; 
                font-family: Georgia, serif; 
                font-size: 18px; 
                font-weight: bold; color: #6B4226; 
                letter-spacing: 1px; 

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
            <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </form>
</body>
</html>
