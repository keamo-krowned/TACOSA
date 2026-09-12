using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class adminUpdateBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            if (Session["adminEditBookings"] == null)
            {
                lblError.Text = "No booking selected.";
                return;
            }
            int bookingID = Convert.ToInt32(Session["adminEditBookings"]);
            int tourist = Convert.ToInt32(txtTouristID.Text.Trim());
            string type = txtType.Text.Trim();
            string status = txtStatus.Text.Trim();

            if (tourist.ToString() == null && type == null & status == null)
            {
                lblError.Text = "Please type values to update the current booking.";
                return;
            }
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            
            using(SqlConnection conn = new SqlConnection(connStr))
            {
                using(SqlCommand cmd = new SqlCommand("adminUpdateBookings", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@BookingID", bookingID);
                    cmd.Parameters.AddWithValue("@TouristID", tourist);
                    cmd.Parameters.AddWithValue("@BookingType", type);
                    cmd.Parameters.AddWithValue("@BookingStatus", status);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();

                        Session["adminUpdateBookings"] = null;
                        Session["BookingsMessage"] = "Booking details updated successfully.";
                        Response.Redirect("adminBookings.aspx");
                    }
                    catch (SqlException ex)
                    {
                        lblError.Text = ex.Message;
                    }

                }
            }

        }
    }
}