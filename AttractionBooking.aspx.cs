using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class AttractionBooking : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

                con = new SqlConnection(conStr);

                string query = "SELECT * FROM Attractions WHERE AttractionID = @AttractionID";

                SqlCommand cmd = new SqlCommand(query, con);
                string id = Session["AttractionID"] as string;

                if (string.IsNullOrEmpty(id))
                {
                    Response.Redirect("Attractions.aspx"); // send them back if no id
                    return;
                }

                cmd.Parameters.AddWithValue("@AttractionID", id);

                adap = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                adap.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    lblName.Text = dt.Rows[0]["AttractionName"].ToString();

                    lbldescription.Text =
                        dt.Rows[0]["AttractionDescription"].ToString();

                    lblLocation.Text =dt.Rows[0]["AttractionLocation"].ToString();

                    lblAvailable.Text =
                        Convert.ToBoolean(dt.Rows[0]["AttractionAvailableYN"]) ? "Yes": "No";

                    Rating.Text =
                        dt.Rows[0]["Rating"].ToString() + "Rating";

                    lblCategory.Text = "R" + Convert.ToDecimal(dt.Rows[0]["PricePerDay"])
                          .ToString("0.00")
                          .Replace(".", ",");

                    string imagePath = dt.Rows[0]["ImagePath"].ToString();

                    if (!string.IsNullOrEmpty(imagePath))
                    {
                        // Replace backslashes with forward slashes because of the way its stores in the database
                        imagePath = imagePath.Replace("\\", "/");

                        // Remove any leading slash so it doesn't break the URL
                        if (imagePath.StartsWith("/"))
                        {
                            imagePath = imagePath.Substring(1);
                        }

                        //Checks if the word Images/ is already in the path
                        if (imagePath.ToLower().StartsWith("images/"))
                        {
                            // if image is already there? just adds "~/"
                            Image1.ImageUrl = "~/" + imagePath;
                        }
                        else
                        {
                            // adding the .png part
                            Image1.ImageUrl = "~/Images/" + imagePath;
                        }
                    }
                    else
                    {
                        // Just a placeholder 
                        Image1.ImageUrl = "~/Images/no-image.png";
                    }
                        dt.Rows[0]["Rating"].ToString();
                    //lblCategory.Text =
                    //"R" +
                    //Convert.ToDecimal(dt.Rows[0]["PricePerDay"])
                    //.ToString("N2", CultureInfo.GetCultureInfo("en-ZA"));
                }
            }

        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
           
            if (Page.IsValid)
            {
                string attractionId = Session["AttractionID"] as string;
                if (string.IsNullOrEmpty(attractionId))
                {
                    Response.Redirect("Attractions.aspx");
                    return;
                }

                // getting the cookies
                string touristId = "2"; 

                string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    // Get the inputs
                    DateTime bookingDate = Convert.ToDateTime(txtDate.Text);
                    int numOfPeople = Convert.ToInt32(txtVisitors.Text);

                    // Get the PricePerDay
                    decimal pricePerPerson = 0;
                    string priceQuery = "SELECT PricePerDay FROM Attractions WHERE AttractionID = @AttractionID";
                    using (SqlCommand priceCmd = new SqlCommand(priceQuery, con))
                    {
                        priceCmd.Parameters.AddWithValue("@AttractionID", attractionId);
                        object result = priceCmd.ExecuteScalar();
                        if (result != null)
                        {
                            pricePerPerson = Convert.ToDecimal(result);
                        }
                    }

                    decimal totalPrice = pricePerPerson * numOfPeople;

                    // creating the booking id part 
                    int newBookingID = 0;

                    
                    string insertMainBookingQuery = @"
                        INSERT INTO Bookings (TouristID, BookingType, BookingStatus) 
                        VALUES (@TouristID, 'Attraction', 'Pending');
                        SELECT SCOPE_IDENTITY();";

                    using (SqlCommand cmdBooking = new SqlCommand(insertMainBookingQuery, con))
                    {
                        cmdBooking.Parameters.AddWithValue("@TouristID", touristId);

                        // insert and returns the new BookingID
                        newBookingID = Convert.ToInt32(cmdBooking.ExecuteScalar());
                    }

                   //inserting into the attraction bookings table 
                    string insertAttractionQuery = @"INSERT INTO AttractionBookings 
                                           (BookingID, AttractionID, BookingDate, NumOfPeople, TotalPriceCharged) 
                                           VALUES 
                                           (@BookingID, @AttractionID, @BookingDate, @NumOfPeople, @TotalPriceCharged)";

                    using (SqlCommand insertCmd = new SqlCommand(insertAttractionQuery, con))
                    {
                        
                        insertCmd.Parameters.AddWithValue("@BookingID", newBookingID);
                        insertCmd.Parameters.AddWithValue("@AttractionID", attractionId);
                        insertCmd.Parameters.AddWithValue("@BookingDate", bookingDate);
                        insertCmd.Parameters.AddWithValue("@NumOfPeople", numOfPeople);
                        insertCmd.Parameters.AddWithValue("@TotalPriceCharged", totalPrice);

                        int rowsAffected = insertCmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            Session["TotalBookingPrice"] = totalPrice;
                            Session["NewBookingID"] = newBookingID;
                            Response.Redirect("transactionPage.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Booking failed. Please try again.');</script>");
                        }
                    }
                }
            }
        }

        protected void btnDeleteBooking_Click(object sender, EventArgs e)
        {
            //Check if the user actually typed an ID into the textbox
            if (string.IsNullOrWhiteSpace(txtDelete.Text))
            {
                Response.Write("<script>alert('Please enter a Booking ID to delete.');</script>");
                return;
            }

            string bookingID = txtDelete.Text.Trim();
            string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();

                // Delete from attraction bookings first
                string deleteAttraction = "DELETE FROM AttractionBookings WHERE BookingID = @BookingID";
                using (SqlCommand cmd = new SqlCommand(deleteAttraction, con))
                {
                    cmd.Parameters.AddWithValue("@BookingID", bookingID);
                    cmd.ExecuteNonQuery();
                }

                // Delete from bookings page
                string deleteMain = "DELETE FROM Bookings WHERE BookingID = @BookingID";
                using (SqlCommand cmd = new SqlCommand(deleteMain, con))
                {
                    cmd.Parameters.AddWithValue("@BookingID", bookingID);
                    cmd.ExecuteNonQuery();
                }
            }

            // Clear the textbox and show success
            txtDelete.Text = "";
            Response.Write("<script>alert('Booking Cancelled Successfully.');</script>");
            Response.Redirect("Attractions.aspx");
        }
    }
    
    
}