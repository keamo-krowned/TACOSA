<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMaintainAttBookings.aspx.cs" Inherits="TACOSA.AdminMaintainAttBookings" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintain Attraction Bookings</title>
    <style>
        body { background-color: #FFF3A3; font-family: Georgia, serif; }
        .main-container {
            width: 90%;
            margin: 20px auto;
            border: 1px solid #ccc;
            background-color: #FFF3A3;
        }
        .header {
            text-align: center;
            font-size: 32px;
            color: #6B4226;
            padding: 20px;
        }
        .control-table {
            width: 100%;
            border-collapse: collapse;
        }
        .control-table td {
            width: 25%;
            border: 1px solid #e0e0e0;
            padding: 20px;
            text-align: center;
            vertical-align: top;
        }
        
        /*buttons*/
        .btn-brown {
            background-color: #6B4226;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-family: Georgia, serif;
            font-size: 14px;
            width: 100%;
            margin-top: 10px;
        }
        .btn-brown:hover { background-color: #4a2c19; }
        
        
        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .grid-view th {
            background-color: #FFF3A3;
            color: #6B4226;
            font-weight: bold;
            padding: 10px;
            border-bottom: 2px solid #6B4226;
            text-align: left;
        }
        .grid-view td {
            padding: 8px;
            border-bottom: 1px solid #e0e0e0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container">
            
            
            <div class="header">
                Maintain Attraction Bookings
            </div>

            
            <table class="control-table">
                <tr>
                    
                    <td>
                        <asp:Button ID="btnViewAll" runat="server" Text="View all Bookings" CssClass="btn-brown" OnClick="btnViewAll_Click" />
                        <br /><br />
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>

                    
                    <td>
                        <h3>Delete Booking By ID</h3>
                        <asp:TextBox ID="txtDeleteID" runat="server" Width="80%"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete Booking By ID" CssClass="btn-brown" BackColor="#E57373" OnClick="btnDelete_Click" />
                    </td>

                    
                    <td>
                        <h3>Search Booking By ID</h3>
                        <asp:TextBox ID="txtSearchID" runat="server" Width="80%"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnSearch" runat="server" Text="Search Detail" CssClass="btn-brown" />
                    </td>
                </tr>
            </table>

           
            <asp:GridView ID="gvBookings" runat="server" AutoGenerateColumns="True" CssClass="grid-view" GridLines="None" EmptyDataText="No bookings found.">
            </asp:GridView>

        </div>
    </form>
</body>
</html>