using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class TouristLoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["TACOSAConnectionString"].ConnectionString;

            string emailInput = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(emailInput))
            {
                lblError.Text = "Please enter an email address";
                return;
            }

            string query = "SELECT TouristID, FirstName, LastName FROM Tourist WHERE TouristEmail = @Email";

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", emailInput);

                    try
                    {
                        conn.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                int touristId = Convert.ToInt32(reader["TouristID"]);
                                string firstName = reader["FirstName"].ToString();
                                string lastName = reader["LastName"].ToString();
                                string fullName = firstName + " " + lastName;

                                Session["TouristID"] = touristId;

                                HttpCookie userCookie = new HttpCookie("TouristCookie");
                                userCookie["Name"] = fullName;
                                userCookie.Expires = DateTime.Now.AddDays(1);
                                Response.Cookies.Add(userCookie);

                                Response.Redirect("homepage.aspx");
                            }
                            else
                            {
                                lblError.Text = "Email not found!";
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = "Database Error: " + ex.Message;
                    }
                }
            }
        }
    }
}