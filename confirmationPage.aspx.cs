using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class confirmationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // WE take the bookingID from the session and display it on the confirmation page
            if (Session["bookingID"] != null)
            {
                lblBookingID.Text = Session["bookingID"].ToString();
            }
            else
            {
                lblBookingID.Text = "No booking ID found.";
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            // when user clicks this button, we want to ensure that the user is redirected to the home page
            Response.Redirect("homePage.aspx");
        }

        protected void btnNextBooking_Click(object sender, EventArgs e)
        {
            // when user clicks this button, we want to ensure that the user is redirected to the booking page
            Response.Redirect("bookingPage.aspx");
        }
    }
}