using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace TACOSA
{
    public partial class AttractionBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadAttraction();
            }
        }
        private void LoadAttraction()
        {
            string attractionID = Request.QueryString["id"];

            if(string.IsNullOrEmpty(attractionID))
            {
                return;
            }
            string connectionString = ConfigurationManager.ConnectionString["TACOSAConnectionString"].ConnectionString;

            string query = @"
                SELECT *
                FROM Attractions
                WHERE AttractionID = @AttractionID";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@AttractionID", attractionID);

                    SqlDataReader reader = cmd.ExecuteReader();
                    
                    if(reader.Read())
                    {
                        lblName.Text = reader["Name"].ToString();
                        lblCategory.Text = reader["Category"].ToString();
                        Rating.Text = reader["Rating"].ToString();
                        lbldescription.Text = reader["Description"].ToString();
                        lblLocation.Text = reader["Location"].ToString();
                        lblAvailable.Text = reader["Available"].ToString();
                        Image1.ImageUrl = raeder["ImageURL"].ToString();
                    }
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected System.Void Button1_Click(System.Object sender, System.EventArgs e)
        {
            Response.Redirect("transactionPage.aspx");
        }
    }
    }
}