using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class DeleteBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string bookingID;
            if (!IsPostBack)
            {
                bookingID = Request.QueryString["id"];
                if (!string.IsNullOrEmpty(bookingID))
                {
                    string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
                    using(SqlConnection conn = new SqlConnection(connStr))
                    {
                        try
                        {
                            conn.Open();
                            using (SqlCommand cmd = new SqlCommand("adminDeleteBookings", conn))
                            {
                                cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt16(bookingID));
                                using(SqlDataReader reader = cmd.ExecuteReader())
                                {
                                    if (reader["Result"].ToString()== "Bookings deleted successfully.")
                                    {
                                        Session["TouristMessage"] = reader["Result"].ToString();
                                        Label1.Text = reader["Result"].ToString();
                                    }
                                }
                                
                            }
                        }
                        catch(SqlException ex)
                        {
                            Label1.Text = ex.Message;
                        }
                    }
                }
            }
        }
    }
}