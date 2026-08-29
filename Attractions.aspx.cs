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
                DataSourceSelectArguments args = new DataSourceSelectArguments();

                System.Data.DataView data = SqlDataSource1.Select(args) as System.Data.DataView;

                if (data != null)
                {
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
                        lblName12
                    };

                    Label[] descriptions =                     {
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
                        lblDescr12
                    };

                    Label[] locations =                     {
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
                        lblLocation12
                    };

                    Label[] ratings =                     {
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
                        lblRating12
                    };

                    Label[] prices =                     {
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
                        lblPrice12
                    };
                    Label[] availabilities =                     {
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
                        lblAvailable12
                    };

                    for(int i = 0; i < data.Count && i < names.Length; i++)
                    {
                        names[i].Text = data[i]["AttractionName"].ToString();
                        descriptions[i].Text = data[i]["AttractionDescription"].ToString();
                        locations[i].Text = data[i]["AttractionLocation"].ToString();
                        ratings[i].Text = "⭐" + data[i]["Rating"].ToString();
                        prices[i].Text = "R" + Convert.ToDecimal(data[i]["PricePerDay"]).ToString("0.00") + " /day";
                        if (Convert.ToBoolean(data[i]["AttractionAvailableYN"]))
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