<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs" Inherits="HzoSiteWeb.ascx.header" %>
<!-- hzo-hd头部 start -->
<div class="hzo-hd hzo-hd1 clearfix">
	<a href="/index.html" class="logo l"><!--<img src="images/logo.png" />--></a>
	<ul class="hzo-nav l">
		<li><a href="/index.html" class="cur" data-sort ="index">首页</a></li>
		<li><a href="/case.html" data-sort ="case">案例</a></li>
		<li><a href="/project.html" data-sort ="project">服务项目</a></li>
		<li><a href="/dynamic.html" data-sort ="dynamic">动态</a></li>
		<li><a href="/contact.html" data-sort ="contact">联系</a></li>
	</ul>
	<p class="r hzo-tel">
		<i></i><span>0571-56570018</span>
	</p>
</div>
<!-- hzo-hd头部 end -->

<script type="text/javascript" src="js/common.js"></script>
<script>
    $(function () {
        $(".hzo-nav li").each(function () {
            var leibie = $(this).find("a").data("sort");
            if (window.location.href.indexOf(leibie) != -1) {
                $(this).find("a").addClass("cur").parent("li").siblings().find("a").removeClass("cur");
            } else if (window.location.href.indexOf("sharedetail") != -1 || window.location.href.indexOf("newsdetail") != -1) {
                $(".hzo-nav li").eq(3).find("a").addClass("cur").parent("li").siblings().find("a").removeClass("cur");
            }
        });
    });
</script>