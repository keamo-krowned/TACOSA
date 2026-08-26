<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attractions.aspx.cs" Inherits="TACOSA.Attractions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-color: #FFFFCC;
        }
        .auto-style1 {
            height: 26px;
        }
        .newStyle1 {
            padding: 15px;
        }
        .newStyle2 {
            border-style: dotted;
        }
        </style>
    <link href="Images/Landing.png" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style8" colspan="3">
                        <img class="auto-style14" src="Images/images%20(9).jfif" /></td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        <asp:Label ID="lblTitle" runat="server" style="text-align: center; font-weight: 700; font-size: xx-large; color: #663300;" Text="ATTRACTIONS" Width="359px" Font-Names="Ink Free" Height="42px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">
                        <asp:Label ID="lblTitle0" runat="server" style="text-align: center; font-style: italic; color: #663300;" Text="Explore Our Amazing Attractions" Width="320px" Font-Names="Gabriola" Height="42px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <style>
                        .auto-style8 {
                            text-align: center;
                        }
                        .auto-style9 {
                            height: 26px;
                            text-align: center;
                        }
                        .auto-style1 {
                            background-color: #C0C0C0;
                        }
                        .auto-style1 {
                            background-color: #FFFFFF;
                        }
                        .auto-style1 {
                            border-style: 1;
                            background-position: center;
                            border-width: 1px;
                            padding: 15px;
                            vertical-align: top;
                            border-radius: 20px;
                            overflow: hidden;
                        }
                        .auto-style1 {
                            border-style: solid;
                            border-color: #C0C0C0;
                            text-align: center;
                            border-radius: 20px;
                            overflow: hidden;
                        }
                        .auto-style11 {
                            height: 26px;
                            vertical-align: top;
                            text-align: center;
                            border: 1px solid #C0C0C0;
                            padding: 15px;
                            background-color: #FFFFFF;
                            background-position: center;
                        }
                        .auto-style12 {
                            height: 26px;
                            vertical-align: top;
                            width: 553px;
                            text-align: center;
                            border: 1px solid #C0C0C0;
                            padding: 15px;
                            background-color: #FFFFFF;
                            background-position: center;
                        }
                        .auto-style12 {
                            background-color: #FFFFCC;
                            border-radius: 20px;
                            overflow: hidden;
    overflow: hidden;    
                        }
                        .newStyle3 {
                            border-style: 1;
                            border-width: 1px;
                            border-color: #663300;
                            padding: 50px;
                        }
                        .auto-style11 {
                            padding: 15px;
                            margin: 15px;
                            border-radius: 20px;
                            overflow: hidden;  
                        }
                        .auto-style12 {
                            background-color: #FFFFFF;
                            border-radius: 20px;
                            overflow: hidden;
                        }
                        .newStyle4 {
                            background-color: #FFFFCC;
                        }
                        .auto-style11 {
                            background-color: #FFFFCC;
                        }
                        .auto-style13 {
                            background-color: #FFFFFF;
                            text-align: center;
                            border-radius: 20px;
                            overflow: hidden;  
                        }
                        .auto-style11 {
                            background-color: #FFFFFF;
                        }
                        .auto-style14 {
                            width: 1501px;
                            height: 266px;
                            float: left;
                        }
                        .auto-style13 {
                            border-color: #800080;
                        }
                        .auto-style13 {
                            border-color: #663300;
                        }
                        .auto-style15 {
                            text-align: center;
                            border-radius: 20px;
                            overflow: hidden;
                            height: 26px;
                            border-color: #663300;
                            background-color: #FFFFFF;
                        }
                        .auto-style15 {
                            background-color: #FFFFCC;
                        }
                    </style>
                    
                    <td class="auto-style11" >
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="370px" ImageUrl="~/Images/download (2).jfif" style="text-align: center" Width="489px" />
                        <br />
                        <asp:Label ID="lblName" runat="server" BackColor="White" ForeColor="#663300" Text="Table Mountain Summit"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbllocation" runat="server" BackColor="White" ForeColor="#663300" Text=" Cape Peninsula, flanked by Devil's Peak to the east and Lion's Head to the west."></asp:Label>
                        <br />
                        <asp:Label ID="lblDescr" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="Experience the beauty of Table Mountain and the Atlantic coastline. Perfect for tourists short on time!"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="R480 per adult | R280 per child
Includes: Cableway + photo stops. Duration: 4 hours"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable" runat="server" Text="Available" ForeColor="#663300"></asp:Label>
                        <br />
                        <asp:Button ID="btnView" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                        <br />
                    </td>
                    <td class="auto-style12">
                        <br />
                        <asp:Image ID="Image5" runat="server" Height="366px" ImageUrl="~/Images/Muizenberg Beach🏖️.jfif" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName0" runat="server" Text="Ubuntu Beach Villas" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblLocation0" runat="server" Text="Muizenberg Beach, False Bay, Cape Town," ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescrp" runat="server" Text="Rooted in the spirit of Ubuntu. Colorful beachfront stays that bring people together — for sun, sea, and shared stories." BackColor="#FFFFCC" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblprice0" runat="server" Text="R1050 per night" BackColor="#FFFFCC" ForeColor="#663300"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable0" runat="server" Text="Available" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnView0" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <br />
                        <asp:Image ID="Image6" runat="server" Height="359px" ImageUrl="~/Images/V&amp;A Waterfront.jfif" style="text-align: center; margin-bottom: 0px;" Width="433px" />
                        <br />
                        <asp:Label ID="lblName1" runat="server" Text="Victoria Impilo Welfare" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblLocation1" runat="server" Text="12 Victoria Road, Woodstock, Cape Town, Western Cape, 7925" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescrp1" runat="server" Text="Restoring dignity and life through food parcels, counseling, and community upliftment in Cape Town." BackColor="#FFFFCC" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblprice1" runat="server" Text="Price: R120 per adult | R60 per child | R300 Family Ticket" BackColor="#FFFFCC" ForeColor="#663300"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable1" runat="server" Text="Available" ForeColor="#663300"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnView1" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                        <br />
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style30" colspan="3" >
                        &nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style13" style="border-color: #663300; border-spacing: 500px" >
                        <asp:Image ID="Image7" runat="server" Height="380px" ImageUrl="~/Images/download (3).jfif" style="text-align: center" Width="488px" />
                        <br />
                        <asp:Label ID="lblName2" runat="server" ForeColor="#663300" Text="Indlu YamaGwebu Ocean Tours"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblLocation2" runat="server" ForeColor="#663300" Text="Hout Bay Harbor, Victoria Road, Hout Bay"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescr2" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="Take a 45-minute boat ride from Hout Bay Harbor to Seal Island. See 1000+ Cape fur seals, dolphins, and seabirds up close. Breathtaking Atlantic Ocean views with the mountains behind you."></asp:Label>
                        <br />
                        <asp:Label ID="lblPrice2" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="R250 per adult | R150 per child (3-12) | R700 Family of 4
Includes: Life jacket + guided commentary. Duration: 45 mins. Weather dependent"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable2" runat="server" ForeColor="#663300" Text="Available"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnView2" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                    </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image8" runat="server" Height="366px" ImageUrl="~/Images/Aqua.jpg" style="text-align: center" Width="477px" />
                        <br />
                        <asp:Label ID="lblName3" runat="server" ForeColor="#663300" Text="Izinga Lobwandle Aquarium"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblLocation3" runat="server" ForeColor="#663300" Text="Hout Bay Harbor, Victoria Road, Hout Bay"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescr3" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="Rooted in African ocean heritage. Journey through 2 oceans and meet Cape Town’s incredible sea creatures. Learn, explore, and protect our marine world."></asp:Label>
                        <br />
                        <asp:Label ID="lblPrice3" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="R300 per adult | R180 per child | R200 Student/Senior
Includes: Aquarium + IMAX 3D shows. Free entry for kids under 3"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable3" runat="server" ForeColor="#663300" Text="Available"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnView3" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="Image9" runat="server" Height="355px" ImageUrl="~/Images/download.jfif" style="text-align: center" Width="435px" />
                        <br />
                        <asp:Label ID="lblName4" runat="server" ForeColor="#663300" Text="Uhambo Cape Union Mart"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblLocation4" runat="server" ForeColor="#663300" Text="Canal Walk Shopping Centre, Century City"></asp:Label>
                        <br />
                        <asp:Label ID="lblDescr4" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="Gear up for your African journey. From Table Mountain hikes to Kruger safaris, we have quality outdoor equipment trusted by South Africans for 90 years."></asp:Label>
                        <br />
                        <asp:Label ID="lblPrice4" runat="server" BackColor="#FFFFCC" ForeColor="#663300" Text="R1499 Adventure Pack | R2499 Premium Safari Pack"></asp:Label>
                        <br />
                        <asp:Label ID="lblAvailable4" runat="server" ForeColor="#663300" Text="Available"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnView4" runat="server" BackColor="#663300" BorderColor="#FFFFCC" Font-Overline="False" Font-Size="Medium" ForeColor="White" Text="View Details" />
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style15" colspan="3" >
                        <asp:LinkButton ID="LnkReadMore" runat="server" OnClick="LnkReadMore_Click">Show More&gt;</asp:LinkButton>
                        </td>
                </tr>
                <tr>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image10" runat="server" Height="366px" ImageUrl="~/Images/WhatsApp Image 2026-08-25 at 18.52.45.jpeg" style="text-align: center" Width="455px" />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image11" runat="server" Height="378px" ImageUrl="~/Images/South Africa.jfif" style="text-align: center" Width="465px" />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image12" runat="server" Height="366px" ImageUrl="~/Images/WhatsApp Image 2026-08-25 at 18.52.44.jpeg" style="text-align: center" Width="455px" />
                        </td>
                </tr>
                </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
