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
    public partial class AdminAddNewT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFName.Attributes["placeholder"] = "John / Jane ";
                txtLName.Attributes["placeholder"] = "Doe";
                txtCOO.Attributes["placeholder"] = "South Africa";
                txtId.Attributes["placeholder"] = "1234567890123";
                txtEmail.Attributes["placeholder"] = "JohnDoe@gmail.com";
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
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

                    int newTouristId = 0;

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            newTouristId = Convert.ToInt32(reader["NewTouristID"]);
                        }
                    }

                    string fullName = txtFName.Text.Trim() + " " + txtLName.Text.Trim();

                    Session["UpdateMessage"] = "Tourist \"" + fullName + "\" (ID: " + newTouristId + ") was added successfully.";

                    Response.Redirect("AdminMaintainTourist.aspx");
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}