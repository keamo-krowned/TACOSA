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

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                // converting data using Parse
                int touristID = int.Parse(Session["TouristID"]?.ToString() ?? "1");
                int accommodationID = int.Parse(Request.QueryString["id"]);
                int numOfPeople = int.Parse(ddlPeople.SelectedValue);
                int numOfRooms = int.Parse(ddlRooms.SelectedValue);
                DateTime checkInDate = CalendarCheckIN.SelectedDate;
                DateTime checkOutDate = CalendarCheckOUT.SelectedDate;
                decimal totalPriceCharged = decimal.Parse(lblCalculatedPrice.Text.Replace("R", "").Trim());

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand("createAccBooking", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@TouristID", touristID);
                        cmd.Parameters.AddWithValue("@BookingType", "Accommodation");
                        cmd.Parameters.AddWithValue("@AccommodationID", accommodationID);
                        cmd.Parameters.AddWithValue("@TotalPriceCharged", totalPriceCharged);
                        cmd.Parameters.AddWithValue("@NumOfPeople", numOfPeople);
                        cmd.Parameters.AddWithValue("@CheckInDate", checkInDate);
                        cmd.Parameters.AddWithValue("@CheckOutDate", checkOutDate);
                        cmd.Parameters.AddWithValue("@NumOfRooms", numOfRooms);

                        object result = cmd.ExecuteScalar();

                        if (result != null)
                        {
                            string script = "alert('Booking completed successfully!');";
                            ScriptManager.RegisterStartupScript(this, GetType(), "BookingSuccess", script, true);
                        }
                    }
                }
            }
            catch (SqlException ex) //try-catch exception handling for database errors
            {
                lblCalculatedPrice.Text = "Database Error: " + ex.Message;
                lblCalculatedPrice.ForeColor = System.Drawing.Color.Red;
            }
            catch (FormatException ex)
            {
                lblCalculatedPrice.Text = "Format Error: Please ensure all selection fields are valid.";
                lblCalculatedPrice.ForeColor = System.Drawing.Color.Red;
            }
            catch (Exception ex)
            {
                lblCalculatedPrice.Text = "Error: " + ex.Message;
                lblCalculatedPrice.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}