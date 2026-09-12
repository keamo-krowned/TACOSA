using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class AdminMaintainAttBookings : System.Web.UI.Page
    {

        string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAllBookings();
            }
        }


        private void LoadAllBookings()
        {
            //loads everything from the database
            using (SqlConnection con = new SqlConnection(conStr))
            {

                string query = @"
                    SELECT 
                        ab.BookingID, 
                        ab.AttractionID, 
                        b.TouristID, 
                        ab.BookingDate, 
                        ab.NumOfPeople, 
                        ab.TotalPriceCharged 
                    FROM AttractionBookings ab
                    INNER JOIN Bookings b ON ab.BookingID = b.BookingID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvBookings.DataSource = dt;
                        gvBookings.DataBind();
                    }
                }
            }
        }


        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            LoadAllBookings();
            lblMessage.Text = "Bookings loaded successfully.";
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtDeleteID.Text))
            {
                lblMessage.Text = "Please enter a Booking ID to delete.";
                return;
            }

            string bookingID = txtDeleteID.Text.Trim();

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                // deleting from attraction bookings and the bookings page 
                string deleteAttractionQuery = "DELETE FROM AttractionBookings WHERE BookingID = @BookingID";
                string deleteMainQuery = "DELETE FROM Bookings WHERE BookingID = @BookingID";

                using (SqlCommand cmd = new SqlCommand(deleteAttractionQuery, con))
                {
                    cmd.Parameters.AddWithValue("@BookingID", bookingID);
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {

                        using (SqlCommand cmd2 = new SqlCommand(deleteMainQuery, con))
                        {
                            cmd2.Parameters.AddWithValue("@BookingID", bookingID);
                            cmd2.ExecuteNonQuery();
                        }

                        lblMessage.Text = "Booking ID " + bookingID + " successfully deleted.";
                        LoadAllBookings();
                        txtDeleteID.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "Error: Booking ID not found in Attraction Bookings.";
                    }
                }
            }
        }
    }
}

