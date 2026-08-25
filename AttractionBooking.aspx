<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttractionBooking.aspx.cs" Inherits="TACOSA.AttractionBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightgoldenrodyellow;">
    <form id="form1" runat="server">

        <div>
             <br />
             <asp:Label ID="lblLabel" runat="server" Font-Names="Algerian" Text="TACOSA"></asp:Label>
             <br />
             <asp:Image ID="Image1" runat="server" Width="189px" />
        </div>
       
        <p>
             <asp:Label ID="lblName" runat="server"></asp:Label>
            <asp:Label ID="lblCategory" runat="server"></asp:Label>
            <asp:Label ID="Rating" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
       
    <div>

        <asp:Label ID="Label1" runat="server" Font-Names="Algerian" Text="About the Attraction"></asp:Label>

        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server"></asp:Label>
        <br />
        <br />

    </div>


        <div>









            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Names="Algerian" Text="Information"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Location: "></asp:Label>
            <asp:Label ID="lblLocation" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Is it Open:"></asp:Label>
            <asp:Label ID="lblAvailable" runat="server"></asp:Label>
            <br />
           
            






        </div>
       <div>

           <br />


       </div>
    </form>
    </body>
</html>
