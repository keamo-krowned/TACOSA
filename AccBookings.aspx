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
            margin: 10px 30px;
            justify-content:center;
            justify-self:center;
            width: fit-content;
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
        .auto-style27 {
            text-align: left;
        }
        .auto-style32 {
            font-size: x-large;
        }
        .auto-style17 {
            width: 401px;
            text-align: center;
            height: 46px;
        }
        .auto-style28 {
            text-align: center;
            height: 46px;
        }
        .auto-style33 {
            font-size: larger;
            height: 46px;
        }
        .auto-style34 {
            font-size: large;
            height: 46px;
            width: 276px;
        }
        .auto-style35 {
            text-align: center;
            height: 46px;
            width: 379px;
        }
        .auto-style36 {
            width: 202px;
        }
        .auto-style37 {
            width: 477px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div>
       

       <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3;">

    <tr>
        <td colspan="5" style="padding-left:6%; padding-bottom:18px;" class="auto-style27">

            <asp:Label
                ID="lblTacosa"
                runat="server"
                Text="TACOSA"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style32">
            </asp:Label>

        </td>
    </tr>

    <tr>

        <td class="auto-style33"></td>

        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style34">

            &nbsp;</td>

        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style17">

            <asp:Label
                ID="Label6"
                runat="server"
                Text="Accommodations"
                style="
                    display:inline-block;
                    padding:12px 32px;
                    border:2px solid #6B4226;
                    border-radius:30px;
                    color:white;
                    background-color:#6B4226;
                    font-family:Georgia, serif;
                    font-weight:bold;
                    letter-spacing:2px;
                    white-space:nowrap;
                " CssClass="auto-style12"></asp:Label>

        </td>

        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style35">

            <asp:Label
                ID="lblAttractions"
                runat="server"
                Text="ATTRACTIONS"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style12">
            </asp:Label>

        </td>

        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style28">

            <asp:Label
                ID="lblAttractions0"
                runat="server"
                Text="BOOKINGS"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style12"></asp:Label>

        </td>

    </tr>

</table>


            </div>
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
                            
                    <asp:Image ID="Image4" runat="server" Height="24px" ImageAlign="Baseline" ImageUrl="~/Images/pngtree-flat-red-location-sign-png-image_8927579.png" Width="25px" />
                    <asp:Label ID="lblAccommodationLocation" runat="server" CssClass="auto-style12"></asp:Label>
                    <br />
                    &nbsp;<asp:Image ID="Image5" runat="server" Height="20px" ImageUrl="~/Images/Blue_Star_PNG_Clipart (1).png" Width="21px" />
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
                    <asp:Label ID="label" runat="server" CssClass="auto-style14">Book Room</asp:Label>
&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="3" style="background-color: #FFFFFF"><strong>
                    <asp:Label ID="lblLabel" runat="server" CssClass="auto-style16">Rooms Available:</asp:Label>
                    </strong>&nbsp;<asp:Label ID="lblRoomsAvailable" runat="server"></asp:Label>
                    <br />
                    <strong>&nbsp;<br />
                    <asp:Label ID="lblLabel10" runat="server" CssClass="auto-style16">Select Occupancy:</asp:Label>
                    &nbsp;<br />
                    <asp:Label ID="lblLabel11" runat="server">People:</asp:Label>
&nbsp;
                    <asp:DropDownList ID="ddlPeople" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ddlPeople" ErrorMessage="Enter the Correct Value*" ForeColor="Maroon"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="lblLabel13" runat="server">Rooms:</asp:Label>
&nbsp;
                    <asp:DropDownList ID="ddlRooms" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ddlRooms" ErrorMessage="Enter the Correct Value*" ForeColor="Maroon"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblLabel7" runat="server" CssClass="auto-style16">Check In Date:</asp:Label>
                    <br />
                    <asp:Calendar ID="CalendarCheckIN" runat="server" BackColor="White" BorderColor="White" ForeColor="Maroon" BorderWidth="1px" Font-Names="Segoe UI Emoji" Font-Size="9pt" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <asp:Label ID="lblLabel9" runat="server" CssClass="auto-style16">Check Out Date:</asp:Label>
                    <br />
                    <asp:Calendar ID="CalendarCheckOUT" runat="server" BackColor="White" BorderColor="White" ForeColor="Maroon" BorderWidth="1px" Font-Names="Segoe UI Emoji" Font-Size="9pt" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <asp:Label ID="lblCalculatedPrice" runat="server" CssClass="auto-style16"></asp:Label>
                    <br />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    &nbsp;</td>
                <td class="auto-style37">
                    <asp:Button ID="btnBook" runat="server" BackColor="Maroon" Font-Bold="True" ForeColor="#EE6C46" Height="39px" Text="Book Now" Width="130px" BorderStyle="Groove" OnClick="btnBook_Click" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" BackColor="Maroon" Font-Bold="True" ForeColor="#EE6C46" Height="39px" Text="Cancel Booking" Width="130px" BorderStyle="Groove" />
                </td>
            </tr>
        </table>
             </section>

    </form>
</body>
</html>
