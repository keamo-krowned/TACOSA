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
                    lblWelcome.Text = "Welcome, " + userName + "!"; // uses cookies from last page to display a welcome message 
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
                using (SqlConnection connection = new SqlConnection("Data Source = tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True;Encrypt=True")) // use conn string to create connection
                {
                    connection.Open(); // open the connection


                    string query = @"
                      SELECT TOP 5
                      a.AttractionName,
                      COUNT(ab.BookingID) AS TotalVisits
                      FROM AttractionBookings ab
                      JOIN Attractions a
                       ON ab.AttractionID = a.AttractionID
                       GROUP BY a.AttractionName
                       ORDER BY TotalVisits DESC"; 

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
                            Chart1.Series["Attractions"].Points.AddXY(
                                row["AttractionName"].ToString(),
                                Convert.ToInt32(row["TotalVisits"])
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

        protected void btnBack_Click(object sender, EventArgs e)
        {
            // when user clicks this it should redirect user to reports page
            Response.Redirect("Reports.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // when user click this button it should export all data to ms excel 
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition",
                "attachment;filename=TopAttractions.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            using (System.IO.StringWriter sw = new System.IO.StringWriter())
            {
                using (System.Web.UI.HtmlTextWriter hw =
                    new System.Web.UI.HtmlTextWriter(sw))
                {
                    GVattractions.RenderControl(hw);
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
    }
    }


