<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="casedetail.aspx.cs" Inherits="HzoSiteWeb.casedetail" %>

<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><%=cc.Title %>|HZO 黄&郑&欧</title>
    <meta name="Keywords" content="HZOHZO，HZO，网站建设，APP开发设计，小程序开发，品牌标识">
    <meta name="description" content="HZO 黄&郑&欧是全球五金网旗下的专业的网站建设平台，拥有强大的技术团队，主营网站建设、APP开发设计、小程序开发、品牌标识,为数千万家商家提供网站建设服务,是进军互联网市场的最佳选择！">
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/swiper.min.css" />
    <link rel="stylesheet" href="/css/animate.css" />
    <link rel="stylesheet" href="/css/jmStyle.css" />
    <script type="text/javascript" src="/js/jquery-1.11.0.js"></script>
</head>
<body>
    <uc1:header runat="server" ID="header" />
    <div class="jm-project">
        <div class="project-bnr" style="background: <%=cc.BackgColor %>">
            <h5><%=cc.Title %></h5>
            <img src="<%=cc.ImgSrcBnr %>" /></div>
        <div class="pro-info">
            <div class="w1200 clearfix">
                <div class="pro-info-l l">
                    <h5>项目介绍：</h5>
                    <p><%=cc.Description %></p>
                </div>
                <div class="pro-info-r r"><a href="" class="pro-link"></a></div>
            </div>
        </div>
        <div class="pro-box">
            <div class="pro-inner">
                <div class="w1200"><%=cc.Details %></div>
            </div>
        </div>
    </div>
    <uc1:footer runat="server" ID="footer" />
</body>
</html>
