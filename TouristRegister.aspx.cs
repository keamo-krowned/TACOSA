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

            string connStr = ConfigurationManager.ConnectionStrings["TACOSAConnectionString"].ConnectionString;

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
                    int newId = Convert.ToInt32(cmd.ExecuteScalar());

                    if (newId == -1)
                    {
                        lblError.Text = "A tourist with this ID document already exists.";
                    }
                    else
                    {
                        Response.Redirect("Accommodations.aspx");
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