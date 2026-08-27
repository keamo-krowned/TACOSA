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
                        <img class="auto-style14" src="Images/Profile.PNG" /></td>
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
                            border-radius: 20px;
                            overflow: hidden;  
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
                        .auto-style8 {
                            background-color: #FFFFFF;
                        }
                        .auto-style8 {
                            border-color: #663300;
                            border-width: 1px;
                            border-top-style: 1;
                            border-right-style: 1;
                            border-bottom-style: 1;
                            border-left-style: 1;
                        }
                        .auto-style8 {
                            border-spacing: 4px;
                            border: thin solid #663300;
                        }
                        .newStyle5 {
                            border-style: inherit;
                            border-width: thin;
                            border-color: #663300;
                        }
                    </style>
                    
                    <td class="auto-style11" >
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="386px" ImageUrl="~/Images/TableMountain.PNG" style="text-align: center" Width="483px" />
                        <br />
                        <asp:Label ID="lblName1" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation1" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr1" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable1" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice1" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating1" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cmpg-TacosaProjectConnectionString %>" SelectCommand="SELECT [AttractionID], [AttractionName], [AttractionDescription], [AttractionLocation], [AttractionAvailableYN], [PricePerDay], [AttractionCellNumber], [AttractionEmail], [Rating] FROM [Attractions]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style12">
                        <br />
                        <asp:Image ID="Image5" runat="server" Height="381px" ImageUrl="~/Images/Villas.PNG" style="text-align: center" Width="466px" />
                        <br />
                        <asp:Label ID="lblName2" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation2" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr2" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable2" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice2" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating2" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails0" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <br />
                        <asp:Image ID="Image6" runat="server" Height="359px" ImageUrl="~/Images/Welfare.PNG" style="text-align: center; margin-bottom: 0px;" Width="433px" />
                        <br />
                        <br />
                        <asp:Label ID="lblName3" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation3" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr3" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable3" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice3" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating3" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails1" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
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
                        <asp:Label ID="lblName4" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation4" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr4" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable4" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice4" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating4" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails2" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
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
                        <asp:Label ID="lblName5" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation5" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr5" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable5" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice5" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating5" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails3" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="Image9" runat="server" Height="369px" ImageUrl="~/Images/Zoo.PNG" style="text-align: center" Width="439px" />
                        <br />
                        <asp:Label ID="lblName6" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation6" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr6" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable6" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice6" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating6" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails4" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style15" colspan="3" >
                        &nbsp;</td>
                </tr>
                <tr>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image10" runat="server" Height="366px" ImageUrl="~/Images/Hikng.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName7" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation7" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr7" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable7" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice7" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating7" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails5" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image11" runat="server" Height="380px" ImageUrl="~/Images/Volleball.PNG" style="text-align: center; margin-bottom: 0px;" Width="437px" />
                        <br />
                        <asp:Label ID="lblName8" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation8" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr8" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable8" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice8" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating8" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails6" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image12" runat="server" Height="366px" ImageUrl="~/Images/Cycling.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName9" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation9" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr9" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable9" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice9" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating9" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails7" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                </tr>
                <tr>
                    
                    <td class="auto-style9" colspan="3" >
                        <asp:LinkButton ID="LnkReadMore" runat="server" OnClientClick="return toggleMoreAttractions();">Show More</asp:LinkButton>
                        </td>

                    
                </tr>
                                <tr id="trMoreAttractions" runat="server" style="display:none;">
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image13" runat="server" Height="366px" ImageUrl="~/Images/Meuseum.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName10" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation10" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr10" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable10" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice10" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating10" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails8" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image14" runat="server" Height="366px" ImageUrl="~/Images/RobbenIslad.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName11" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation11" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr11" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable11" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice11" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating11" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails9" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                    
                    <td class="auto-style8" >
                        <asp:Image ID="Image15" runat="server" Height="366px" ImageUrl="~/Images/wineFarm.PNG" style="text-align: center" Width="455px" />
                        <br />
                        <asp:Label ID="lblName12" runat="server" ForeColor="#663300" style="font-size: large; font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblLocation12" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblDescr12" runat="server" ForeColor="#663300" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblAvailable12" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblPrice12" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblRating12" runat="server" ForeColor="#663300" style="font-weight: 700" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="btnViewDetails10" runat="server" BackColor="#663300" ForeColor="White" Height="31px" Text="View Details" Width="129px" />
                        <br />
                        </td>
                </tr>
                
                </table>
        </div>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
        <script type="text/javascript">
            function toggleMoreAttractions() {
                var row = document.getElementById('<%= trMoreAttractions.ClientID %>');
                if (row.style.display === 'none') {
                    row.style.display = '';
                } else {
                    row.style.display = 'none';
                }
                return false;
            }
        </script>
