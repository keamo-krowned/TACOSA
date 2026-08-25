using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class Attractions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["VisibleCount"] = 6;
                //LoadAttractions();
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnView_Click(object sender, EventArgs e)
        {

        }

        protected void LnkReadMore_Click(object sender, EventArgs e)
        {
            ViewState["VisibleCount"] = (int)ViewState["VisibleCount"] + 6;
            //LoadAttractions();
        }
    }
}