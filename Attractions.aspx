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
        table 
        {
            width: 100%;
            table-layout: fixed;
            border-collapse: separate;
            border-spacing: 10px;
        }

        td 
        {
            box-sizing: border-box;
            padding: 15px;
        }

        td img 
        {
            max-width: 100%;
            height: auto;
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
                        <img class="auto-style14" src="Images/Profile.PNG" /></td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="3">
                        <asp:Label ID="lblTitle" runat="server" style="text-align: center; font-weight: 700; font-size: xx-large; color: #FFFFFF;" Text="ATTRACTIONS" Width="359px" Font-Names="Georgia" Height="42px" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="3">
                        <asp:Label ID="lblTitle0" runat="server" style="text-align: center; font-style: italic; color: #663300;" Text="Explore Our Amazing Attractions" Width="320px" Font-Names="Georgia" Height="42px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <style>
                        .auto-style8 {
                            text-align: center;
                            background-color: #6B4226;
                            border: thin solid #663300;
                            border-radius: 20px;
                            overflow: hidden;
                        }

                        .auto-style9 {
                            height: 26px;
                            text-align: center;
                        }

                        .auto-style1 {
                            background-color: #6B4226;
                            text-align: center;
                            vertical-align: top;
                            border: thin solid #663300;
                            border-radius: 20px;
                            overflow: hidden;
                            padding: 15px;
                        }

                        .auto-style11 {
                            background-color: #6B4226;
                            text-align: center;
                            vertical-align: top;
                            border: thin solid #663300;
                            border-radius: 20px;
                            overflow: hidden;
                            padding: 15px;
                        }

                        .auto-style12 {
                            background-color: #6B4226;
                            text-align: center;
                            vertical-align: top;
                            border: thin solid #663300;
                            border-radius: 20px;
                            overflow: hidden;
                            padding: 15px;
                        }

                        .auto-style13 {
                            background-color: #6B4226;
                            text-align: center;
                            vertical-align: top;
                            border: thin solid #663300;
                            border-radius: 20px;
                            overflow: hidden;
                            padding: 15px;
                        }

                        .auto-style14 {
                            width: 1501px;
                            height: 266px;
                            float: left;
                        }

                        .auto-style11 {
                            background-color: #6B4226;
                        }
                        .auto-style11 {
                            background-color: #6B4226;
                        }
                        .newStyle3 {
                            background-color: #6B4226;
                        }
                    </style>
                    
                    <td class="auto-style11" >
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="386px" ImageUrl="~/Images/TableMountain.PNG" style="text-align: center" Width="483px" />
                        <br />
                        <asp:Label ID="lblName1" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation1" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable1" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice1" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating1" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="4" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                    </td>
                    <td class="auto-style12">
                        <br />
                        <asp:Image ID="Image5" runat="server" Height="381px" ImageUrl="~/Images/Villas.PNG" style="text-align: center" Width="466px" />
                        <br />
                        <asp:Label ID="lblName2" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation2" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable2" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice2" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating2" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails0" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="5" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <br />
                        <asp:Image ID="Image6" runat="server" Height="359px" ImageUrl="~/Images/Welfare.PNG" style="text-align: center; margin-bottom: 0px;" Width="433px" />
                        <br />
                        <br />
                        <asp:Label ID="lblName3" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation3" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable3" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice3" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating3" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails1" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="6" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style30" colspan="3" >
                        &nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style13" style="border-color: #663300; border-spacing: 500px" >
                        <asp:Image ID="Image7" runat="server" Height="380px" ImageUrl="~/Images/BoatCuise.PNG" style="text-align: center" Width="488px" />
                        <br />
                        <asp:Label ID="lblName4" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation4" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable4" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice4" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating4" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails2" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="7" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">
                        <asp:Image ID="Image8" runat="server" Height="366px" ImageUrl="~/Images/Aqua.jpg" style="text-align: center" Width="477px" />
                        <br />
                        <asp:Label ID="lblName5" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation5" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable5" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice5" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating5" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails3" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="8" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="Image9" runat="server" Height="369px" ImageUrl="~/Images/Zoo.PNG" style="text-align: center" Width="439px" />
                        <br />
                        <asp:Label ID="lblName6" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation6" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable6" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice6" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating6" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails4" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="9" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        <br />
                        
                        <br />
                        <br />
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style90" colspan="3" >
                        &nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image10" runat="server" Height="366px" ImageUrl="~/Images/Hikng.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName7" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation7" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable7" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice7" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating7" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails5" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="10" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image11" runat="server" Height="380px" ImageUrl="~/Images/Volleball.PNG" style="text-align: center; margin-bottom: 0px;" Width="437px" />
                        <br />
                        <asp:Label ID="lblName8" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation8" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable8" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice8" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating8" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails6" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="11" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image12" runat="server" Height="366px" ImageUrl="~/Images/Cycling.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName9" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation9" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable9" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice9" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating9" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails7" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="12" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                </tr>
                <tr>
                    
                    <td class="auto-style9" colspan="3" >
                        <asp:LinkButton ID="LnkReadMore" runat="server" OnClientClick="return toggleMoreAttractions();" Font-Underline="False" ForeColor="#663300">Show More</asp:LinkButton>
                        </td>

                    
                </tr>
                                <tr id="trMoreAttractions1" runat="server" style="display:none;">
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image13" runat="server" Height="366px" ImageUrl="~/Images/Meuseum.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName10" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation10" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable10" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice10" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating10" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails8" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="13" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image14" runat="server" Height="366px" ImageUrl="~/Images/RobbenIslad.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName11" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation11" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable11" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice11" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating11" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails9" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="14" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image15" runat="server" Height="366px" ImageUrl="~/Images/wineFarm.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName12" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation12" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable12" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice12" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating12" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails10" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="15" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                </tr>
                
                                <tr id="trMoreAttractions2" runat="server" style="display:none;">
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image16" runat="server" Height="366px" ImageUrl="~/Images/Bikes.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName13" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation13" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable13" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice13" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating13" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails11" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="16" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image17" runat="server" Height="366px" ImageUrl="~/Images/penguins.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName14" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation14" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable14" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice14" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating14" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails12" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="17" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image18" runat="server" Height="366px" ImageUrl="~/Images/SunsetSail.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName15" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation15" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable15" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice15" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating15" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails13" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="18" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        </td>
                </tr>
                
                                <tr id="trMoreAttractions3" runat="server" style="display:none;">
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image19" runat="server" Height="366px" ImageUrl="~/Images/Airbaloon.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName16" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation16" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable16" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice16" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating16" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails14" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="19" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image20" runat="server" Height="366px" ImageUrl="~/Images/CoatalCatamaranCruise.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName17" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation17" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable17" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice17" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating17" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails15" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="20" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image21" runat="server" Height="366px" ImageUrl="~/Images/Concerts.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName18" runat="server" ForeColor="#FFFFFF" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation18" runat="server" ForeColor="#FFFFFF" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable18" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice18" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating18" runat="server" ForeColor="#FFFFFF" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails16" runat="server" BackColor="#FFFFFF" ForeColor="White" Height="31px" Text="View Details" Width="129px" CommandArgument="21" OnClick="btnViewDetails_Click" style="border-radius:20px;"/>
                        </td>
                </tr>
                
                </table>
        </div>
        <p>
            &nbsp;</p>

    </form>
</body>

        <script type="text/javascript">
            function toggleMoreAttractions() {

                var row1 = document.getElementById('<%= trMoreAttractions1.ClientID %>');
        var row2 = document.getElementById('<%= trMoreAttractions2.ClientID %>');
        var row3 = document.getElementById('<%= trMoreAttractions3.ClientID %>');

                if (row1.style.display === 'none') {
                    row1.style.display = '';
                    row2.style.display = '';
                    row3.style.display = '';
                }
                else {
                    row1.style.display = 'none';
                    row2.style.display = 'none';
                    row3.style.display = 'none';
                }

                return false;
            }
        </script>

</html>