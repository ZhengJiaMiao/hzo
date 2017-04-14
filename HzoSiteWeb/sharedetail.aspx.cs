using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataCenter;
using System.Data;
using System.Web.Caching;

namespace HzoSiteWeb
{
    public partial class sharedetail : System.Web.UI.Page
    {
        public _DryShare ds;
        public string prevId;
        public string nextId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["shareId"] != null)
            {
                if(!Request.Cookies["shareId"].Value.Contains(Request["id"] + ",") && !Request.Cookies["shareId"].Value.Contains("," + Request["id"]))
                {
                    //Response.Cookies["shareId"].Value = Request.Cookies["shareId"].Value + "," + Request["id"];
                    HttpCookie hc = new HttpCookie("shareId", Request.Cookies["shareId"].Value + "," + Request["id"]);
                    string url = HttpContext.Current.Request.Url.Host;
                    hc.Domain = "."+url;
                    hc.Expires = DateTime.Now.AddDays(30);
                    Response.AppendCookie(hc);
                }
            }
            else
            {
                HttpCookie hc = new HttpCookie("shareId", Request["id"]);
                string url = HttpContext.Current.Request.Url.Host;
                    hc.Domain = "."+url;
                hc.Expires = DateTime.Now.AddDays(30);
                Response.AppendCookie(hc);
            }

            //if (Cache["shareId"] != null)
            //{
            //    if(!Cache["shareId"].ToString().Contains(Request["id"] + ",") && !Cache["shareId"].ToString().Contains("," + Request["id"]))
            //    {
            //        Cache["shareId"] = Request["id"] + "," + Cache["shareId"];
            //    }
            //} else
            //{
            //    Cache["shareId"] = Request["id"];
            //}
            shareList.DataSource = DryShare.GetDataTable(3, Request.Cookies["shareId"].Value);
            shareList.DataBind();
            ds = DryShare.Get_DryShare(int.Parse(Request["id"]));
            DataTable prev = DryShare.GetLastNextData("last", int.Parse(Request["id"]));
            if (prev.Rows.Count <= 0)
            {
                prevId = "<a href=\" javascript:void(0)\" class=\"detail-btn l\">< 上一篇</a>";
            }
            else
            {
                prevId = "<a href=\" /sharedetail/" + prev.Rows[0]["Id"] + ".html\" class=\"detail-btn l\">< 上一篇</a>";
            }
            DataTable next = DryShare.GetLastNextData("next", int.Parse(Request["id"]));
            if (next.Rows.Count <= 0)
            {
                nextId = "<a href=\" javascript:void(0)\" class=\"detail-btn r\">下一篇 ></a>";
            }
            else
            {
                nextId = "<a href=\" /sharedetail/" + next.Rows[0]["Id"] + ".html\" class=\"detail-btn r\">下一篇 ></a>";
            }
        }
    }
}