using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                lblZeroBookings.Visible = true;
                lblZeroBookings.Text = Session["TouristMessage"].ToString();
            }
            loadBookings();
        }

        
        private void loadBookings()
        {
            int touristID = Convert.ToInt16(Session["TouristID"]);
            if (Session["TouristID"] == null)
            {
                lblZeroBookings.Text = "You have not logged in yet.";
                lblZeroBookings.Visible = true;
                Response.Redirect("TouristRegister.aspx");
            }

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("displayBookings", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@TouristID", touristID);

                    using(SqlDataReader read = cmd.ExecuteReader())
                    {
                        if(!read.HasRows)
                        {
                            lblZeroBookings.Visible = true;
                            return;
                        }
                        while(read.Read())
                        {
                            
                            
                            string status = read["BookingStatus"].ToString();
                            string name = read["AccommodationName"].ToString();
                            int id = Convert.ToInt32(read["BookingID"].ToString());
                            int guests = Convert.ToInt16(read["NumOfPeople"].ToString());
                            DateTime inDate = Convert.ToDateTime(read["CheckInDate"].ToString());
                            DateTime outDate = Convert.ToDateTime(read["CheckOutDate"].ToString());
                            decimal price = Convert.ToDecimal(read["TotalPriceCharged"]);
                            string imgPath = read["ImagePath"].ToString();

                                //create session for accommodationID
                                Session["AccID"] = read["AccommodationID"].ToString();

                            //create the booking card dynamically
                            HtmlGenericControl bookingCard = new HtmlGenericControl("div");
                            bookingCard.Attributes["class"] = "cardCss";

                            //make an image section in the div
                            HtmlGenericControl bookingImg = new HtmlGenericControl("div");
                            Image smallPic = new Image();
                            bookingImg.Attributes["class"] = "imgCss";
                            smallPic.ImageUrl = imgPath;
                            bookingImg.Controls.Add(smallPic);
                            

                            //then I add the details 
                            HtmlGenericControl bookingText = new HtmlGenericControl("div");
                            bookingText.Attributes["class"] = "bookingTextCss";

                                bookingText.InnerHtml = $@"
                                <h3>{name}</h3>
                                <p> <strong>Booking ID:</strong> {id} </p>
                                <p>Guest: {guests}</p>
                                <p>Check-in: {inDate:dd/MM/yyyy}</p>
                                <p>Check-out: {outDate:dd/MM/yyyy}</p>
                                <p>Price: {price:N2}</p>
                                <p>Status: {status}</p>";

                            if(status == "Pending")
                            {
                                //html for hyperlinks
                                HtmlGenericControl lnkSpan = new HtmlGenericControl("span");


                                lnkSpan.Attributes["class"] = "buttonDiv";

                                //hyperlink for transactions
                                HyperLink lnkPay = new HyperLink();

                                lnkPay.Text = "PAY";
                                lnkPay.CssClass = "buttons";
                                lnkPay.NavigateUrl = "transactionPage.aspx?id="+id;
                                lnkSpan.Controls.Add(lnkPay);


                                // changing details hyperlinks
                                HyperLink lnkUpdate = new HyperLink();
                                lnkUpdate.Text = "CHANGE DETAILS";
                                lnkUpdate.CssClass = "buttons";
                                lnkUpdate.NavigateUrl = "UpdateBooking.aspx?BookingID=" + id;
                                lnkSpan.Controls.Add(lnkUpdate);


                                // delete bookings hyperlink
                                HyperLink lnkDelete = new HyperLink(); 
                                lnkDelete.Text = "DELETE";
                                lnkDelete.CssClass = "buttons";
                                lnkDelete.NavigateUrl = "DeleteBooking.aspx";
                                lnkSpan.Controls.Add(lnkDelete);

                                bookingText.Controls.Add(lnkSpan);
                            }

                            //add all elements inside the booking card
                            bookingCard.Controls.Add(bookingImg);
                            bookingCard.Controls.Add(bookingText);

                                MainContainer.Controls.Add(bookingCard);

                                
                            }
                        }
                    }
                }
                catch(SqlException ex)
                {
                    lblZeroBookings.Visible = true;
                    lblZeroBookings.Text = ex.Message;
                }
                
            }
                
        }
    }
}