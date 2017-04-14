using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;

namespace HzoSiteWeb
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            caseList.DataSource = CustomerCase.GetRecommendDataTable(8);
            caseList.DataBind();

            shareList.DataSource = DryShare.GetRecommendDataTable(2);
            shareList.DataBind();

            newsList.DataSource = News.GetDataTable(10000);
            newsList.DataBind();
        }
    }
}