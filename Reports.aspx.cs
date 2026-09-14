using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // we are gonna create some cookies for the purpose of storing the user's preferences for the reports page

            // create a cookie to store the user's selected report type
            Session["Name"] = txtName.Text;
            Session["Surname"] = txtSurname.Text;
            Session["Email"] = txtEmail.Text;
            Session["reportType"] = DropDownList1.SelectedValue;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // when user clicks the button, redirect to the Reports.aspx page or the appropriate page for generating reports
            if (RadioButton1.Checked)
            {
                Response.Redirect("accommodationReports.aspx");
            }
            else if (RadioButton2.Checked)
            {
                Response.Redirect("attractionsReports.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // when user clicks the cancel button, redirect to the Home.aspx page
            Response.Redirect("Home.aspx");
        }
    }
}