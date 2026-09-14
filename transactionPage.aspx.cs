using System;
using System.Configuration;
using System.Data.SqlClient;

namespace TACOSA
{
    public partial class transactionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // we want to ensure when page loads the text box has placeholder text
            txtCardNO.Attributes["placeholder"] = "123 456 789 0123";
            txtCardholderName.Attributes["placeholder"] = "John Doe/Jane Doe";
            txtCVVNumber.Attributes["placeholder"] = "123";
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] == null)
                {
                    lblerror.Text = "No booking was recorded for a transaction to occur.";
                    return;
                }
                int bookingID;
                if (!int.TryParse(Request.QueryString["id"], out bookingID))
                {
                    lblerror.Text = "Invalid Booking ID.";
                    return;
                }

                Session["BookingID"] = bookingID;

                loadBookingSummary();

            }
        }
        public void loadBookingSummary()
        {
            string connStr =
                ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            int bookingID = Convert.ToInt32(Session["BookingID"]);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();

                    string bookingType;

                    using (SqlCommand cmd = new SqlCommand(
                        "SELECT BookingType FROM Bookings WHERE BookingID = @bID",
                        conn))
                    {
                        cmd.Parameters.AddWithValue("@bID", bookingID);

                        object result = cmd.ExecuteScalar();

                        if (result == null)
                        {
                            lblerror.Text = "Could not retrieve booking.";
                            return;
                        }

                        bookingType = result.ToString();
                    }


                    if (bookingType == "Accommodation")
                    {
                        using (SqlCommand cmd2 = new SqlCommand(
                            "displayAccBookingForTransaction", conn))
                        {
                            cmd2.CommandType = System.Data.CommandType.StoredProcedure;

                            cmd2.Parameters.AddWithValue("@BookingID",bookingID);

                            using (SqlDataReader reader = cmd2.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    lblMerchantName.Text =reader["AccommodationName"].ToString();

                                    DateTime checkIn =Convert.ToDateTime( reader["CheckInDate"]);

                                    DateTime checkOut = Convert.ToDateTime(reader["CheckOutDate"]);

                                    lblCheckout.Text =checkIn.ToString("dd/MM/yyyy");


                                    lblBookID.Text =reader["BookingID"].ToString();

                                    decimal price =Convert.ToDecimal(reader["TotalPriceCharged"]);

                                    decimal serviceFee =price * 0.15m;

                                    decimal grandTotal = price + serviceFee;

                                    lblPrice.Text ="R" + price.ToString("F2");

                                    lblServicefee.Text ="R" + serviceFee.ToString("F2");

                                    lblGrandTotal.Text =  "R" + grandTotal.ToString("F2");

                                    Session["GrandTotal"] = grandTotal;

                                    Session["Commission"] =
                                        serviceFee;
                                }
                                else
                                {
                                    lblerror.Text =
                                        "The accommodation booking could not be found.";
                                }
                            }
                        }
                    }

                    else if (bookingType == "Attraction")
                    {
                        using (SqlCommand cmd3 = new SqlCommand(
                            "displayAttBookingForTransaction", conn))
                        {
                            cmd3.CommandType =
                                System.Data.CommandType.StoredProcedure;

                            cmd3.Parameters.AddWithValue(
                                "@BookingID",
                                bookingID);

                            using (SqlDataReader reader = cmd3.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    lblMerchantName.Text =
                                        reader["AttractionName"].ToString();

                                    DateTime bookingDate =
                                        Convert.ToDateTime(
                                            reader["BookingDate"]);

                                    lblCheckout.Text =
                                        bookingDate.ToString("dd/MM/yyyy");

                                    
                                    lblBookID.Text =
                                        reader["BookingID"].ToString();

                                    decimal price =
                                        Convert.ToDecimal(
                                            reader["TotalPriceCharged"]);

                                    decimal serviceFee =
                                        price * 0.15m;

                                    decimal grandTotal =
                                        price + serviceFee;

                                    lblPrice.Text =
                                        "R" + price.ToString("F2");

                                    lblServicefee.Text =
                                        "R" + serviceFee.ToString("F2");

                                    lblGrandTotal.Text =
                                        "R" + grandTotal.ToString("F2");

                                    Session["GrandTotal"] = grandTotal;

                                    Session["Commission"] = serviceFee;
                                }
                                else
                                {
                                    lblerror.Text =
                                        "The attraction booking could not be found.";
                                }
                            }
                        }
                    }

                    else
                    {
                        lblerror.Text =
                            "Unknown booking type.";
                    }
                }
                catch (SqlException sqlE)
                {
                    lblerror.Text =
                        "Database error: " + sqlE.Message;
                }
                catch (Exception ex)
                {
                    lblerror.Text =
                        "Error: " + ex.Message;
                }
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            try
            {

                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"
                        INSERT INTO Transactions 
                            (BookingID, Amount, PaymentDate, commission, CardExpiryDate, CardNumber)
                        VALUES 
                            (@BookingID, @Amount, @PaymentDate, @commission, @CardExpiryDate, @CardNumber)",
                        conn);

                    // get BookingID from session
                    cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt16(Session["BookingId"]));

                    // get amount from label - safely handle empty label
                    
                    cmd.Parameters.AddWithValue("@commission", Convert.ToDecimal(Session["Commission"]));
                    cmd.Parameters.AddWithValue("@Amount", Convert.ToDecimal(Session["GrandTotal"]));
                    DateTime today = DateTime.Now;
                    cmd.Parameters.AddWithValue("@PaymentDate", today);
                    DateTime expireDate = Convert.ToDateTime(txtExpire.Text);
                    cmd.Parameters.AddWithValue("@CardExpiryDate", expireDate);
                    cmd.Parameters.AddWithValue("@CardNumber", txtCardNO.Text);

                    
                    cmd.ExecuteNonQuery();

                    cmd = new SqlCommand(@"UPDATE Bookings SET BookingStatus='Confirmed' WHERE BookingID= @bID", conn);
                    cmd.Parameters.AddWithValue("@bID", Convert.ToInt16(Session["BookingId"]));
                    cmd.ExecuteNonQuery();
                    // show success and redirect
                    Response.Redirect("Bookings.aspx");
                }
            }
            catch (SqlException ex)
            {
                // show error
                lblerror.Text = "Payment error: " + ex.Message;
            }
            
        }

       

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // when user clicks cancel button, redirect to home page
            Response.Redirect("homePage.aspx");
        }
    }
}