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
    public partial class adminAccommodations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["accMessage"] != null)
                {
                    lblMessage.Text = Session["accMessage"].ToString();
                    Session["accMessage"] = null;
                }
            }
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            string query = "SELECT * FROM Accommodations ORDER BY AccommodationID;";
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int accID;

            try
            {
                accID = Convert.ToInt32(txtDelete.Text.Trim());
            }
            catch (FormatException)
            {
                lblMessage.Text = "Please enter a valid Tourist ID.";
                return;
            }
            catch (OverflowException)
            {
                lblMessage.Text = "Please enter a valid Tourist ID.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            string result = null;
            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.deleteAccommodation", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accID", accID);

                try
                {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            result = reader["Result"].ToString();
                            lblMessage.Text = result;
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblMessage.Text = ex.Message;
                    return;
                }
            }
        }

        protected void btnMainatin_Click(object sender, EventArgs e)
        {
            int accId;

            try
            {
                accId = Convert.ToInt32(txtMaintain.Text.Trim());
            }
            catch (FormatException)
            {
                lblMessage.Text = "Please enter a valid Accommodation ID.";
                return;
            }
            catch (OverflowException)
            {
                lblMessage.Text = "Please enter a valid Accommodation ID.";
                return;
            }

            Session["adminEditAcc"] = accId;
            Response.Redirect("editAccommodation.aspx");
        }

        protected void bntAddNewT_Click(object sender, EventArgs e)
        {
            Response.Redirect("addAccommodation.aspx");
        }
    }
}