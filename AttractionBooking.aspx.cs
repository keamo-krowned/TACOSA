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
    public partial class AttractionBooking : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

                con = new SqlConnection(conStr);

                string query = "SELECT * FROM Attractions WHERE AttractionID = @AttractionID";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@AttractionID", Request.QueryString["id"]);

                adap = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                adap.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    lblName.Text = dt.Rows[0]["AttractionName"].ToString();

                    lbldescription.Text =
                        dt.Rows[0]["AttractionDescription"].ToString();

                    lblLocation.Text =dt.Rows[0]["AttractionLocation"].ToString();

                    lblAvailable.Text =
                        Convert.ToBoolean(dt.Rows[0]["AttractionAvailableYN"]) ? "Yes": "No";

                    Rating.Text =
                        dt.Rows[0]["Rating"].ToString();

                    lblCategory.Text =
                        "R" + Convert.ToDecimal(dt.Rows[0]["PricePerDay"])
                        .ToString("N2", CultureInfo.GetCultureInfo("en-ZA"));
                }
            }
        }


        protected System.Void Button1_Click(System.Object sender, System.EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            Response.Redirect("transactionPage.aspx");
        }

    }
}