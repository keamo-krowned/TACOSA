using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
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

                string query = "SELECT * FROM Attractions";

                adap = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();

                adap.Fill(dt);

                if (dt.Rows != null && dt.Rows.Count > 0)
                {
                    lblName.Text = dt.Rows[0]["AttractionName"].ToString();

                    lbldescription.Text =
                        dt.Rows[0]["AttractionDescription"].ToString();

                    lblLocation.Text =
                        dt.Rows[0]["AttractionLocation"].ToString();

                    lblAvailable.Text = Convert.ToBoolean(dt.Rows[0]["AttractionAvailableYN"]) ? "Yes" : "No";

                    Rating.Text =
                        dt.Rows[0]["Rating"].ToString();
                    //lblCategory.Text =
                        //"R" +
                        //Convert.ToDecimal(dt.Rows[0]["PricePerDay"])
                        //.ToString("N2", CultureInfo.GetCultureInfo("en-ZA"));
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}