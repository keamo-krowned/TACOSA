using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TACOSA
{
    public partial class accommodationReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // we want to ensure when page loads theres a  welcome page text with a  welcome label with users name 
            // we get sessions from the reports page and display them in the welcome label


            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                {
                    string userName = Session["Name"].ToString();
                    lblWelcome.Text = "Welcome, " + userName + "!";
                    lblAccPerMonth.Text = "Top 5 accommodations report requested " + userName;
                }
                else
                {
                    lblWelcome.Text = "Welcome, Guest!";
                }
            }
            // call the report display method on initial load
            DisplayAccommodationReport();
        }


        protected void DisplayAccommodationReport()
        {
           
        }
    }
}