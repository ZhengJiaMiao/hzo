using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;

namespace HzoSiteWeb.ascx
{
    public partial class footer : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            flinklist.DataSource = FriendshipLink.Get_DataTable(1000);
            flinklist.DataBind();
        }
    }
}