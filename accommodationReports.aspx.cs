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
        } // here we want to load our display method so as soon as the page loads it will display the report
        Load DisplayAccommodationReport();


        protected void DisplayAccommodationReport()
        {
            // we want to display our report using sql data and display our information in a chart and table format.
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;User ID=systemAdmin;Password=***********");
                conn.Open(); // we then open our sql connection 

                conn.Close(); // close our connection
            }

        }
    }
}