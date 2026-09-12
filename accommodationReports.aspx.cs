using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class accommodationReports : System.Web.UI.Page
    {
        string connectionString = "Data Source = tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True;Encrypt=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // display welcome message from session
                if (Session["name"] != null)
                {
                    string userName = Session["name"].ToString();
                    lblWelcome.Text = "Welcome, " + userName + "!";
                    lblAccPerMonth.Text = "Top 5 accommodations report requested by: " + userName;
                }
                else
                {
                    lblWelcome.Text = "Welcome, Guest!";
                }

                // call report INSIDE IsPostBack check
                DisplayAccommodationReport();
            }
        }


        protected void DisplayAccommodationReport()
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open(); // open the connection


                    string query = @"
                        SELECT TOP 5
                            a.AccommodationName,
                            COUNT(ab.BookingID) AS BookingCount
                        FROM AccBookings ab
                        JOIN Accommodations a
                            ON ab.AccommodationID = a.AccommodationID
                        GROUP BY a.AccommodationName
                        ORDER BY BookingCount DESC";

                    SqlCommand command = new SqlCommand(query, connection); // create the command
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    if (dataTable.Rows.Count > 0)
                    {
                        // we want to bind the data to the GridView and Chart
                        GVAccommodations.DataSource = dataTable;
                        GVAccommodations.DataBind();

                        // bind chart
                        Chart1.Series["Accommodations"].Points.Clear();

                        foreach (DataRow row in dataTable.Rows)
                        {
                            Chart1.Series["Accommodations"].Points.AddXY(
                                row["AccommodationName"].ToString(),
                                Convert.ToInt32(row["BookingCount"]) 
                            );
                        }
                        
                    }
                    else
                    {
                        lblAccPerMonth.Text = "No accommodation bookings found.";
                    }
                }
            }
            catch (Exception ex)
            {
                // FIXED - now shows the error
                lblAccPerMonth.Text = "Error loading report: " + ex.Message;
            }
        }
    }
}