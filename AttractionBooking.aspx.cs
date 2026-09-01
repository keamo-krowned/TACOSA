using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TACOSA
{
    public partial class AttractionBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSourceSelectArguments args = new DataSourceSelectArguments();

                DataView data =
                    SqlDataSource1.Select(args) as DataView;

                if (data != null && data.Count > 0)
                {
                    lblName.Text = data[0]["AttractionName"].ToString();

                    lbldescription.Text =
                        data[0]["AttractionDescription"].ToString();

                    lblLocation.Text =
                        data[0]["AttractionLocation"].ToString();

                    lblAvailable.Text = Convert.ToBoolean(data[0]["AttractionAvailableYN"]) ? "Yes" : "No";

                    Rating.Text =
                        data[0]["Rating"].ToString();
                    lblCategory.Text = 
                        "R" +
                        Convert.ToDecimal(data[0]["PricePerDay"])
                        .ToString("N2", CultureInfo.GetCultureInfo("en-ZA"));

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}