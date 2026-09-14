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
    public partial class Accommodations : System.Web.UI.Page
    {
       
        private String connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //change
            hlkAcc.Attributes["style"] = "color: white !important;";
            hlkAcc.BackColor = System.Drawing.ColorTranslator.FromHtml("#6B4226");
            int size = 10;
            //set arrays for sql statements and display objects
            int[] arrayID = { 17, 18, 19, 20, 21 , 1, 22, 7, 8, 14, };
            Image[] images = {imgHotel1, imgHotel2, imgHotel3, imgHotel4, imgHotel5, imgGH1,
                               imgGH2, imgGH3, imgGH4, imgGH5};

            Label[] nameLabels = {lblHotelName1, lblHotelName2, lblHotelName3, lblHotelName4,
                                  lblHotelName5, lblGHName1, lblGHName2, lblGHName3, lblGHName4, lblGHName5};

            Label[] locationLabels = {lblHotelLo1, lblHotelLo2, lblHotelLo3, lblHotelLo4, lblHotelLo5,
                                       lblGHLo1, lblGHLo2, lblGHLo3, lblGHLo4, lblGHLo5};

            Label[] priceLabels = {lblHotelPrice1, lblHotelPrice2, lblHotelPrice3, lblHotelPrice4,
                                    lblHotelPrice5, lblGHPrice1, lblGHPrice2, lblGHPrice3, lblGHPrice4, lblGHPrice5};

            Label[] ratingLabels = {lblHotelRating1, lblHotelRating2, lblHotelRating3, lblHotelRating4,
                                    lblHotelRating5, lblGHRating1, lblGHRating2, lblGHRating3, lblGHRating4,
                                     lblGHRating5};

            //use for loop to display all accommodation details
            for (int i = 0; i < size; i++)
            {
                LoadAccommodation(arrayID[i], images[i], nameLabels[i], locationLabels[i], priceLabels[i], ratingLabels[i]);

            }

        }
        protected void LoadAccommodation(int index, Image image, Label name, Label loc, Label price, Label rating)
        {
            //connect to database
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation1", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure
                    cmd.Parameters.AddWithValue("@AccommodationID", index);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.Read()) //fill
                        {
                            image.ImageUrl = reader["ImagePath"].ToString();
                            name.Text = reader["AccommodationName"].ToString();
                            loc.Text = reader["AccommodationLocation"].ToString();
                            price.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                            rating.Text = Convert.ToDecimal(reader["Rating"]).ToString("F1");
                          
                        }
                    }

                }
            }
        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            
        }
    }
}