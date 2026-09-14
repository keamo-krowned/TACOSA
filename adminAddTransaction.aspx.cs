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
    public partial class adminAddTransaction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (CalExpirydate.SelectedDate == DateTime.MinValue)
            {
                args.IsValid = false;
            }
            else if (CalExpirydate.SelectedDate < DateTime.Today)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
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
            {
                try
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("dbo.adminNewTransaction", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        double commission = Convert.ToDouble(txtAmount.Text) * 0.15;

                        cmd.Parameters.AddWithValue("@bID", Convert.ToInt16(txtBooking.Text.Trim()));
                        cmd.Parameters.AddWithValue("@amount", Convert.ToDecimal(txtAmount.Text.Trim()));
                        cmd.Parameters.AddWithValue("@date", CalPayDate.SelectedDate);
                        cmd.Parameters.AddWithValue("@comm", Convert.ToDecimal(commission));
                        cmd.Parameters.AddWithValue("@expireDate", CalExpirydate.SelectedDate);
                        cmd.Parameters.AddWithValue("@card", txtCardNO1.Text);


                        int newbID = 0;

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                newbID = Convert.ToInt32(reader["newAccID"]);
                            }
                        }


                        Session["tranMessage"] = "Transaction (ID: " + newbID+ ") was added successfully.";

                        Response.Redirect("adminTransactions.aspx");
                    }
                }
                catch (SqlException ex)
                {
                    lblError.Text = ex.Message;
                }
            }
            
            
        }

        
        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(CalPayDate.SelectedDate> DateTime.Today)
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}