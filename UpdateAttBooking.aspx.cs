using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class UpdateAttBooking : System.Web.UI.Page
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
                atb.BookingDate,
                atb.NumOfPeople,
            FROM Bookings b
            INNER JOIN AttractionBookings atb
                ON b.BookingID = atb.BookingID
            WHERE b.BookingID = @BookingID", conn))
                {
                    cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt16(bookingID));

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {

                            Calendar1.SelectedDate = Convert.ToDateTime(reader["BookingDate"]);
                            txtPeople.Text = reader["NumOfPeople"].ToString();
                            Session["TouristBookingID"] = bookingID;
                        }
                    }
                }
            }
        }

        protected void CustomValidatorCal1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(Calendar1.SelectedDate< DateTime.Today)
            {
                args.IsValid = false;
            }
            else if(Calendar1.SelectedDate ==DateTime.MinValue)
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
            int bookingID = Convert.ToInt16(Session["TouristBookingID"]);
            DateTime bookingDate = Calendar1.SelectedDate;
            int people = Convert.ToInt32(txtPeople.Text.Trim());
            decimal price = 0;
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            using(SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                    using(SqlCommand cmd = new SqlCommand("@SELECT PricePerDay FROM Attractions WHERE AttractionID = @AttID", conn))
                    {

                        cmd.Parameters.AddWithValue("@AttID", Convert.ToInt16(Session["AttID"]));
                        using(SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if(reader.Read())
                            {
                                price = Convert.ToDecimal(reader["PricePerDay"].ToString());
                            }
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand(@"UPDATE AttractionBookings
                                                            SET
                                                            bookingDate = @bDate,
                                                            NumOfPeople = @numPeople,
                                                            TotalPriceCharged = @totalPrice
                                                            WHERE BookingID = @bookingID;", conn))
                    {
                       
                        cmd.Parameters.AddWithValue("@bDate", bookingDate);
                        cmd.Parameters.AddWithValue("@numPeople", people);


                        decimal totPrice = price* people;
                        cmd.Parameters.AddWithValue("@totalPrice", price);

                        cmd.Parameters.AddWithValue("@bookingID", bookingID);
                        cmd.ExecuteNonQuery();

                        Session["AttID"] = null;
                        Session["TouristMessage"] = "Booking details updated successfully.";
                        Response.Redirect("Bookings.aspx");


                    }
                }
                catch(SqlException ex)
                {
                    lblError.Text = "Sql Error:" + ex.Message;
                }
            }
        }
    }
}