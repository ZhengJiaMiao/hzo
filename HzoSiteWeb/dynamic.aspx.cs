using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;

namespace HzoSiteWeb
{
    public partial class dynamic : System.Web.UI.Page
    {
        int pagecount, recordcount;
        protected void Page_Load(object sender, EventArgs e)
        {
            shareList.DataSource =  DryShare.GetPageDataTable("", "", 1, 6, out pagecount, out recordcount);
            shareList.DataBind();

            newsList.DataSource = News.GetPageDataTable("", "", 1, 6, out pagecount, out recordcount);
            newsList.DataBind();
        }
    }
}