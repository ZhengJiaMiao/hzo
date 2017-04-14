using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;
using System.Data;

namespace HzoSiteWeb
{
    public partial class _case : System.Web.UI.Page
    {
        int pagecount, recordcount;
        protected void Page_Load(object sender, EventArgs e)
        {
            caseList.DataSource = CustomerCase.GetPageDataTable("", "", 1,8, out pagecount, out recordcount);
            caseList.DataBind();
        }
    }
}