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
       
        private String connStr = ConfigurationManager.ConnectionStrings["TACOSAConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            hlkAcc.Attributes["style"] = "color: white !important;";
            hlkAcc.BackColor = System.Drawing.ColorTranslator.FromHtml("#6B4226");
            LoadHotel1();
            LoadHotel2();
            LoadHotel3();
            LoadHotel4();
            LoadHotel5();
            LoadGuestHouse1();
            LoadGuestHouse2();
            LoadGuestHouse3();
            LoadGuestHouse4();
            LoadGuestHouse5();
        }
        protected void LoadGuestHouse1()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation1", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if(reader.Read()) //fill
                        {
                            imgGH1.ImageUrl = reader["ImagePath"].ToString();
                            lblGHName1.Text = reader["AccommodationName"].ToString();
                            lblGHLo1.Text = reader["AccommodationLocation"].ToString();
                            lblGHPrice1.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                        }
                    }

                }
            }
        }

        protected void LoadGuestHouse2()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation2", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            imgGH2.ImageUrl = reader["ImagePath"].ToString();
                            lblGHName2.Text = reader["AccommodationName"].ToString();
                            lblGHLo2.Text = reader["AccommodationLocation"].ToString();
                            lblGHPrice2.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";

                        }
                    }

                }
            }
        }

        protected void LoadGuestHouse3()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation3", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            imgGH3.ImageUrl = reader["ImagePath"].ToString();
                            lblGHName3.Text = reader["AccommodationName"].ToString();
                            lblGHLo3.Text = reader["AccommodationLocation"].ToString();
                            lblGHPrice3.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";

                        }
                    }

                }
            }
        }
        protected void LoadGuestHouse4()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation4", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            imgGH4.ImageUrl = reader["ImagePath"].ToString();
                            lblGHName4.Text = reader["AccommodationName"].ToString();
                            lblGHLo4.Text = reader["AccommodationLocation"].ToString();
                            lblGHPrice4.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                        }
                    }

                }
            }
        }
        protected void LoadGuestHouse5()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation5", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            imgGH5.ImageUrl = reader["ImagePath"].ToString();
                            lblGHName5.Text = reader["AccommodationName"].ToString();
                            lblGHLo5.Text = reader["AccommodationLocation"].ToString();
                            lblGHPrice5.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                        }
                    }

                }
            }
        }

        protected void LoadHotel1()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation6", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            
                            imgHotel1.ImageUrl = reader["ImagePath"].ToString();
                            lblHotelName1.Text = reader["AccommodationName"].ToString();
                            lblHotelLo1.Text = reader["AccommodationLocation"].ToString();
                            lblHotelPrice1.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                        }
                    }

                }
            }
        }

        protected void LoadHotel2()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation7", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {
                            imgHotel2.ImageUrl = reader["ImagePath"].ToString();
                            lblHotelName2.Text = reader["AccommodationName"].ToString();
                            lblHotelLo2.Text = reader["AccommodationLocation"].ToString();
                            lblHotelPrice2.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                           
                        }
                    }

                }
            }
        }

        protected void LoadHotel3()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation8", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {

                            imgHotel3.ImageUrl = reader["ImagePath"].ToString();
                            lblHotelName3.Text = reader["AccommodationName"].ToString();
                            lblHotelLo3.Text = reader["AccommodationLocation"].ToString();
                            lblHotelPrice3.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                           }
                    }

                }
            }
        }

        protected void LoadHotel4()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation9", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {

                            imgHotel4.ImageUrl = reader["ImagePath"].ToString();
                            lblHotelName4.Text = reader["AccommodationName"].ToString();
                            lblHotelLo4.Text = reader["AccommodationLocation"].ToString();
                            lblHotelPrice4.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                            imgGH4.ImageUrl = reader["ImagePath"].ToString();
                        }
                    }

                }
            }
        }

        protected void LoadHotel5()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("GetAccommodation10", conn)) //use name of stored procedure
                {
                    cmd.CommandType = System.Data.CommandType.StoredProcedure; //retrieve stored procedure

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) //fill
                        {

                            imgHotel5.ImageUrl = reader["ImagePath"].ToString();
                            lblHotelName5.Text = reader["AccommodationName"].ToString();
                            lblHotelLo5.Text = reader["AccommodationLocation"].ToString();
                            lblHotelPrice5.Text = "R" + Convert.ToDecimal(reader["PricePerNight"]).ToString("F2") + "/Night";
                           
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