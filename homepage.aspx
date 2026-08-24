
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="TACOSA.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #FFF3A3">
<head runat="server">

    <style>
    .book-now-btn {
    display: inline-block;
    padding: 12px 32px;
    border: 2px solid #6B4226;
    border-radius: 30px;
    color: white;
    text-decoration: none;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 14px;
    font-weight: bold;
    background-color: #6B4226;
    transition: all 0.3s ease;
}

.book-now-btn:hover {
    background-color: #4A2C18;
    color: white;
}
        .auto-style15 {
            width: 21%;
        }
        .auto-style16 {
            width: 188px;
            text-align: right;
        }
        .auto-style17 {
            width: 226px;
            text-align: right;
        }
        .auto-style18 {
            width: 1039px;
        }
        .auto-style19 {
            font-size: 26pt;
        }
        .auto-style20 {
            text-align: center;
        }
        .auto-style21 {
            margin-left: 0px;
        }
        .auto-style22 {
            text-align: center;
            width: 394px;
        }
        .auto-style23 {
            width: 394px;
        }
        .auto-style24 {
            width: 1039px;
            height: 62px;
        }
        .auto-style25 {
            height: 62px;
        }
        .auto-style26 {
            font-size: 16px;
        }
        .auto-style27 {
            text-align: left;
        }
        .auto-style28 {
            text-align: right;
        }
        .auto-style29 {
            text-align: center;
            width: 575px;
        }
        .auto-style31 {
            width: 1039px;
            text-align: center;
        }
    </style>


    <title></title>
</head>
<body style="background-color: #FFF3A3" id="lblBookNow">
    <form id="form1" runat="server">
       

       <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3;">

    <!-- TOP SPACE -->
    <tr>
        <td colspan="5" style="height:20px;"></td>
    </tr>

    <!-- TACOSA -->
    <tr>
        <td colspan="5" style="padding-left:6%; padding-bottom:18px;" class="auto-style27">

            <asp:Label
                ID="lblTacosa"
                runat="server"
                Text="TACOSA"
                style="
                    font-family:Georgia, serif;
                    font-size:22px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">
            </asp:Label>

        </td>
    </tr>

    <!-- NAVIGATION -->
    <tr>

        <!-- LEFT EMPTY SPACE -->
        <td class="auto-style15">&nbsp;</td>

        <!-- REGISTER -->
        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style16">

            <asp:Label
                ID="lblRegister"
                runat="server"
                Text="REGISTER"
                style="
                    font-family:Georgia, serif;
                    font-size:18px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">
            </asp:Label>

        </td>

        <!-- ACCOMMODATIONS -->
        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style17">

            <asp:Label
                ID="lblAccommadations"
                runat="server"
                Text="ACCOMMODATIONS"
                style="
                    font-family:Georgia, serif;
                    font-size:18px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">
            </asp:Label>

        </td>

        <!-- ATTRACTIONS -->
        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style28">

            <asp:Label
                ID="lblAttractions"
                runat="server"
                Text="ATTRACTIONS"
                style="
                    font-family:Georgia, serif;
                    font-size:18px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">
            </asp:Label>

        </td>

        <!-- BOOK NOW -->
        <td style="
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style28">

            <asp:Label
                ID="Label5"
                runat="server"
                Text="BOOKINGS"
                style="
                    display:inline-block;
                    padding:12px 32px;
                    border:2px solid #6B4226;
                    border-radius:30px;
                    color:white;
                    background-color:#6B4226;
                    font-family:Georgia, serif;
                    font-size:14px;
                    font-weight:bold;
                    letter-spacing:2px;
                    white-space:nowrap;
                "></asp:Label>

        </td>

    </tr>

    <!-- BOTTOM SPACE -->
    <tr>
        <td colspan="5" style="height:12px;"></td>
    </tr>

</table>


        <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3; margin:0; padding:0;">
    
    <tr>
        <td colspan="3" style="padding:0; margin:0;">

            <!-- HERO IMAGE WITH SLOGAN -->
<div style="position:relative; width:100%;">

    <asp:Image 
        ID="Image1" 
        runat="server" 
        ImageUrl="~/Images/ai-generated-ai-generative-city-town-urban-cityscape-from-mountain-high-view-background-adventure-vacation-landscape-vbie-graphic-art-photo.jpg"
        style="
            width:100%;
            height:500px;
            object-fit:cover;
            object-position:center;
            display:block;
        " />

    <!-- SLOGAN -->
    <div style="
        position:absolute;
        top:40%;
        left:50%;
        transform:translate(-50%,-50%);
        text-align:center;
        color:white;
        width:80%;
        text-shadow:2px 2px 8px #333;
    ">

        <div style="
            font-family:Georgia,serif;
            font-size:48px;
            font-weight:bold;
            letter-spacing:5px;
        ">
            SEE CAPE TOWN
        </div>

        <div style="
            font-family:Georgia,serif;
            font-size:48px;
            font-weight:bold;
            letter-spacing:5px;
        ">
            DIFFERENTLY
        </div>

        <div style="
            font-family:Georgia,serif;
            font-size:17px;
            letter-spacing:4px;
            margin-top:18px;
        ">
            EXPLORE • EXPERIENCE • ENJOY
        </div>

    </div>

</div>

           

            <!-- RAGGED PAINT EDGE -->
            <svg
                viewBox="0 0 1600 130"
                preserveAspectRatio="none"
                xmlns="http://www.w3.org/2000/svg"
                style="
                    display:block;
                    width:100%;
                    height:100px;
                    margin-top:-60px;
                    position:relative;
                ">

                <defs>

                    <filter id="brushTexture">
                        <feTurbulence
                            type="fractalNoise"
                            baseFrequency="0.025 0.12"
                            numOctaves="3"
                            seed="8"
                            result="noise">
                        </feTurbulence>

                        <feDisplacementMap
                            in="SourceGraphic"
                            in2="noise"
                            scale="14"
                            xChannelSelector="R"
                            yChannelSelector="G">
                        </feDisplacementMap>
                    </filter>

                </defs>


                <!-- MAIN IRREGULAR PAINT AREA -->

                <path
                    filter="url(#brushTexture)"
                    fill="#FFF3A3"
                    d="
                        M0 67

                        C35 55 55 73 88 62
                        C120 51 145 76 180 61
                        C215 47 240 73 275 60
                        C310 47 335 76 370 59
                        C405 44 435 73 470 58
                        C505 44 535 76 570 60
                        C605 45 635 73 670 57
                        C705 42 735 76 770 59
                        C805 44 835 73 870 57
                        C905 42 935 75 970 59
                        C1005 44 1035 73 1070 57
                        C1105 42 1135 76 1170 59
                        C1205 44 1235 74 1270 57
                        C1305 42 1335 75 1370 59
                        C1405 44 1435 74 1470 57
                        C1505 43 1540 73 1570 56
                        C1585 51 1592 57 1600 53

                        L1600 130
                        L0 130
                        Z"
                />


                <!-- TOP DRY BRUSH -->

                <path
                    filter="url(#brushTexture)"
                    d="
                        M0 72
                        C90 60 160 79 250 66
                        C340 53 430 80 520 66
                        C610 52 700 80 790 66
                        C880 52 970 79 1060 65
                        C1150 51 1240 80 1330 65
                        C1420 52 1510 76 1600 62
                    "
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="22"
                    stroke-linecap="round"
                />


                <!-- LOWER DRY BRUSH -->

                <path
                    filter="url(#brushTexture)"
                    d="
                        M0 91
                        C100 80 200 99 300 86
                        C400 73 500 99 600 85
                        C700 72 800 100 900 85
                        C1000 72 1100 99 1200 85
                        C1300 72 1400 98 1500 84
                        C1550 78 1580 85 1600 81
                    "
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="16"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 1 -->

                <path
                    filter="url(#brushTexture)"
                    d="M20 58 C70 51 120 64 175 55"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="9"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 2 -->

                <path
                    filter="url(#brushTexture)"
                    d="M270 59 C325 50 375 65 430 55"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="8"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 3 -->

                <path
                    filter="url(#brushTexture)"
                    d="M550 58 C605 49 655 65 710 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="10"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 4 -->

                <path
                    filter="url(#brushTexture)"
                    d="M850 58 C905 49 955 65 1010 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="8"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 5 -->

                <path
                    filter="url(#brushTexture)"
                    d="M1150 58 C1205 49 1255 65 1310 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="10"
                    stroke-linecap="round"
                />


                <!-- BROKEN BRUSH MARK 6 -->

                <path
                    filter="url(#brushTexture)"
                    d="M1430 57 C1480 49 1530 63 1580 53"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="9"
                    stroke-linecap="round"
                />

            </svg>

        </td>
    </tr>

</table>

        <table style="width:100%;">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Label ID="lblTitle" runat="server" CssClass="auto-style19" Font-Names="Georgia" ForeColor="#6B4226" Text="Discover South Africa with TACOSA"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Label ID="Label6" runat="server" Font-Names="Georgia" ForeColor="#6B4226" Text="From Cape Town's breathtaking landscapes to it's beautiful skies and unforgettable experiences. TACOSA helps you discover,plan and book your perfect South African adventure."></asp:Label>
                </td>
                <td class="auto-style25"></td>
                <td class="auto-style25"></td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>
                    <asp:Label ID="lblTitle1" runat="server" CssClass="auto-style19" Font-Names="Georgia" ForeColor="#6B4226" Text="FIND ACCOMMODATION"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style23">
                    <asp:Image ID="Image5" runat="server" Height="300px" ImageUrl="~/Images/CEACH HOUSE.jpg" Width="300px" />
                </td>
                <td class="auto-style29">
                    <asp:Image ID="Image7" runat="server" CssClass="auto-style21" Height="300px" ImageUrl="~/Images/HOTEL.jpg" Width="300px" />
                </td>
                <td>
                    <asp:Image ID="Image6" runat="server" Height="300px" ImageUrl="~/Images/gUEST HOUSE.jpg" Width="300px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">

            <asp:Label
                ID="lblRegister0"
                runat="server"
                Text="BEACH HOUSES"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style26"></asp:Label>

                </td>
                <td class="auto-style29">

            <asp:Label
                ID="lblRegister1"
                runat="server"
                Text="HOTELS"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style26"></asp:Label>

                </td>
                <td class="auto-style20">

            <asp:Label
                ID="lblRegister2"
                runat="server"
                Text="GUEST HOUSES"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style26"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style20"><strong>
                    <asp:Label ID="lblTitle2" runat="server" CssClass="auto-style19" Font-Names="Georgia" ForeColor="#6B4226" Text="EXPLORE ATTRACTIONS"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </form>
    </body>
</html>
