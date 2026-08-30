<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccBookings.aspx.cs" Inherits="TACOSA.AccBookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FEDC67">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style5 {
            height: 305px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style12 {
            font-size: small;
        }
        .auto-style13 {
            color: #3399FF;
            background-color: #CCFFCC;
        }
        .auto-style14 {
            color: #663300;
            font-size: x-large;
        }
        .auto-style15 {
            font-size: larger;
        }
        .auto-style16 {
            font-size: large;
        }
        .picContainer{
            display:grid;
            border-radius:4px;
            background-color:white;
            grid-template-columns: 2fr 1fr;
            grid-template-rows: 1fr 1fr;
            height: 560px;
            gap: 10px;
            padding: 10px;
            width: 90%;
            margin: 0 auto;
           
           
            
        }
        .Image1{
            grid-row: 1 / 3;
        }
        .Image1 img,
        .twoPics img{
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: block;
            border-radius: 4px;
        }
        #tableContainer{
            width:90%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1>
                <asp:Label ID="lblAccommodationName" runat="server" CssClass="auto-style15" ForeColor="#603000"></asp:Label>
            </h1>
        </div>
        <div class ="picContainer">
            <div class ="Image1">
                <asp:Image ID="img1" runat="server" />

            </div>
            <div class ="twoPics">
                <asp:Image ID="img2" runat="server"  />
            </div>
            <div class ="twoPics">
                <asp:Image ID="img3" runat="server" />
            </div>
                
            
        </div>

        <section id ="tableContainer">

        <table style="width:100%;">
            <tr>
                <td class="auto-style5" colspan="3">
                            
                        <br />
                    <br />
                    <asp:Image ID="Image4" runat="server" Height="24px" ImageAlign="Baseline" ImageUrl="~/Images/pngtree-flat-red-location-sign-png-image_8927579.png" Width="25px" />
                    <asp:Label ID="lblAccommodationLocation" runat="server" CssClass="auto-style12"></asp:Label>
                    <br />
                    <asp:Label ID="lblAccRating" runat="server" BackColor="#CCFFCC" CssClass="auto-style12" ForeColor="#3399FF"></asp:Label>
&nbsp;<asp:Label ID="lblLabel5" runat="server" CssClass="auto-style13"> rating</asp:Label>
                    <br />
                    <br />
                    <br />
                    <strong>
                    <asp:Label ID="label2" runat="server" CssClass="auto-style14">About the Accommodation</asp:Label>
                    </strong>
                    <br />
                    <asp:Label ID="lblAccDescription" runat="server"></asp:Label>
                    <br />
                    <br />
                    <strong>
                    <asp:Label ID="label3" runat="server" CssClass="auto-style14">Accommodation Details</asp:Label>
                    </strong>
                    <br />
                    <strong>
                    <asp:Label ID="lblLabel0" runat="server">Max Capacity:</asp:Label>
                    </strong>&nbsp;<asp:Label ID="lblAccCapacity" runat="server"></asp:Label>
                    <br />
                    <strong>
                    <asp:Label ID="lblLabel2" runat="server">Price Per Night:</asp:Label>
                    </strong>&nbsp;<asp:Label ID="lblAccPricePerNight" runat="server"></asp:Label>
                    <br />
                    <strong>
                    <asp:Label ID="lblLabel8" runat="server">Room type:</asp:Label>
&nbsp;</strong><asp:Label ID="lblRoomTypes" runat="server"></asp:Label>
                    <br />
                    <br />
                    <strong>
                    <asp:Label ID="label4" runat="server" CssClass="auto-style14">Accommodation Contact Details</asp:Label>
                    <br />
                    <asp:Label ID="lblLabel3" runat="server">Cell Number:</asp:Label>
                    </strong>
                    <asp:Label ID="lblAccCellNumber" runat="server"></asp:Label>
                    <br />
                    <strong>
                    <asp:Label ID="lblLabel4" runat="server">Email:</asp:Label>
                    </strong>
                    <asp:Label ID="lblAccEmail" runat="server"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="3"><strong>
                    <asp:Label ID="label" runat="server" CssClass="auto-style14">Book Here Now</asp:Label>
&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="background-color: #FFFFFF"><strong>
                    <asp:Label ID="lblLabel" runat="server" CssClass="auto-style16">Rooms Available:</asp:Label>
                    </strong>&nbsp;<asp:Label ID="lblRoomsAvailable" runat="server"></asp:Label>
                    <br />
                    <strong>&nbsp;</strong><strong><br />
                    <br />
                    <asp:Label ID="lblLabel7" runat="server" CssClass="auto-style16">Check In Date:</asp:Label>
                    <br />
&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="#FFC6C6" BorderColor="Maroon" ForeColor="Maroon"></asp:Calendar>
                    <br />
                    <br />
                    <asp:Label ID="lblLabel9" runat="server" CssClass="auto-style16">Check Out Date:</asp:Label>
                    <br />
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFC6C6" BorderColor="Maroon" ForeColor="Maroon"></asp:Calendar>
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Maroon" Font-Bold="True" ForeColor="#EE6C46" Height="39px" Text="Book Now" Width="130px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
             </section>

    </form>
</body>
</html>
