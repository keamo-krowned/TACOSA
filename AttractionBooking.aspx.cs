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
                    Response.Redirect("Attractions.aspx"); // send them back if no ID
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
                        Image1.ImageUrl = "~/Images/" + imagePath;
                    }
                    else
                    {
                        //just a place holder 
                        Image1.ImageUrl = "~/Images/no-image.png"; 
                    }

                }
            }
        }
        protected void btnBook_Click(object sender, EventArgs e)
        {
            // 1. Check if the page validations passed
            if (Page.IsValid)
            {
                //getting the id again
                string id = Session["AttractionID"] as string;
                if (string.IsNullOrEmpty(id))
                {
                    Response.Redirect("Attractions.aspx");
                    return;
                }

                
                string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

                using (SqlConnection con = new SqlConnection(conStr))
                {
                    con.Open();

                    //get the inputs from the textboxes
                    DateTime bookingDate = Convert.ToDateTime(txtDate.Text);
                    int numOfPeople = Convert.ToInt32(txtVisitors.Text);

                    // 5. Get the PricePerDay for this attraction from the database to calculate the total
                    decimal pricePerPerson = 0;
                    string priceQuery = "SELECT PricePerDay FROM Attractions WHERE AttractionID = @AttractionID";

                    using (SqlCommand priceCmd = new SqlCommand(priceQuery, con))
                    {
                        priceCmd.Parameters.AddWithValue("@AttractionID", id);
                        object result = priceCmd.ExecuteScalar();
                        if (result != null)
                        {
                            pricePerPerson = Convert.ToDecimal(result);
                        }
                    }

                    // Calculate the total cost
                    decimal totalPrice = pricePerPerson * numOfPeople;

                    // 6. Insert the booking into the AttractionBookings table
                    string insertQuery = @"INSERT INTO AttractionBookings 
                                           (AttractionID, BookingDate, NumOfPeople, TotalPriceCharged) 
                                           VALUES 
                                           (@AttractionID, @BookingDate, @NumOfPeople, @TotalPriceCharged)";

                    using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                    {
                        insertCmd.Parameters.AddWithValue("@AttractionID", id);
                        insertCmd.Parameters.AddWithValue("@BookingDate", bookingDate);
                        insertCmd.Parameters.AddWithValue("@NumOfPeople", numOfPeople);
                        insertCmd.Parameters.AddWithValue("@TotalPriceCharged", totalPrice);

                        int rowsAffected = insertCmd.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // total for the transaction page
                            Session["TotalBookingPrice"] = totalPrice;
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
    }
}