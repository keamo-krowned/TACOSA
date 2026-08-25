<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttractionBookings.aspx.cs" Inherits="TACOSA.AttractionBookings" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Attraction Details</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>

<body style="background-color: lightgoldenrodyellow;">

<form id="form1" runat="server">
    <asp:Label ID="lblTacosa" runat="server" Font-Names="Algerian" ForeColor="#990000">TACOSA</asp:Label>
    <div class="attraction-details">

       
        <div class="attraction-header">

            <asp:Image ID="imgAttraction" runat="server" />

            <div class="attraction-title">

                <asp:Label 
                    ID="lblName" 
                    runat="server">
                </asp:Label>

                <asp:Label 
                    ID="lblCategory" 
                    runat="server">
                </asp:Label>

                <asp:Label 
                    ID="lblRating" 
                    runat="server">
                </asp:Label>

            </div>

        </div>


        
        <div class="attraction-description">

            <h2>About This Attraction</h2>

            <asp:Label 
                ID="lblDescription" 
                runat="server">
            </asp:Label>

        </div>


       
        <div class="attraction-information">

            <h2>Information</h2>

            <p>
                Location:
                <asp:Label 
                    ID="lblLocation" 
                    runat="server">
                </asp:Label>
            </p>

            <p>
                Opening Hours:
                <asp:Label 
                    ID="lblOpeningHours" 
                    runat="server">
                </asp:Label>
            </p>

        </div>


       
        <div class="booking-section">

            <h2>Book Your Experience</h2>

            <p>
                Date:
                <asp:TextBox 
                    ID="txtDate" 
                    runat="server" 
                    TextMode="Date">
                </asp:TextBox>
            </p>

            <p>
                Number of Visitors:
                <asp:TextBox 
                    ID="txtVisitors" 
                    runat="server">
                </asp:TextBox>
            </p>

            <asp:Button 
                ID="btnBook" 
                runat="server" 
                Text="Book Now" />

        </div>

    </div>

</form>

</body>
</html>

