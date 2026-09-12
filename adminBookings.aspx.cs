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
    public partial class adminBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["BookingsMessage"]!=null)
                {
                    string message = Session["BookingsMessage"].ToString();
                    lblMessage.Text = message;
                }
               
            }
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("dbo.adminSelectBookings", conn))
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int BookingID;

            try
            {
                BookingID = Convert.ToInt32(txtDelete.Text.Trim());
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
            using (SqlCommand cmd = new SqlCommand("dbo.adminDeleteBookings", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@BookingID", BookingID);

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

            if (result == "Bookings deleted successfully.")
            {
                lblMessage.Text = result;
                txtDelete.Text = "";

                using (SqlConnection conn = new SqlConnection(connStr))
                using (SqlCommand cmd = new SqlCommand("dbo.adminDeleteBookings", conn))
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

        protected void btnMainatin_Click(object sender, EventArgs e)
        {
            int bookingID;

            try
            {
                bookingID = Convert.ToInt32(txtMaintain.Text.Trim());
            }
            catch (FormatException)
            {
                lblMessage.Text = "Please enter a valid Booking ID.";
                return;
            }
            catch (OverflowException)
            {
                lblMessage.Text = "Please enter a valid Booking ID.";
                return;
            }

            Session["adminEditBookings"] = bookingID;
            Response.Redirect("adminUpdateBooking.aspx");
        }

        protected void bntAddNewT_Click(object sender, EventArgs e)
        {

        }
    }
}