using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class TouristMaintainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void BtnUpdateDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("TouristUpdateDetailsForm.aspx");
        }
    }
}