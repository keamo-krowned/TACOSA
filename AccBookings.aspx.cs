using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace TACOSA
{
    public partial class AccBookings : System.Web.UI.Page
    {

        private String connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
            {
            string accommodationID;
                if (!IsPostBack)
                {
                accommodationID = Request.QueryString["id"];
                    if (!string.IsNullOrEmpty(accommodationID))
                    {
                    loadAccommodation(accommodationID);
                    }
                }
                
             }

        protected void loadAccommodation(string accID)
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccForAccBooking", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AccommodationID", accID);

                    using(SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.Read())
                        {
                            //top section
                            img1.ImageUrl = reader["ImagePath"].ToString();
                            img2.ImageUrl = reader["ImagePath2"].ToString();
                            img3.ImageUrl = reader["ImagePath3"].ToString();

                            lblAccommodationName.Text = reader["AccommodationName"].ToString();
                            lblAccommodationLocation.Text = reader["AccommodationLocation"].ToString();
                            lblAccRating.Text = reader["Rating"].ToString();
                            //About
                            lblAccDescription.Text = reader["AccommodationDescription"].ToString();
                            //Details
                            lblAccCapacity.Text = reader["CapacityPerRoom"].ToString();
                            lblRoomsAvailable.Text = reader["RoomsAvailable"].ToString();
                            lblAccPricePerNight.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                            lblRoomTypes.Text = reader["RoomTypeName"].ToString();

                            //Contact Details
                            lblAccCellNumber.Text = reader["AccommodationCellNumber"].ToString();
                            lblAccEmail.Text = reader["AccommodationEmail"].ToString();
                        }
                    }
                }
            }
        }

    }
}