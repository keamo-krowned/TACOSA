using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
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
                        ORDER BY BookingCount DESC"; // sql statement to get top 5 accommodations based on number of bookings and accommodationIDs for the month

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
                //shows an error
                lblAccPerMonth.Text = "Error loading report: " + ex.Message;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // when user clicks this event , itll take everything to excel

            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition",
                "attachment;filename=TopAccommodations.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (System.IO.StringWriter sw = new System.IO.StringWriter())
            {
                using (System.Web.UI.HtmlTextWriter hw =
                    new System.Web.UI.HtmlTextWriter(sw))
                {
                    GVAccommodations.RenderControl(hw);
                    Response.Output.Write(sw.ToString());
                    Response.Flush();
                    Response.End();
                }
            }

        }
            
public override void VerifyRenderingInServerForm(Control control)
        {
            // intentionally left empty - allows GridView to render outside form
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // when user clicks this,it must return to reports page
            Response.Redirect("Reports.aspx");
        }
    }
    }
    
