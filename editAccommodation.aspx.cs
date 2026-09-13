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
    public partial class editAccommodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int accID = Convert.ToInt32(Session["adminEditAcc"]);
                string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

                string query = @"SELECT AccommodationName, AccommodationDescription,
                                AccommodationLocation, AccommodationCellNumber, 
                                AccommodationEmail, PricePerNight, CapacityPerRoom, 
                                Rating, RoomTypeName, RoomsAvailable, ImagePath, ImagePath2,
                                ImagePath3
                                FROM Accommodations
                                WHERE AccommodationID = @accID;";

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@accID", accID);

                    try
                    {
                        conn.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtName.Text = reader["AccommodationName"].ToString();
                                txtDescr.Text = reader["AccommodationDescription"].ToString();
                                txtCell.Text = reader["AccommodationCellNumber"].ToString();
                                txtEmail.Text = reader["AccommodationEmail"].ToString();
                                txtLocation.Text = reader["AccommodationLocation"].ToString();
                                txtPrice.Text = Convert.ToDecimal(reader["PricePerNight"]).ToString("F2");
                                ddlCapacity.SelectedValue = Convert.ToInt32(reader["CapacityPerRoom"]).ToString();
                                txtRating.Text = Convert.ToDecimal(reader["Rating"]).ToString("F1");
                                txtRoomType.Text = reader["RoomTypeName"].ToString();
                                ddlAvailable.SelectedValue = Convert.ToInt32(reader["RoomsAvailable"]).ToString();
                                txtPath1.Text= reader["ImagePath"].ToString();
                                txtPath2.Text = reader["ImagePath2"].ToString();
                                txtPath3.Text = reader["ImagePath3"].ToString();
                            }
                            else
                            {
                                lblError.Text = "Could not find tourist details.";
                                btnAdd.Enabled = false;
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

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Session["adminEditAcc"] == null)
            {
                lblError.Text = "No Accommodation selected.";
                return;
            }

            int accID = Convert.ToInt32(Session["adminEditAcc"]);

            string name = txtName.Text;
            string descr = txtDescr.Text;
            string cell = txtCell.Text;
            string email = txtEmail.Text;
            string location = txtLocation.Text;
            decimal price = Convert.ToDecimal(txtPrice.Text);
            int cap = int.Parse(ddlCapacity.SelectedValue);
            decimal rating = Convert.ToDecimal(txtRating.Text);
            string roomType = txtRoomType.Text;
            int availableRooms = int.Parse(ddlAvailable.SelectedValue);
            string path1 = txtPath1.Text;
            string path2 = txtPath2.Text;
            string path3 = txtPath3.Text;

            
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.editAccommodations", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@accID", accID);
                cmd.Parameters.AddWithValue("@accName", name);
                cmd.Parameters.AddWithValue("@descr", descr);
                cmd.Parameters.AddWithValue("@location", location);
                cmd.Parameters.AddWithValue("@cellNo", cell);
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@cap", cap);
                cmd.Parameters.AddWithValue("@rate", rating);
                cmd.Parameters.AddWithValue("@room", roomType);
                cmd.Parameters.AddWithValue("@avail", availableRooms);
                cmd.Parameters.AddWithValue("@img1", path1);
                cmd.Parameters.AddWithValue("@img2", path2);
                cmd.Parameters.AddWithValue("@img3", path3);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();

                    Session["adminEditAcc"] = null;
                    Session["accMessage"] = "Accommodation details updated successfully.";
                    Response.Redirect("adminAccommodations.aspx");
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
        }

        protected void txtName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtLocation_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtRoomType_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPath1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}