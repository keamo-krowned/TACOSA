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
    public partial class TouristMaintainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userCookie = Request.Cookies["TouristCookie"];

            if (userCookie != null)
            {
                string name = userCookie["Name"];
                lblWelcome.Text = "Welcome back, " + name + "!";
            }

            if (Session["UpdateMessage"] != null)
            {
                lblError.ForeColor = System.Drawing.Color.Green;
                lblError.Text = Session["UpdateMessage"].ToString();
                Session.Remove("UpdateMessage");
            }
        }

        protected void BtnHomePage_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void BtnUpdateDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("TouristUpdateDetailsForm.aspx");
        }

        protected void BtnDeleteAccount_Click(object sender, EventArgs e)
        {
            if (Session["TouristID"] == null)
            {
                Response.Redirect("TouristLoginForm.aspx");
                return;
            }

            int touristId = Convert.ToInt32(Session["TouristID"]);

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.sp_DeleteTourist", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TouristID", touristId);

                try
                {
                    conn.Open();
                    string result = "";

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            result = reader["Result"].ToString();
                        }
                    }

                    if (result == "Success")
                    {
                        Session.Clear();
                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        lblError.Text = "Account not found.";
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
    }
}