using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class adminTransactions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["tranMessage"] != null)
                {
                    lblMessage.Text = Session["tranMessage"].ToString();
                    Session["tranMessage"] = null;
                }
            }
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            string query = "SELECT * FROM Transactions ORDER BY TransactionID;";
            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {

                try
                {
                    conn.Open();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (SqlException ex)
                {
                    lblMessage.Text = ex.Message;
                }
            }
        }

        protected void bntAddNewT_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminAddTransaction.aspx");
        }

        
    }
}