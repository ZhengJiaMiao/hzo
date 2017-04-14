<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="HzoSiteWeb.contact" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>联系|HZO 黄&郑&欧</title>
    <meta name="Keywords" content="HZOHZO，HZO，网站建设，APP开发设计，小程序开发，品牌标识">
    <meta name="description" content="HZO 黄&郑&欧是全球五金网旗下的专业的网站建设平台，拥有强大的技术团队，主营网站建设、APP开发设计、小程序开发、品牌标识,为数千万家商家提供网站建设服务,是进军互联网市场的最佳选择！">
		<link rel="stylesheet" href="css/reset.css" />
		<link rel="stylesheet" href="css/swiper.min.css" />
		<link rel="stylesheet" href="css/animate.css" />
		<link rel="stylesheet" href="css/jmStyle.css" />
		<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
</head>
<body>
    <uc1:header runat="server" ID="header" />
    <div class="jm-contact">
            <div class="con-bnr"></div>
			<%--<img src="images/map.png" />--%>
			<div class="contact-box">
				<div class="contact-inner">
					<div class="w1200">
						<div class="contact-hd">
							<h2>HZO视觉设计工作室</h2>
							<p><span class="label">地 址：</span><span class="txt">浙江省杭州市拱墅区祥园路39号天堂E谷三号楼五楼</span></p>
							<p><span class="label">邮 编：</span><span class="txt">310015</span></p>
							<p><span class="label">邮 箱：</span><span class="txt">2598599941@qq.com</span></p>
						</div>
						<div class="contact-bt clearfix">
							<div class="contact-bt-item l">
								<div class="contact-bt-title">
									<h5>合作咨询</h5>
									<h6>cooperation</h6>
								</div>
								<div class="contact-bt-info">
									<p><span class="label">电 话：</span><span class="txt">0571-56570018</span></p>
									<p><span class="label">传 真：</span><span class="txt">0571-88938911</span></p>
									<p><span class="label">Q&nbsp;&nbsp;Q：</span><a target="_blank" class="txt" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:2598599941:41" alt="业务咨询" border="0"></a></p>
									<p><span class="label">Q&nbsp;&nbsp;Q：</span><a class="txt" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:2598599941:41" alt="业务咨询" border="0"></a></p>
								</div>
							</div>
							<div class="contact-bt-item l">
								<div class="contact-bt-title">
									<h5>维护服务</h5>
									<h6>Maintain</h6>
								</div>
								<div class="contact-bt-info">
									<p><span class="label">电 话：</span><span class="txt">18069402431</span></p>
									<p><span class="label">Q&nbsp;&nbsp;Q：</span><a class="txt" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:2598599941:41" alt="业务咨询" border="0"></a></p>
								</div>
							</div>
							<div class="contact-bt-item l">
								<div class="contact-bt-title">
									<h5>友情链接</h5>
									<h6>interlink</h6>
								</div>
								<div class="contact-bt-info">
									<p><span class="label">电 话：</span><span class="txt">18057130484</span></p>
									<p><span class="label">Q&nbsp;&nbsp;Q：</span><a class="txt" target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:2598599941:41" alt="业务咨询" border="0"></a></p>
								</div>
							</div>
							<div class="contact-bt-item l">
								<div class="contact-bt-title">
									<h5>设计QQ群</h5>
									<h6>cooperation</h6>
								</div>
								<div class="contact-bt-info">
									<p><span class="label">Q&nbsp;&nbsp;Q群1：</span><span class="txt"></span></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    <uc1:footer runat="server" ID="footer" />
</body>
</html>
