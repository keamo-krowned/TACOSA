using System;
using System.Data.SqlClient;

namespace TACOSA
{
    public partial class transactionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // we want to ensure when page loads the text box has placeholder text
            txtCardNO.Attributes["placeholder"] = "123 456 789 0123";
            txtCardholderName.Attributes["placeholder"] = "John Doe/Jane Doe";
            txtCVVNumber.Attributes["placeholder"] = "123";
            CalExpirydate.Attributes["placeholder"] = "Select Expiry Date";
            if (Session["BookingID"]==null)
            {
                lblerror.Text = "No booking was recorded for a transaction to occur.";
                return;
            }
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            try
            {
                
                string connStr = "Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;User ID=systemAdmin;Password= LetsgoTacosa77;TrustServerCertificate=True;";

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(@"
                        INSERT INTO Transactions 
                            (BookingID, Amount, PaymentDate, commission, CardExpiryDate, CardNumber)
                        VALUES 
                            (@BookingID, @Amount, @PaymentDate, @commission, @CardExpiryDate, @CardNumber)",
                        conn);

                    // get BookingID from session
                    cmd.Parameters.AddWithValue("@BookingID", Convert.ToInt16(Session["BookingId"]));

                    // get amount from label - safely handle empty label
                    decimal total = 0;
                    if (!string.IsNullOrEmpty(lblGrandTotal.Text))
                    {
                        decimal.TryParse(lblGrandTotal.Text.Replace("R", "").Trim(), out total);
                    }
                    cmd.Parameters.AddWithValue("@Amount", total);

                    // today's date
                    cmd.Parameters.AddWithValue("@PaymentDate", DateTime.Now);

               

                    // here we are adding our cmd parameters to help us get the values and transfer to database
                    // this also helps prevent sql injections
                    // commission - 10% of total
                    cmd.Parameters.AddWithValue("@commission", total * 0.10m);

                    // card expiry from calendar
                    cmd.Parameters.AddWithValue("@CardExpiryDate",
                        CalExpirydate.SelectedDate == DateTime.MinValue ?
                        (object)DBNull.Value : CalExpirydate.SelectedDate);

                    // card number from textbox
                    cmd.Parameters.AddWithValue("@CardNumber",
                        txtCardNO.Text);

                    cmd.ExecuteNonQuery();
                    conn.Close();

                    // show success and redirect
                    Response.Redirect("confirmationPage.aspx");
                }
            }
            catch (Exception ex)
            {
                // show error
                lblerror.Text = "Payment error: " + ex.Message;
            }
        }

       

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // when user clicks cancel button, redirect to home page
            Response.Redirect("homePage.aspx");
        }
    }
}