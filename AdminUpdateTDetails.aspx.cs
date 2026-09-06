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
    public partial class AdminUpdateTDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int touristId = Convert.ToInt32(Session["AdminEditTouristID"]);
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                string query = @"SELECT t.FirstName, t.LastName, t.DateOfBirth, t.IdentificationDoc, t.TouristEmail, c.CountryName
                                  FROM dbo.Tourist t
                                  LEFT JOIN dbo.CountryOfOrigin c ON t.CountryID = c.CountryID
                                  WHERE t.TouristID = @TouristID";

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@TouristID", touristId);

                    try
                    {
                        conn.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtFName.Text = reader["FirstName"].ToString();
                                txtLName.Text = reader["LastName"].ToString();
                                txtCOO.Text = reader["CountryName"].ToString();
                                txtId.Text = reader["IdentificationDoc"].ToString();
                                txtEmail.Text = reader["TouristEmail"].ToString();

                                DateTime dob = Convert.ToDateTime(reader["DateOfBirth"]);
                                Calendar1.SelectedDate = dob;
                                Calendar1.VisibleDate = dob;
                            }
                            else
                            {
                                lblError.Text = "Could not find tourist details.";
                                btnSubmitChanges.Enabled = false;
                            }
                        }
                    }
                    catch (SqlException ex)
                    {
                        lblError.Text = ex.Message;
                    }
                }
            }
        }

        protected void btnSubmitChanges_Click(object sender, EventArgs e)
        {
            if (Session["AdminEditTouristID"] == null)
            {
                lblError.Text = "No tourist selected.";
                return;
            }

            int touristId = Convert.ToInt32(Session["AdminEditTouristID"]);

            string firstName = txtFName.Text.Trim();
            string lastName = txtLName.Text.Trim();
            string country = txtCOO.Text.Trim();
            string idDoc = txtId.Text.Trim();
            string email = txtEmail.Text.Trim();
            DateTime dob = Calendar1.SelectedDate;

            if (firstName == "" && lastName == "" && country == "" && idDoc == "" && email == "" && dob == DateTime.MinValue)
            {
                lblError.Text = "No fields changed.";
                return;
            }

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            string origQuery = @"SELECT t.FirstName, t.LastName, t.DateOfBirth, t.IdentificationDoc, t.TouristEmail, c.CountryName
                                  FROM dbo.Tourist t
                                  LEFT JOIN dbo.CountryOfOrigin c ON t.CountryID = c.CountryID
                                  WHERE t.TouristID = @TouristID";

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand origCmd = new SqlCommand(origQuery, conn))
            {
                origCmd.Parameters.AddWithValue("@TouristID", touristId);

                try
                {
                    conn.Open();

                    using (SqlDataReader reader = origCmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            if (firstName == "") firstName = reader["FirstName"].ToString();
                            if (lastName == "") lastName = reader["LastName"].ToString();
                            if (country == "") country = reader["CountryName"].ToString();
                            if (idDoc == "") idDoc = reader["IdentificationDoc"].ToString();
                            if (email == "") email = reader["TouristEmail"].ToString();
                            if (dob == DateTime.MinValue) dob = Convert.ToDateTime(reader["DateOfBirth"]);
                        }
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                    return;
                }
            }

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.sp_UpdateTouristDetails", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TouristID", touristId);
                cmd.Parameters.AddWithValue("@FirstName", firstName);
                cmd.Parameters.AddWithValue("@LastName", lastName);
                cmd.Parameters.AddWithValue("@CountryName", country);
                cmd.Parameters.AddWithValue("@IdentificationDoc", idDoc);
                cmd.Parameters.AddWithValue("@TouristEmail", email);
                cmd.Parameters.AddWithValue("@DateOfBirth", dob);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    Session["AdminEditTouristID"] = null;
                    Session["UpdateMessage"] = "Tourist details updated successfully.";
                    Response.Redirect("AdminMaintainTourist.aspx");
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }
    }
}