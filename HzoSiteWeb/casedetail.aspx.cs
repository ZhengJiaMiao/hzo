using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;

namespace HzoSiteWeb
{
    
    public partial class casedetail : System.Web.UI.Page
    {
        public _CustomerCase cc;
        protected void Page_Load(object sender, EventArgs e)
        {
            cc= CustomerCase.Get_CustomerCase(int.Parse(Request["id"]));
    }
    }
}