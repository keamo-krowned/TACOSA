<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AttractionBooking.aspx.cs" Inherits="TACOSA.AttractionBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightgoldenrodyellow;">
    <link href="StyleSheet1.css" rel="stylesheet" />
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

        <asp:Label ID="Label1" runat="server" Font-Names="Ink Free" Text="About the Attraction" Font-Size="X-Large"></asp:Label>

        <br />
        <br />
        <asp:Label ID="lbldescription" runat="server"></asp:Label>
        <br />
        <br />

    </div>


        <div>









            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Font-Names="Ink Free" Text="Information"></asp:Label>
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

            <asp:Label ID="Label5" runat="server" Font-Names="Ink Free" Text="Book your Experience:"></asp:Label>

        </div>
        <div class="attraction-section">

       
        <p>

            <asp:Label ID="Label6" runat="server" Text="Date:"></asp:Label>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
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

            <asp:Button ID="btnBook" runat="server" OnClick="Button1_Click" Text="Book Now" Width="228px" />
            <br />

        </div>
    </form>
    </body>
</html>
