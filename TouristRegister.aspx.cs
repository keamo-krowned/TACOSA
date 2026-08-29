using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TACOSA
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // we want to have placeholder values for ease of use
            txtFName.Attributes["placeholder"] = "John / Jane ";
            txtLName.Attributes["placeholder"] = "Doe";
            txtCOO.Attributes["placeholder"] = "South Africa";
            txtId.Attributes["placeholder"] = "1234567890123";
            txtEmail.Attributes["placeholder"] = "JohnDoe@gmail.com";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidatorCalender_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                args.IsValid = false;
            }
            else if (Calendar1.SelectedDate > DateTime.Today)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void BtnContinue_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.sp_RegisterTourist", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@FirstName", txtFName.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", txtLName.Text.Trim());
                cmd.Parameters.AddWithValue("@DateOfBirth", Calendar1.SelectedDate);
                cmd.Parameters.AddWithValue("@CountryName", txtCOO.Text.Trim());
                cmd.Parameters.AddWithValue("@IdentificationDoc", txtId.Text.Trim());
                cmd.Parameters.AddWithValue("@TouristEmail", txtEmail.Text.Trim());

                try
                {
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            Session["TouristID"] = Convert.ToInt32(reader["NewTouristID"]);
                        }
                    }

                    string fullName = txtFName.Text.Trim() + " " + txtLName.Text.Trim();
                    HttpCookie userCookie = new HttpCookie("TouristCookie");
                    userCookie["Name"] = fullName;
                    Response.Cookies.Add(userCookie);

                    Response.Redirect("homepage.aspx");
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
    }
}