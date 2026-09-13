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
            if (!IsPostBack)
            {
                if (Session["adminEditBookings"] == null)
                {
                    return;
                }

                int bookingID = Convert.ToInt32(Session["adminEditBookings"]);

                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand(@"
            SELECT
                b.BookingID,
                b.TouristID,
                b.BookingStatus,
                ab.AccommodationID,
                ab.CheckInDate,
                ab.CheckOutDate,
                ab.NumOfRooms,
                ab.NumOfPeople,
                ab.TotalPriceCharged
            FROM Bookings b
            INNER JOIN AccBookings ab
                ON b.BookingID = ab.BookingID
            WHERE b.BookingID = @BookingID", conn))
                {
                    cmd.Parameters.AddWithValue("@BookingID", bookingID);

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtTouristID.Text = reader["TouristID"].ToString();
                            txtAcc.Text = reader["AccommodationID"].ToString();

                            Calendar1.SelectedDate = Convert.ToDateTime(reader["CheckInDate"]);
                            Calendar2.SelectedDate = Convert.ToDateTime(reader["CheckOutDate"]);
                            txtStatus.Text = reader["BookingStatus"].ToString();
                            txtRooms.Text = reader["NumOfRooms"].ToString();
                            txtPeople.Text = reader["NumOfPeople"].ToString();
                            txtGrandPrice.Text = reader["TotalPriceCharged"].ToString();
                        }
                    }
                }
            }
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
            string status = txtStatus.Text.Trim();
            int accID = Convert.ToInt32(txtAcc.Text.Trim());
            DateTime inDate = Calendar1.SelectedDate;
            DateTime outDate = Calendar2.SelectedDate;
            int rooms = Convert.ToInt32(txtRooms.Text.Trim());
            int people = Convert.ToInt32(txtPeople.Text.Trim());
            decimal price = Convert.ToDecimal(txtGrandPrice.Text);

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            
            using(SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand(@"SELECT 
                    CapacityPerRoom, 
                    RoomsAvailable 
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
                            }
                            else
                            {
                                lblError.Text = "Accommodation not found.";
                                return;
                            }
                        }
                    }

                    using(SqlCommand cmd = new SqlCommand("adminUpdateBookings", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@BookingID", bookingID);
                        cmd.Parameters.AddWithValue("@TouristID", tourist);
                        cmd.Parameters.AddWithValue("@BookingStatus", status);
                        cmd.Parameters.AddWithValue("@accID", accID);
                        cmd.Parameters.AddWithValue("@checkIn", inDate);
                        cmd.Parameters.AddWithValue("@checkOut", outDate);
                        cmd.Parameters.AddWithValue("@numPeople", people);
                        cmd.Parameters.AddWithValue("@numRooms", rooms);
                        cmd.Parameters.AddWithValue("@totalPrice", price);

                        cmd.ExecuteNonQuery();

                        Session["adminUpdateBookings"] = null;
                        Session["BookingsMessage"] = "Booking details updated successfully.";
                        Response.Redirect("adminBookings.aspx");


                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }

        }

        public void CustomValidatorCal1_ServerValidate(object source, ServerValidateEventArgs args)
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

        public void CustomValidatorCal2_ServerValidate(object source, ServerValidateEventArgs args)
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}