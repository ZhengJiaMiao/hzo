<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sharedetail.aspx.cs" Inherits="HzoSiteWeb.sharedetail" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title><%=ds.Title %>|HZO 黄&郑&欧</title>
    <meta name="Keywords" content="HZOHZO，HZO，网站建设，APP开发设计，小程序开发，品牌标识">
    <meta name="description" content="HZO 黄&郑&欧是全球五金网旗下的专业的网站建设平台，拥有强大的技术团队，主营网站建设、APP开发设计、小程序开发、品牌标识,为数千万家商家提供网站建设服务,是进军互联网市场的最佳选择！">
		<link rel="stylesheet" href="/css/reset.css" />
		<link rel="stylesheet" href="/css/swiper.min.css" />
		<link rel="stylesheet" href="/css/animate.css" />
		<link rel="stylesheet" href="/css/jmStyle.css" />
		<script type="text/javascript" src="/js/jquery-1.11.0.js" ></script>
</head>
<body>
    <uc1:header runat="server" ID="header" />
    <div class="jm-detail">
			<div class="crumbs">
				<p><a href="/index.html" target="_blank">Home</a><span>/</span><a href="/dynamic.html" target="_blank">动态</a><span>/</span><a href="javascript:void(0);" class="cur"><%=ds.Title %></a></p>
			</div>
			<div class="detail-box">
				<div class="w900">
					<div class="detail-tit">
						<h5 class="title"><%=ds.Title %></h5>
						<p class="subtitle"><span class="time"><%= DateTime.Parse(ds.Createtime.ToString()).ToString("yyyy-MM-dd") %></span><span class="leibie">干货分享</span></p>
					</div>
					<div class="detail-article">
						<%=ds.Details %>
					</div>
				</div>
				<div class="detail-bt">
					<div class="w520 clearfix">
						<%=prevId %>
						<i class="i-load"></i>
						<%=nextId %>
					</div>
				</div>
			</div>
		</div>
		
		<div class="detail-guess">
			<div class="detail-guess-inner">
				<div class="column-hd clearfix">
					<h5 class="l">猜你喜欢 </h5><span class="l">/</span><a href="/dynamic.html" class="l">更多</a>
				</div>
				<div class="share-list clearfix">
                    <asp:Repeater ID="shareList" runat="server">
                        <ItemTemplate>
                                <a class="share-item l" href="/sharedetail/<%# Eval("Id") %>.html" target="_blank">
                                    <h5 class="share-title"><%# Eval("Title") %></h5>
                                    <p class="share-time"><%# DateTime.Parse( Eval("CreateTime").ToString()).ToString("yyyy-MM-dd") %></p>
                                    <img src="<%# Eval("ImgSrc") %>" class="share-pic" />
                                    <div class="share-info">
                                        <p><%# Eval("Description") %></p>
                                    </div>
                                    <div class="share-ft">
                                        <i class="i-enter l"></i><span class="r">查看全部</span>
                                    </div>
                                </a>
                        </ItemTemplate>
                    </asp:Repeater>

					<%--<a class="share-item l" href="">
						<h5 class="share-title">自带思维导图的大纲工具，让你的思路更清晰！</h5>
						<p class="share-time">2017-03-22</p>
						<img src="images/share01.png" class="share-pic" />
						<div class="share-info">
							<p>编者按：很早之前看过田中一光《设计的觉醒》和原研哉的《设计中的设计》，开始比较认同于日本对于常用设计的态度士等…</p>
						</div>
						<div class="share-ft">
							<i class="i-enter l"></i><span class="r">查看全部</span>
						</div>
					</a>--%>
				</div>
			</div>
		</div>
    <uc1:footer runat="server" ID="footer" />
</body>
</html>
