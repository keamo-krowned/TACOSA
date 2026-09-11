<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttractionBooking.aspx.cs" Inherits="TACOSA.AttractionBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    
    .form-border {
        border: 5px solid #6B4226; 
        border-radius: 30px;       
        max-width: 850px;          
        margin: 40px auto;         
        padding: 40px;             
        background-color: #FFF3A3; 
    }

    /*Keeps form contents centered */
    .form-border form {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }

    .form-border form > div {
        width: 100%;
    }
</style>
</head>
<body style="background-color:#FFF3A3;">
            <p>
                <br />
            </p>
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
                onclick="window.location.href='homepage.aspx';"> </asp:Label>

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
                "> </asp:HyperLink>

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
                "> </asp:HyperLink>

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
                NavigateUrl="~/TouristMaintainForm.aspx"
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
                "> </asp:HyperLink>

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
                ID="Label8"
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
                onclick="window.location.href='Bookings.aspx';"> </asp:Label>

        </td>

    </tr>

</table>
    <link href="StyleSheet1.css" rel="stylesheet" />

     <div class="form-border">
        
        <form id="form1" runat="server">

        <div>
            
             <asp:Label ID="lblName" runat="server"></asp:Label>
             <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" />
        </div>
       
        <p>
            <asp:Label ID="lblCategory" runat="server"></asp:Label>
            <asp:Label ID="Rating" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
      
    <div>

        <asp:Label ID="Label1" runat="server" Font-Names="Georgia,serif" Text="About the Attraction:" Font-Size="X-Large" ForeColor="#6B4226" Font-Bold="True" ></asp:Label>

        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server"></asp:Label>
        <br />
        <br />

    </div>


        <div>









            <br />
            <br />
            <asp:Label ID="Label2" runat="server"  Font-Names="Georgia,serif" ForeColor="#6B4226" Text="Information:" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Location: "></asp:Label>
            <asp:Label ID="lblLocation" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Is it Open:"></asp:Label>
            <asp:Label ID="lblAvailable" runat="server"></asp:Label>
            <br />
            <br />
           
            






        </div>
       <div>

           <br />


       </div>
        <div>

            <asp:Label ID="Label5" runat="server" Font-Names="Georgia,serif" ForeColor="#6B4226" Text="Book your Experience:" Font-Bold="True"></asp:Label>

        </div>
        <div class="attraction-section">

       
        <p>

            <asp:Label ID="Label6" runat="server" Text="Date:"></asp:Label>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the required input before proceeding" ForeColor="Red" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
        </p>
        <div>

            <asp:Label ID="Label7" runat="server" Text="Number of visitors:"></asp:Label>
            <asp:TextBox ID="txtVisitors" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtVisitors" ErrorMessage="Please enter the required input before proceeding." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

        </div>
             </div>
        <div>

            <asp:Button ID="btnBook" runat="server" OnClick="btnBook_Click" Text="Book Now" Width="228px" />
            <br />

        </div>
    </form>
  </div>
    </body>
</html>
