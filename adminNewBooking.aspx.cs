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
    public partial class adminNewBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtTouristID.Attributes["placeholder"] = "15";
                txtStatus.Attributes["placeholder"] = "Pending";
                
            }
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            try
            {


                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
               
                string bookingID;
                int numPeople = Convert.ToInt32(txtPeople.Text.Trim());
                int rooms = Convert.ToInt32(txtRooms.Text.Trim());
                int accID = Convert.ToInt32(txtAcc.Text.Trim());
                int roomsAvailable;
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    using (SqlCommand cmd = new SqlCommand("createAccBooking", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;

                        using (SqlDataReader reader1 = cmd.ExecuteReader())
                        {
                            cmd.Parameters.AddWithValue("@AccommodationID", accID);
                            if (reader1.Read())
                            {
                                if (numPeople > Convert.ToInt32(reader1["CapacityPerRoom"])* Convert.ToInt32(reader1["RoomsAvailable"]))
                                {
                                    lblError.Text = "The number of guests exceeds the accommodation Capacity." +
                                        "\nPlease Enter an amount that can accommodate enough people per room.";
                                    return;

                                    roomsAvailable = Convert.ToInt32(reader1["RoomsAvailable"]) - rooms;
                                }
                            }
                        }

                        cmd.Parameters.AddWithValue("@AccommodationID", accID);
                        cmd.Parameters.AddWithValue("@TouristID", Convert.ToInt32(txtTouristID.Text.Trim()));
                        cmd.Parameters.AddWithValue("@status", txtStatus.Text.Trim());
                        cmd.Parameters.AddWithValue("@TotalPriceCharged", Convert.ToDecimal(txtGrandPrice.Text));
                        cmd.Parameters.AddWithValue("@NumOfPeople", numPeople);
                        cmd.Parameters.AddWithValue("@NumOfRooms", rooms);
                        cmd.Parameters.AddWithValue("@CheckInDate", Convert.ToDateTime(Calendar1.SelectedDate));
                        cmd.Parameters.AddWithValue("@CheckOutDate", Convert.ToDateTime(Calendar2.SelectedDate));

                        
                        
                        try
                        {
                            conn.Open();

                            using (SqlDataReader reader2 = cmd.ExecuteReader())
                            {
                                if (reader2.Read())
                                {


                                    bookingID = reader2["BookingID"].ToString();
                                    Session["BookingsMessage"] = "New Accommodation booking ID: " + bookingID + " created successfully.";
                                    Response.Redirect("adminBookings.aspx");
                                }
                            }
                        }
                        catch (SqlException ex)
                        {
                            lblError.Text = ex.Message;
                            return;
                        }
                    }
                }
                

            }
            catch (SqlException ex)
            {
                lblError.Text = ex.Message;
            }
            
        }

        

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

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
            else if(Calendar2.SelectedDate< Calendar1.SelectedDate)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {

        }
    }
}