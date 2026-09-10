using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TACOSA
{
    public partial class Attractions : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adap;
        DataSet ds;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string conStr = @"Data Source=tacosapro2026.database.windows.net;Initial Catalog=cmpg-TacosaProject;Persist Security Info=True;User ID=systemAdmin;Password=LetsgoTacosa77;TrustServerCertificate=True";

                con = new SqlConnection(conStr);

                string query = "SELECT * FROM Attractions";

                adap = new SqlDataAdapter(query, con);

                DataTable dt = new DataTable();

                adap.Fill(dt);


                Label[] names =
                {
                    lblName1,
                    lblName2,
                    lblName3,
                    lblName4,
                    lblName5,
                    lblName6,
                    lblName7,
                    lblName8,
                    lblName9,
                    lblName10,
                    lblName11,
                    lblName12,
                    lblName13,
                    lblName14,
                    lblName15,
                    lblName16,
                    lblName17,
                    lblName18
                };

                Label[] descriptions =                     
                {
                    lblDescr1,
                    lblDescr2,
                    lblDescr3,
                    lblDescr4,
                    lblDescr5,
                    lblDescr6,
                    lblDescr7,
                    lblDescr8,
                    lblDescr9,
                    lblDescr10,
                    lblDescr11,
                    lblDescr12,
                    lblDescr13,
                    lblDescr14,
                    lblDescr15,
                    lblDescr16,
                    lblDescr17,
                    lblDescr18
                };

                Label[] locations =                     
                {
                    lblLocation1,
                    lblLocation2,
                    lblLocation3,
                    lblLocation4,
                    lblLocation5,
                    lblLocation6,
                    lblLocation7,
                    lblLocation8,
                    lblLocation9,
                    lblLocation10,
                    lblLocation11,
                    lblLocation12,
                    lblLocation13,
                    lblLocation14,
                    lblLocation15,
                    lblLocation16,
                    lblLocation17,
                    lblLocation18
                };

                Label[] ratings =                     
                {
                    lblRating1,
                    lblRating2,
                    lblRating3,
                    lblRating4,
                    lblRating5,
                    lblRating6,
                    lblRating7,
                    lblRating8,
                    lblRating9,
                    lblRating10,
                    lblRating11,
                    lblRating12,
                    lblRating13,
                    lblRating14,
                    lblRating15,
                    lblRating16,
                    lblRating17,
                    lblRating18
                };

                Label[] prices =                     
                {
                    lblPrice1,
                    lblPrice2,
                    lblPrice3,
                    lblPrice4,
                    lblPrice5,
                    lblPrice6,
                    lblPrice7,
                    lblPrice8,
                    lblPrice9,
                    lblPrice10,
                    lblPrice11,
                    lblPrice12,
                    lblPrice13,
                    lblPrice14,
                    lblPrice15,
                    lblPrice16,
                    lblPrice17,
                    lblPrice18
                };
                Label[] availabilities =
                {
                    lblAvailable1,
                    lblAvailable2,
                    lblAvailable3,
                    lblAvailable4,
                    lblAvailable5,
                    lblAvailable6,
                    lblAvailable7,
                    lblAvailable8,
                    lblAvailable9,
                    lblAvailable10,
                    lblAvailable11,
                    lblAvailable12,
                    lblAvailable13,
                    lblAvailable14,
                    lblAvailable15,
                    lblAvailable16,
                    lblAvailable17,
                    lblAvailable18
                };

                for (int i = 0; i < dt.Rows.Count && i < names.Length; i++)
                {
                    names[i].Text = dt.Rows[i]["AttractionName"].ToString();
                    descriptions[i].Text = dt.Rows[i]["AttractionDescription"].ToString();
                    locations[i].Text = dt.Rows[i]["AttractionLocation"].ToString();
                    ratings[i].Text = "⭐" + dt.Rows[i]["Rating"].ToString();
                    prices[i].Text = "R" + Convert.ToDecimal(dt.Rows[i]["PricePerDay"]).ToString("0.00") + " /day";
                    if (Convert.ToBoolean(dt.Rows[i]["AttractionAvailableYN"]))
                    {

                        availabilities[i].Text = "Available";
                    }
                    else
                    {
                        availabilities[i].Text = "Not Available";
                    }
                }

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
            
        }

        protected void btnViewDetails2_Click(object sender, EventArgs e)
        {

        }

        protected void btnViewDetails_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;

            string attractionID = btn.CommandArgument;

            Session["AttractionID"] = attractionID;

            Response.Cookies["AttractionID"].Value = attractionID;

            Response.Redirect("AttractionBooking.aspx");
        }
    }
}