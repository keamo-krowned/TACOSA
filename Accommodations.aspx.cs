using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class Accommodations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hlkAcc.Attributes["style"] = "color: white !important;";
            hlkAcc.BackColor = System.Drawing.ColorTranslator.FromHtml("#6B4226");
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}