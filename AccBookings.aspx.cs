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

                            int maxPeople = int.Parse(reader["CapacityPerRoom"].ToString());
                            int maxRooms = int.Parse(reader["RoomsAvailable"].ToString());

                            //Clear static dropdown items
                            ddlPeople.Items.Clear();
                            ddlRooms.Items.Clear();

                            //Populate People DDList
                            for (int i = 1; i <= maxPeople; i++)
                            {
                                ddlPeople.Items.Add(new ListItem(i.ToString(), i.ToString()));
                            }

                            //Populate Rooms DDList
                            for (int i = 1; i <= maxRooms; i++)
                            {
                                ddlRooms.Items.Add(new ListItem(i.ToString(), i.ToString()));
                            }
                        }
                    }
                }
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            try
            {
                // Parse conversion
                int touristID = 1;
                if (Session["TouristID"] != null)
                {
                    touristID = int.Parse(Session["TouristID"].ToString());
                }
                int accommodationID = int.Parse(Request.QueryString["id"]);
                int numOfPeople = int.Parse(ddlPeople.SelectedValue);
                int numOfRooms = int.Parse(ddlRooms.SelectedValue);
                DateTime checkInDate = CalendarCheckIN.SelectedDate;
                DateTime checkOutDate = CalendarCheckOUT.SelectedDate;

                // Calculate total days
                int totalDays = (checkOutDate - checkInDate).Days;

                // Get price per night from Session
                decimal pricePerNight = Convert.ToDecimal(Session["PricePerNight"]);

                

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand("createAccBooking", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        //insert data into the database using the stored procedure

                        // Calculate total price
                        decimal totalPriceCharged = totalDays * numOfRooms * pricePerNight;

                        cmd.Parameters.AddWithValue("@TouristID", touristID);
                        cmd.Parameters.AddWithValue("@BookingType", "Accommodation");
                        cmd.Parameters.AddWithValue("@AccommodationID", accommodationID);
                        cmd.Parameters.AddWithValue("@TotalPriceCharged", totalPriceCharged);
                        cmd.Parameters.AddWithValue("@NumOfPeople", numOfPeople);
                        cmd.Parameters.AddWithValue("@CheckInDate", checkInDate);
                        cmd.Parameters.AddWithValue("@CheckOutDate", checkOutDate);
                        cmd.Parameters.AddWithValue("@NumOfRooms", numOfRooms);

                        string bookingID = (cmd.ExecuteScalar()).ToString();

                        if (bookingID!=null)
                        {
                            //REDIRECT TO PAYMENT
                            Session["BookingID"] = bookingID;

                            Response.Redirect("TransactionPage.aspx");
                        }
                        lblCalculatedPrice.Text = "R" + totalPriceCharged.ToString("F2");
                        Session["GrandTotal"] = totalPriceCharged;
                    }
                }
            }
            catch (SqlException) //SQL error and exception handling
            {
                lblCalculatedPrice.Text = "A database error occurred. Please try again.";
                lblCalculatedPrice.ForeColor = System.Drawing.Color.Maroon;
            }
            catch (Exception)
            {
                lblCalculatedPrice.Text = "An error occurred while processing your booking. Please check your inputs.";
                lblCalculatedPrice.ForeColor = System.Drawing.Color.Maroon; //maroon colour for errors specifically
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session["BookingID"] = null;
            Response.Redirect("Accommodations.aspx"); //redirects back to the accommodations page when you click cancel
        }

        protected void CalendarCheckIN_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void CalendarCheckOUT_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}