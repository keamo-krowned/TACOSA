using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

    }
}