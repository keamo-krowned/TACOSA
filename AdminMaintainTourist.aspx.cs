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
    public partial class AdminMaintainTourist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UpdateMessage"] != null)
                {
                    lblMessage.Text = Session["UpdateMessage"].ToString();
                    Session["UpdateMessage"] = null;
                }
            }
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.sp_GetAllTourists", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

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

        protected void btnMainatin_Click(object sender, EventArgs e)
        {
            int touristId;

            try
            {
                touristId = Convert.ToInt32(txtMaintain.Text.Trim());
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

            Session["AdminEditTouristID"] = touristId;
            Response.Redirect("AdminUpdateTDetails.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int touristId;

            try
            {
                touristId = Convert.ToInt32(txtDelete.Text.Trim());
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
            using (SqlCommand cmd = new SqlCommand("dbo.sp_DeleteTourist", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TouristID", touristId);

                try
                {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            result = reader["Result"].ToString();
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblMessage.Text = ex.Message;
                    return;
                }
            }

            if (result == "Success")
            {
                lblMessage.Text = "Tourist and related bookings deleted successfully.";
                txtDelete.Text = "";

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand("dbo.sp_GetAllTourists", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

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
            else
            {
                lblMessage.Text = "Delete did not complete as expected.";
            }
        }
    }
}