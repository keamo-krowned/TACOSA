
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
        .auto-style26 {
            font-size: 16px;
        }
        .auto-style29 {
            text-align: center;
            width: 575px;
        }
                

   

    .attraction-card {
        background-color: #6B4226;
        width: 300px;
        height: 330px;
        padding: 15px;
        margin: auto;
        box-sizing: border-box;
        text-align: center;
        transition: transform 0.3s ease;
    }

    .attraction-card:hover {
        transform: translateY(-6px);
    }

    .attraction-image {
        width: 270px;
        height: 220px;
        object-fit: cover;
        display: block;
        margin: 0 auto;
    }

    .attraction-title {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 70px;
        color: white;
        font-family: Georgia, serif;
        font-size: 16pt;
        font-weight: bold;
        line-height: 1.2;
        text-align: center;
    }

        .auto-style31 {
            font-size: 20px;
        }

        .auto-style32 {
            font-size: 14px;
        }

        .auto-style33 {
            width: 40%;
        }
        .auto-style34 {
            width: 207px;
            text-align: center;
        }

    </style>





    


    <title></title>
</head>
<body style="background-color: #FFF3A3" id="lblBookNow">
    <form id="form1" runat="server">
    





        <table style="
    width:100%;
    border-collapse:collapse;
    background-color:#FFF3A3;
    padding:0;
    margin:0;
">

    <tr>

        <!-- TACOSA -->
        <td style="
            width:27%;
            padding-left:2%;
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
                    cursor:pointer;
                    white-space:nowrap;
                "
                onclick="window.location.href='homepage.aspx';">
            </asp:Label>

        </td>


        <!-- ACCOMMODATIONS -->
        <td style="
            width:19%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAccommodation" 
                runat="server" 
                NavigateUrl="~/Accommodations.aspx"
                Text="ACCOMMODATIONS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                ">
            </asp:HyperLink>

        </td>


        <!-- ATTRACTIONS -->
        <td style="
            width:18%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkAttractions" 
                runat="server" 
                NavigateUrl="~/Attractions.aspx"
                Text="ATTRACTIONS"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                ">
            </asp:HyperLink>

        </td>


        <!-- MY PROFILE -->
        <td style="
            width:14%;
            text-align:center;
            vertical-align:middle;
            white-space:nowrap;
        ">

            <asp:HyperLink 
                ID="lnkMyProfile" 
                runat="server" 
                NavigateUrl="~/MyProfile.aspx"
                Text="MY PROFILE"
                style="
                    font-family:Georgia, serif; 
                    font-size:17px; 
                    font-weight:bold; 
                    color:#6B4226; 
                    letter-spacing:1px; 
                    white-space:nowrap;
                    text-decoration:none;
                    cursor:pointer;
                ">
            </asp:HyperLink>

        </td>


        <!-- BOOKINGS -->
        <td style="
            width:22%;
            text-align:center;
            vertical-align:middle;
            padding-right:2%;
            white-space:nowrap;
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
                    cursor:pointer;
                "
                onclick="window.location.href='Bookings.aspx';">
            </asp:Label>

        </td>

    </tr>

</table>


        <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3; margin:0; padding:0;">
    
    <tr>
        <td colspan="3" style="padding:0; margin:0;">

           
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


              

                <path
                    filter="url(#brushTexture)"
                    d="M20 58 C70 51 120 64 175 55"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="9"
                    stroke-linecap="round"
                />


                

                <path
                    filter="url(#brushTexture)"
                    d="M270 59 C325 50 375 65 430 55"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="8"
                    stroke-linecap="round"
                />



                <path
                    filter="url(#brushTexture)"
                    d="M550 58 C605 49 655 65 710 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="10"
                    stroke-linecap="round"
                />


               

                <path
                    filter="url(#brushTexture)"
                    d="M850 58 C905 49 955 65 1010 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="8"
                    stroke-linecap="round"
                />


                

                <path
                    filter="url(#brushTexture)"
                    d="M1150 58 C1205 49 1255 65 1310 54"
                    fill="none"
                    stroke="#FFF3A3"
                    stroke-width="10"
                    stroke-linecap="round"
                />


               

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
                <td>&nbsp;</td>
                <td class="auto-style20" colspan="3">

            <asp:Label
                ID="lblFindAcc"
                runat="server"
                Text="FIND ACCOMMODATION"
                style="
                    font-family:Georgia, serif;
                    font-size:26pt;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                "></asp:Label>

                    <br />
                    <br />
                    <br />

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style23">
                    <asp:Image ID="ImgBeach" runat="server" Height="300px" ImageUrl="~/Images/CEACH HOUSE.jpg" Width="300px" />
                </td>
                <td class="auto-style29">
                    <asp:Image ID="ImgHotels" runat="server" CssClass="auto-style21" Height="300px" ImageUrl="~/Images/HOTEL.jpg" Width="300px" />
                </td>
                <td>
                    <asp:Image ID="ImgGuestH" runat="server" Height="300px" ImageUrl="~/Images/gUEST HOUSE.jpg" Width="300px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">

            <asp:Label
                ID="lblBeach"
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
                ID="lblHotels"
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
                ID="lblGuestH"
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

    <td class="auto-style22">

        <br />
                </td>

    <td class="auto-style29">

        <br />
                </td>

    <td class="auto-style20">

        &nbsp;</td>
</tr>


            </table>





      





<table style="width:100%; border-spacing:40px 50px;">

  
    <tr>

        <td style="text-align:center; vertical-align:top;" colspan="3">
    <strong>
                    <asp:Label ID="lblExploreAttractions" runat="server" CssClass="auto-style19" Font-Names="Georgia" ForeColor="#6B4226" Text="EXPLORE ATTRACTIONS"></asp:Label>
                    </strong>
        </td>


    </tr>


    <tr>

       
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgTableMountain"
                    runat="server"
                    ImageUrl="~/Images/table mount.jpg"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblTableMountain"
                    runat="server"
                    Text="TABLE MOUNTAIN"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>


        
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgBouldersBeach"
                    runat="server"
                    ImageUrl="~/Images/BOULDERS BEACH.jpg"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblBouldersBeach"
                    runat="server"
                    Text="BOULDERS BEACH"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>


       
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgWine"
                    runat="server"
                    ImageUrl="~/Images/wine.jpg"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblWine"
                    runat="server"
                    Text="FRANSCHHOEK WINE TASTING"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>

    </tr>
    <tr>

     
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgWaterfront"
                    runat="server"
                    ImageUrl="~/Images/WATERFRONT.jpg"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblWaterfront"
                    runat="server"
                    Text="V&A WATERFRONT"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>


       
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgBoKaap"
                    runat="server"
                    ImageUrl="~/Images/boklaap.jpg"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblBoKaap"
                    runat="server"
                    Text="BO-KAAP"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>


       
        <td style="width:33%; text-align:center; vertical-align:top;">
            <div class="attraction-card">

                <asp:Image
                    ID="imgRobbenIsland"
                    runat="server"
                    ImageUrl="~/Images/roebn .png"
                    CssClass="attraction-image" />

                <asp:Label
                    ID="lblRobbenIsland"
                    runat="server"
                    Text="ROBBEN ISLAND"
                    CssClass="attraction-title">
                </asp:Label>

            </div>
        </td>

    </tr>

</table>



                <br />



                <hr style="
    width:70%;
    border:0;
    border-top:2px solid #6B4226;
    margin:60px auto;
" />

       

<table style="
    width:100%;
    border-collapse:collapse;
    background-color:#FFF3A3;
    margin-top:70px;
    margin-bottom:70px;
">

   
    <tr>
        <td style="
            text-align:center;
            padding-bottom:40px;
        ">

            <asp:Label
                ID="lblWhyTacosa"
                runat="server"
                Text="WHY TRAVEL WITH TACOSA?"
                style="
                    font-family:Georgia, serif;
                    font-size:26pt;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">
            </asp:Label>

            <br />
            <br />
            <br />
            <br />
            <br />

            <table style="width:100%;">
                <tr>
                    <td>

            <asp:Label
                ID="lblHotels2"
                runat="server"
                Text="DISCOVER "
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style31"></asp:Label>

                    </td>
                    <td>

            <asp:Label
                ID="lblHotels0"
                runat="server"
                Text="STAY"
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style31"></asp:Label>

                    </td>
                    <td>

            <asp:Label
                ID="lblHotels3"
                runat="server"
                Text="EXPERIENCE "
                style="
                    font-family:Georgia, serif;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style31"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>

            <asp:Label
                ID="lblHotels5"
                runat="server"
                Text="Discover Cape Town's most beautiful attractions, landmarks and hidden gems. "
                style="
                    font-family:Georgia, serif;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style32"></asp:Label>

                    </td>
                    <td>

            <asp:Label
                ID="lblHotels1"
                runat="server"
                Text="Find accommodation that suits your trip, 
                from beach houses to hotels and guest houses. "
                style="
                    font-family:Georgia, serif;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style32"></asp:Label>

                    </td>
                    <td>

            <asp:Label
                ID="lblHotels4"
                runat="server"
                Text="Experience unforgettable moments and make the most of your South African adventure. "
                style="
                    font-family:Georgia, serif;
                    color:#6B4226;
                    letter-spacing:1px;
                " CssClass="auto-style32"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </td>
    </tr>

    </table>
      
        <hr style="
    width:70%;
    border:0;
    border-top:2px solid #6B4226;
    margin:60px auto;
" />




     
        

<div style="
    background-color:#6B4226;
    color:white;
    width:100%;
    margin-top:40px;
    padding:45px 20px 25px 20px;
    text-align:center;
    font-family:Georgia, serif;
    box-sizing:border-box;
">

   

    <div style="
        font-size:28px;
        font-weight:bold;
        letter-spacing:3px;
        margin-bottom:10px;
    ">
        TACOSA
    </div>


   

    <div style="
        font-size:13px;
        letter-spacing:3px;
        margin-bottom:35px;
    ">
        EXPLORE • EXPERIENCE • ENJOY
    </div>


  

    <div style="
        font-size:18px;
        font-weight:bold;
        letter-spacing:2px;
        margin-bottom:18px;
    ">
        CONTACT US
    </div>


    <div style="
        font-size:14px;
        line-height:2;
        letter-spacing:1px;
    ">
        Email: tacosa@gmail.com
        <br />

        Cape Town, South Africa
    </div>


   

    <div style="
        margin-top:30px;
        font-size:14px;
        line-height:1.7;
        max-width:600px;
        margin-left:auto;
        margin-right:auto;
    ">
        Discover Cape Town's most memorable attractions,
        accommodation and experiences with TACOSA.
    </div>


 

    <div style="
        width:70%;
        height:1px;
        background-color:white;
        margin:30px auto 20px auto;
        opacity:0.4;
    ">
    </div>


   

    <div style="
        font-size:12px;
        letter-spacing:1px;
    ">
        © 2026 TACOSA. ALL RIGHTS RESERVED.
    </div>

</div>




    </form>
    </body>
</html>





