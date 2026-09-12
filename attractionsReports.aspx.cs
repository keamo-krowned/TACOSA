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
    public partial class attractionsReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // when the page loads, we want to display the report for attractions
            if (!IsPostBack)
            {
                // display welcome message from session
                if (Session["name"] != null)
                {
                    string userName = Session["name"].ToString();
                    lblWelcome.Text = "Welcome, " + userName + "!";
                    lblAttraction.Text = "Top 5 attractions report requested by: " + userName;
                }
                else
                {
                    lblWelcome.Text = "Welcome, Guest!";
                }
                // call report INSIDE IsPostBack check
                DisplayAttractionsReport();
            }
        }
        protected void DisplayAttractionsReport()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection("Data Source = tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True;Encrypt=True"))
                {
                    connection.Open(); // open the connection


                    string query = @"
                        SELECT TOP 5
                            a.AttractionName,
                            COUNT(ab.BookingID) AS BookingCount
                        FROM AccBookings ab
                        JOIN Attractions a
                            ON ab.bookingID = a.bookingID
                        GROUP BY a.AttractionName
                        ORDER BY BookingCount DESC";

                    SqlCommand command = new SqlCommand(query, connection); // create the command
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                    {
                        // we want to bind the data to the GridView and Chart
                        GVattractions.DataSource = dataTable;
                        GVattractions.DataBind();

                        // bind chart
                        Chart1.Series["Attractions"].Points.Clear();

                        foreach (DataRow row in dataTable.Rows)
                        {
                            Chart1.Series["Attractions "].Points.AddXY(
                                row["AccommodationName"].ToString(),
                                Convert.ToInt32(row["BookingCount"])
                            );
                        }

                    }
                    else
                    {
                        lblAttraction.Text = "No attraction bookings found.";
                    }
                }
            }
            catch (Exception ex)
            {
                lblAttraction.Text = "Error loading report: " + ex.Message;
            }
        }
    }
} 

