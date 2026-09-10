using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("displayBookings", conn))
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TouristID", touristID);

                    using(SqlDataReader read = cmd.ExecuteReader())
                    {
                        if(!read.HasRows)
                        {
                            lblZeroBookings.Visible = true;
                            return;
                        }
                        while(read.Read())
                        {
                            //assign all sql values to variables
                            string status = read["BookingStatus"].ToString();
                            string name = read["AccommodationName"].ToString();
                            int id = Convert.ToInt32(read["BookingID"].ToString());
                            int guests = Convert.ToInt16(read["NumOfPeople"].ToString());
                            string inDate = read["CheckInDate"].ToString();
                            string outDate = read["CheckOutDate"].ToString();
                            decimal price = Convert.ToDecimal(read["TotalPriceCharged"]);
                            string imgPath = read["ImagePath2"].ToString();
                            

                            //create the booking card dynamically
                            HtmlGenericControl bookingCard = new HtmlGenericControl("div");
                            bookingCard.Attributes["class"] = "CardCss";

                            //make an image section in the div
                            HtmlGenericControl bookingImg = new HtmlGenericControl("div");
                            Image smallPic = new Image();
                            bookingImg.Attributes["class"] = "imgCss";
                            bookingImg.Controls.Add(smallPic);
                            bookingImg.Attributes["src"] = imgPath;

                            //then add the details 
                            HtmlGenericControl bookingText = new HtmlGenericControl("div");
                            bookingText.Attributes["class"] = "bookingTextCss";

                            bookingText.InnerHtml = $@"
                                <h3>{name}</h3>
                                <p>Guest: {guests}</p>
                                <p>Check-in: {inDate}</p>
                                <p>Check-out: {outDate}</p>
                                <p>Price: {price}</p>
                                <p>Status: {status}</p>";

                            //add all elements inside the booking card
                            bookingCard.Controls.Add(bookingImg);
                            bookingCard.Controls.Add(bookingText);

                            MainContainer.Controls.Add(bookingCard);

                        }
                    }
                }
            }
                
        }
    }
}