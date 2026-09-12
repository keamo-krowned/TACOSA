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
                txtType.Attributes["placeholder"] = "Accommodation";
                txtStatus.Attributes["placeholder"] = "Pending";
                
            }
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            try
            {


                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
               
                string type = txtType.Text.Trim();
                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    using (SqlCommand cmd = new SqlCommand("query", conn))
                    {
                        
                        if (type != "Attraction" || type != "Accommodation")
                        {
                            lblError.Text = "Please enter either 'Attraction' or 'Accomodation' \nas the booking type";
                            return;
                        }
                        cmd.Parameters.AddWithValue("@touristID", txtTouristID.Text.Trim());
                        cmd.Parameters.AddWithValue("@bookingType", type);
                        cmd.Parameters.AddWithValue("@bookingStatus", txtStatus.Text.Trim());


                    }
                }
                Session["BookingsMessage"] = "New " + type + " booking created successfully.";
                Response.Redirect("adminBookings.aspx");

            }
            catch (SqlException ex)
            {
                lblError.Text = ex.Message;
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
            else if(Calendar2.SelectedDate< Calendar1.SelectedDate)
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