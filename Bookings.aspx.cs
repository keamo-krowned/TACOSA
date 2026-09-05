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
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void loadBookings()
        {
            int touristID = Convert.ToInt32(Session["TouristID"]);
            if (Session["TouristID"] == null)
            {
                lblZeroBookings.Text = "You have not logged in yet.";
                lblZeroBookings.Visible = true;
                Response.Redirect("TouristRegister.aspx");
            }

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnecetion conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("displayBookings", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TouristID", touristID);

                    using(SqlDataReader read = cmd.ExecuteReader)
                    {
                        if(!read.HasRows)
                        {
                            lblZeroBookings.Visible = true;
                            return;
                        }
                        while(read.Read())
                        {

                        }
                    }
                }
            }
                
        }
    }
}