using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TACOSA
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lblAbout_Click(object sender, EventArgs e)
        {
            pnlAbout.Visible = true;
            pnlContact.Visible = false;
            pnlHelp.Visible = false;

            ScriptManager.RegisterStartupScript(
                this,
                this.GetType(),
                "scrollAbout",
                "document.getElementById('" + pnlAbout.ClientID + "').scrollIntoView({behavior:'smooth', block:'center'});",
                true
            );
        }

        protected void lblContact_Click(object sender, EventArgs e)
        {
            pnlAbout.Visible = false;
            pnlContact.Visible = true;
            pnlHelp.Visible = false;

            ScriptManager.RegisterStartupScript(
                this,
                this.GetType(),
                "scrollContact",
                "document.getElementById('" + pnlContact.ClientID + "').scrollIntoView({behavior:'smooth', block:'center'});",
                true
            );
        }

        protected void lblHelp_Click(object sender, EventArgs e)
        {
            pnlAbout.Visible = false;
            pnlContact.Visible = false;
            pnlHelp.Visible = true;

            ScriptManager.RegisterStartupScript(
                this,
                this.GetType(),
                "scrollHelp",
                "document.getElementById('" + pnlHelp.ClientID + "').scrollIntoView({behavior:'smooth', block:'center'});",
                true
            );
        }
    }
}