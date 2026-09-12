using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class addAccommodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            try
            {
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    using (SqlCommand cmd = new SqlCommand("dbo.addAccommodation", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@accName", txtName.Text.Trim());
                        cmd.Parameters.AddWithValue("@descr", txtDescr.Text.Trim());
                        cmd.Parameters.AddWithValue("@location", txtLocation.Text.Trim());
                        cmd.Parameters.AddWithValue("@cellNo", txtCell.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@price", Convert.ToDecimal(txtPrice.Text.Trim()));
                        cmd.Parameters.AddWithValue("@cap", Convert.ToInt32(ddlCapacity.SelectedValue));
                        cmd.Parameters.AddWithValue("@rate", Convert.ToDecimal(txtRating.Text.Trim()));
                        cmd.Parameters.AddWithValue("@room", (txtRoomType.Text.Trim()));
                        cmd.Parameters.AddWithValue("@avail", Convert.ToInt32(ddlCapacity.SelectedValue));

                        conn.Open();

                        int accID = 0;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                accID = Convert.ToInt32(reader["newAccID"]);
                            }
                        }


                        Session["accMessage"] = txtName.Text.Trim() + " (ID: " + accID + ") was added successfully.";

                        Response.Redirect("adminAccommodations.aspx");
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