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
    public partial class UpdateBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string bookingID = Request.QueryString["id"];
                if (string.IsNullOrEmpty(bookingID))
                {
                    return;
                }

                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand(@"
            SELECT
                b.BookingStatus,
                ab.CheckInDate,
                ab.CheckOutDate,
                ab.NumOfRooms,
                ab.NumOfPeople,
            FROM Bookings b
            INNER JOIN AccBookings ab
                ON b.BookingID = ab.BookingID
            WHERE b.BookingID = @BookingID", conn))
                {
                    cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt16(bookingID));

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            
                            Calendar1.SelectedDate = Convert.ToDateTime(reader["CheckInDate"]);
                            Calendar2.SelectedDate = Convert.ToDateTime(reader["CheckOutDate"]);
                            txtRooms.Text = reader["NumOfRooms"].ToString();
                            txtPeople.Text = reader["NumOfPeople"].ToString();
                            Session["TouristBookingID"] = bookingID;
                        }
                    }
                }
            }
        }

        protected void CustomValidatorCal1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                args.IsValid = false;
            }
            else if (Calendar1.SelectedDate < DateTime.Today)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void CustomValidatorCal2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Calendar2.SelectedDate == DateTime.MinValue)
            {
                args.IsValid = false;
            }
            else if (Calendar2.SelectedDate < DateTime.Today)
            {
                args.IsValid = false;
            }
            else if (Calendar2.SelectedDate < Calendar1.SelectedDate)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            if (Session["TouristBookingID"] == null)
            {
                lblError.Text = "There was an error reading the booking.";
                return;
            }
            int bookingID = Convert.ToInt16(Session["TouristBookingID"]);
            DateTime inDate = Calendar1.SelectedDate;
            DateTime outDate = Calendar2.SelectedDate;
            int rooms = Convert.ToInt32(txtRooms.Text.Trim());
            int people = Convert.ToInt32(txtPeople.Text.Trim());
            
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            decimal pricePerNight = 0;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    int accID = Convert.ToUInt16(Session["AccID"]);
                    
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(@"SELECT 
                    CapacityPerRoom, 
                    RoomsAvailable,
                    PricePerNight,
                    FROM Accommodations 
                    WHERE AccommodationID = @accID;", conn))
                    {
                        cmd.Parameters.AddWithValue("@accID", accID);
                        using (SqlDataReader reader1 = cmd.ExecuteReader())
                        {
                            
                            if (reader1.Read())
                            {
                                if (people > Convert.ToInt32(reader1["CapacityPerRoom"]) * Convert.ToInt32(reader1["RoomsAvailable"]))
                                {
                                    lblError.Text = "The number of guests exceeds the accommodation Capacity." +
                                        "\nPlease Enter an amount that can accommodate enough people per room.";
                                    return;
                                }
                                pricePerNight = Convert.ToDecimal(reader1["PricePerNight"]);
                            }
                            else
                            {
                                lblError.Text = "Accommodation not found.";
                                return;
                            }
                        }
                    }

                   
                    using (SqlCommand cmd = new SqlCommand(@"UPDATE AccBookings
                                                            SET
                                                            CheckInDate = @checkIn,
                                                            CheckOutDate = @checkOut,
                                                            NumOfPeople = @numPeople,
                                                            NumOfRooms = @numRooms,
                                                            TotalPriceCharged = @totalPrice
                                                            WHERE BookingID = @BookingID;", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@checkIn", inDate);
                        cmd.Parameters.AddWithValue("@checkOut", outDate);
                        cmd.Parameters.AddWithValue("@numPeople", people);
                        cmd.Parameters.AddWithValue("@numRooms", rooms);

                       
                        decimal price = pricePerNight * rooms * people;
                        cmd.Parameters.AddWithValue("@totalPrice", price);


                        cmd.ExecuteNonQuery();

                        Session["AccID"] = null;
                        Session["TouristMessage"] = "Booking details updated successfully.";
                        Response.Redirect("Bookings.aspx");


                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
    }
}