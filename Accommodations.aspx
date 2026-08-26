<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accommodations.aspx.cs" Inherits="TACOSA.Accommodations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style15 {
            width: 21%;
        }
        .auto-style16 {
            width: 188px;
        }
        .auto-style17 {
            width: 226px;
        }
        body{
            background-color:#FFF3A3;
        }
        .auto-style18 {
            width: 461px;
            text-align: center;
        }
        .scrollable{
            overflow-x: auto;
            gap: 10px;
        }
        .auto-style19 {
            height: 31px;
        }
        .card{
            background-color: white;
            border: 1px solid #c9c5bc;
            border-radius: 15px;

        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
       

       <table style="width:100%; border-collapse:collapse; background-color:#FFF3A3; margin-bottom:20px;">

    <tr>
        <td colspan="5" style="height:20px;"></td>
    </tr>

    <tr>
        <td colspan="5" style="padding-left:6%; padding-bottom:18px;">

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

    <tr>

        <td class="auto-style15"></td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        " class="auto-style16">

            <asp:HyperLink ID="hlkRegister" runat="server"
                style="
                font-family:Georgia, serif;
                font-size:18px;
                font-weight:bold;
                color:#6B4226;
                letter-spacing:1px;
            ">REGISTER</asp:HyperLink>

        </td>

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
">
                
                
                ACCOMMODATIONS</asp:HyperLink>

        </td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        ">

            <asp:HyperLink ID="hlkAttractions" runat="server"
                style="
                    font-family:Georgia, serif;
                    font-size:18px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
                ">ATTRACTIONS</asp:HyperLink>

        </td>

        <td style="
            text-align:center;
            padding:0 25px;
            white-space:nowrap;
        ">

            <asp:HyperLink ID="hlkBookings" runat="server"
                style="
                    font-family:Georgia, serif;
                    font-size:18px;
                    font-weight:bold;
                    color:#6B4226;
                    letter-spacing:1px;
">BOOKINGS</asp:HyperLink>

        </td>

    </tr>

</table>


        <table style="width:100%; margin-top:50px;">
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Text="Hotels For You"></asp:Label>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
        </table>

        <section style ="display:flex; flex-direction: row; align-items: flex-start;" class= "scrollable";>

        <div>
            <table style="width: 28%; height: 228px; flex: 1; "class ="card">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imgHotel1" runat="server" Height="184px" Width="343px" ImageUrl="~/Images/ZestBoutique.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblHotelName1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelLo1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelPrice1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        
       <div>
            <table style="width: 28%; height: 228px; flex: 1;"class ="card">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imgHotel2" runat="server" Height="184px" Width="343px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblHotelName2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelLo2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelPrice2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:HyperLink ID="HyperLink2" runat="server">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>

       </div>

       <div>
     <table style="width: 28%; height: 228px; flex: 1;" class ="card">
         <tr>
             <td class="auto-style18">
                 <asp:Image ID="imgHotel3" runat="server" Height="184px" Width="343px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style18">
                 <asp:Label ID="lblHotelName3" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="lblHotelLocation3" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="lblHotelPrice" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style18">
                 <asp:HyperLink ID="HyperLink3" runat="server">HyperLink</asp:HyperLink>
             </td>
         </tr>
     </table>

        </div>
            <div>
    <table style="width: 28%; height: 228px; flex: 1; "class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="Image1" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:HyperLink ID="HyperLink7" runat="server">HyperLink</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
            <div>
    <table style="width: 28%; height: 228px; flex: 1; "class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="Image2" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:HyperLink ID="HyperLink8" runat="server">HyperLink</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>

        </section>
        
         <table style="width:100%; margin-top: 50px;">
     <tr>
         <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="False" Text="Guest Houses For You"></asp:Label>
         </td>
         <td class="auto-style19"></td>
         <td class="auto-style19"></td>
     </tr>
 </table>
        <section style ="display:flex; flex-direction: row; align-items: flex-start;" class= "scrollable";>
                <div>
            <table style="width: 28%; height: 228px; flex: 1;" class ="card">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imgGH1" runat="server" Height="184px" Width="343px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblGHName1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHLocation1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHPrice1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:HyperLink ID="HyperLink4" runat="server">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        
       <div>
            <table style="width: 28%; height: 228px; flex: 1;" class ="card">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="Image5" runat="server" Height="184px" Width="343px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblGHName2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHLocation2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHPrice2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:HyperLink ID="HyperLink5" runat="server">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>

       </div>

       <div>
     <table style="width: 28%; height: 228px; flex: 1;" class ="card">
         <tr>
             <td class="auto-style18">
                 <asp:Image ID="Image6" runat="server" Height="184px" Width="343px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style18">
                 <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style18">
                 <asp:HyperLink ID="HyperLink6" runat="server">HyperLink</asp:HyperLink>
             </td>
         </tr>
     </table>

</div>
                    <div>
    <table style="width: 28%; height: 228px; flex: 1;" class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="Image3" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:HyperLink ID="HyperLink9" runat="server">HyperLink</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
                    <div>
    <table style="width: 28%; height: 228px; flex: 1;" class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="Image4" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:HyperLink ID="HyperLink10" runat="server">HyperLink</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
        </section>

       
    </form>
</body>
</html>
