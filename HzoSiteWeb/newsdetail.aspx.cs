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
    public partial class newsdetail : System.Web.UI.Page
    {
        public _News ds;
        public string prevId;
        public string nextId;
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = News.Get_News(int.Parse(Request["id"]));
            DataTable prev = News.GetLastNextData("last", int.Parse(Request["id"]));
            if(prev.Rows.Count <= 0)
            {
                prevId = "<a href=\" javascript:void(0)\" class=\"detail-btn l\">< 上一篇</a>";
            } else
            {
                prevId = "<a href=\" /newsdetail/"+prev.Rows[0]["Id"]+".html\" class=\"detail-btn l\">< 上一篇</a>";
            }
            DataTable next = News.GetLastNextData("next", int.Parse(Request["id"]));
            if (next.Rows.Count <= 0)
            {
                nextId = "<a href=\" javascript:void(0)\" class=\"detail-btn r\">下一篇 ></a>";
            }
            else
            {
                nextId = "<a href=\" /newsdetail/" + next.Rows[0]["Id"] + ".html\" class=\"detail-btn r\">下一篇 ></a>";
            }
        }
    }
}