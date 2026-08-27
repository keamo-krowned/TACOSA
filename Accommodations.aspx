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
        .links{
            color: white;
            background-color: darkolivegreen;
            margin: 30px 0px 30px 0px;
            transition: outline 0.3s ease-in-out;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            padding: 8px 16px 8px 16px;
            border-radius:15px;
        }
        .auto-style20 {
            width: 461px;
            text-align: center;
            height: 38px;
        }

        .links:hover{
            cursor:pointer;
            outline: 2px solid darkolivegreen;
            outline-offset: 2px
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
                "> </asp:Label>

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
"> ACCOMMODATIONS</asp:HyperLink>

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


        <table style="width:100%; margin-top:50px">
            <tr>
            <td><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Text="Hotels For You"></asp:Label>
            
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
                        <asp:Image ID="imgHotel1" runat="server" Height="184px" Width="343px" />
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
                    <td class="auto-style20">
                        <asp:HyperLink ID="hplHotelView1" runat="server" CssClass ="links" Font-Bold="False">View Details</asp:HyperLink>
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
                        <asp:Label ID="lblHotelName2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelLo2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblHotelPrice2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:HyperLink ID="hplHotelView2" runat="server" CssClass ="links">View Details</asp:HyperLink>
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
                 <asp:Label ID="lblHotelName3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                 <br />
                 <asp:Label ID="lblHotelLo3" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="lblHotelPrice3" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style20">
                 <asp:HyperLink ID="hplHotelView3" runat="server" CssClass ="links">View Details</asp:HyperLink>
             </td>
         </tr>
     </table>

        </div>
            <div>
    <table style="width: 28%; height: 228px; flex: 1; "class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="imgHotel4" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblHotelName4" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblHotelLo4" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="lblHotelPrice4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:HyperLink ID="hplHotelView4" runat="server" CssClass ="links">View Details</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
            <div>
    <table style="width: 28%; height: 228px; flex: 1; "class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="imgHotel5" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblHotelName5" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblHotelLo5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="lblHotelPrice5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:HyperLink ID="hplHotelView5" runat="server" CssClass ="links">View Details</asp:HyperLink>
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
                        <asp:Label ID="lblGHName1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHLo1" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHPrice1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:HyperLink ID="hplGHView1" runat="server" CssClass ="links">View Details</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
        
       <div>
            <table style="width: 28%; height: 228px; flex: 1;" class ="card">
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imgGH2" runat="server" Height="184px" Width="343px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblGHName2" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHLo2" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="lblGHPrice2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <asp:HyperLink ID="hplGHView2" runat="server" CssClass ="links">View Details</asp:HyperLink>
                    </td>
                </tr>
            </table>

       </div>

       <div>
     <table style="width: 28%; height: 228px; flex: 1;" class ="card">
         <tr>
             <td class="auto-style18">
                 <asp:Image ID="imgGH3" runat="server" Height="184px" Width="343px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style18">
                 <asp:Label ID="lblGHName3" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                 <br />
                 <asp:Label ID="lblGHLo3" runat="server" Text="Label"></asp:Label>
                 <br />
                 <asp:Label ID="lblGHPrice3" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td class="auto-style20">
                 <asp:HyperLink ID="hplGHView3" runat="server" CssClass ="links">View Details</asp:HyperLink>
             </td>
         </tr>
     </table>

</div>
                    <div>
    <table style="width: 28%; height: 228px; flex: 1;" class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="imgGH4" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblGHName4" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblGHLo4" runat="server" Text="lblGH"></asp:Label>
                <br />
                <asp:Label ID="lblGHPrice4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:HyperLink ID="hplGHView4" runat="server" CssClass ="links">View Details</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
                    <div>
    <table style="width: 28%; height: 228px; flex: 1;" class ="card">
        <tr>
            <td class="auto-style18">
                <asp:Image ID="imgGH5" runat="server" Height="184px" Width="343px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblGHName5" runat="server" Text="Label" Font-Bold="True"></asp:Label>
                <br />
                <asp:Label ID="lblGHLo5" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="lblGHPrice5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                <asp:HyperLink ID="hplGHView5" runat="server" CssClass ="links">View Details</asp:HyperLink>
            </td>
        </tr>
    </table>
</div>
        </section>

       
    </form>
</body>
</html>
