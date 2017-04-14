using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DataCenter;
using System.Data;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace HzoSiteWeb.ajax
{
    /// <summary>
    /// caseajax 的摘要说明
    /// </summary>
    public class caseajax : IHttpHandler
    {
        int pagecount, recordcount;
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            string pageindex = context.Request["pageno"];
            string orderstr = "";
            string wherestr = "";
            DataTable dt = CustomerCase.GetPageDataTable(orderstr, wherestr, int.Parse(pageindex), 8, out pagecount, out recordcount);
            string result = "";
            result = JsonConvert.SerializeObject(dt, new DataTableConverter());
            result = "{\"dataList\":" + result + ",\"num\":{\"Pagecount\":\"" + pagecount + "\"}}";
            context.Response.Write(result);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}