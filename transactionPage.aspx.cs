using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //we wanna ensure that when the user clicks this button , the user is redirected to the previous page to edit any information they want to change
            Response.Redirect("");
        }
    }
}