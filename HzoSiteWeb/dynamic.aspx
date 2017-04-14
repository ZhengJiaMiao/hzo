<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dynamic.aspx.cs" Inherits="HzoSiteWeb.dynamic" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>动态|HZO 黄&郑&欧</title>
    <meta name="Keywords" content="HZOHZO，HZO，网站建设，APP开发设计，小程序开发，品牌标识">
    <meta name="description" content="HZO 黄&郑&欧是全球五金网旗下的专业的网站建设平台，拥有强大的技术团队，主营网站建设、APP开发设计、小程序开发、品牌标识,为数千万家商家提供网站建设服务,是进军互联网市场的最佳选择！">
		<link rel="stylesheet" href="/css/reset.css" />
		<link rel="stylesheet" href="/css/swiper.min.css" />
		<link rel="stylesheet" href="/css/animate.css" />
		<link rel="stylesheet" href="/css/jmStyle.css" />
		<script type="text/javascript" src="/js/jquery-1.11.0.js" ></script>
</head>
<body>
    <script>
        $(function () {
            $(".jm-news ol li").each(function () {
                var leibie = $(this).data("sort");
                if (window.location.href.indexOf(leibie) != -1) {
                    $(this).addClass("cur").siblings().removeClass("cur");
                    $(".jm-news-box .jm-news-item").eq($(this).index()).addClass("cur").siblings().removeClass("cur");
                };
            });
        });
    </script>
    <uc1:header runat="server" ID="header" />
    <div class="jm-news">
			<div class="w1200">
				<ol class="clearfix jm-news-hd">
					<li class="l cur" data-sort="share"><a href="/dynamic.html?sort=share">干货分享</a></li>
					<li class="l" data-sort="news"><a href="/dynamic.html?sort=news">HZO新闻</a></li>
				</ol>
				<ul class="jm-news-box">
					<li class="jm-news-item cur">
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
		    			</div>
					</li>
					<li class="jm-news-item">
						<div class="hzo-news-list clearfix">
                            <asp:Repeater ID="newsList" runat="server">
                                <ItemTemplate>
                                    <div class="hzo-news l">
								        <div class="hzoNews-time">
									        <p class="day"><%# DateTime.Parse( Eval("CreateTime").ToString()).ToString("dd") %></p>
									        <p class="year"><%# DateTime.Parse( Eval("CreateTime").ToString()).ToString("yyyy-MM") %></p>
								        </div>
								        <div class="hzoNews-main">
									        <div class="mask"></div>
									        <h5 class="title"><a href="/newsdetail/<%# Eval("Id") %>.html" target="_blank"><%# Eval("Title") %></a></h5>
									        <p class="txt"><span><%# Eval("Description") %></span><a href="/newsdetail/<%# Eval("Id") %>.html" target="_blank">更多</a></p>
								        </div>
							        </div>
                                </ItemTemplate>
                            </asp:Repeater>
						</div>
					</li>
				</ul>
			</div>
			<a href="javascript:void(0);" class="loading">
                <div class="loading-box">
                    <i class="i-load"></i>
                    <span>加载更多</span>
                </div>
			</a>
		</div>
    <uc1:footer runat="server" ID="footer" />
    <script>
        Date.prototype.format = function (fmt) {
            var o = {
                "M+": this.getMonth() + 1,                 //月份 
                "d+": this.getDate(),                    //日 
                "h+": this.getHours(),                   //小时 
                "m+": this.getMinutes(),                 //分 
                "s+": this.getSeconds(),                 //秒 
                "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
                "S": this.getMilliseconds()             //毫秒 
            };
            if (/(y+)/.test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
            }
            for (var k in o) {
                if (new RegExp("(" + k + ")").test(fmt)) {
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
                }
            }
            return fmt;
        }
    </script>
    <script>
        $(function () {
            var newsNum = 1;
            var shareNum = 1;
            var page = 1;
            $(".loading").on("click", function () {
                $(".i-load").css("background-image", "url('/images/loading.gif')");
                var types = window.location.href.indexOf("news") != -1 ? 'news' : 'share';
                console.log("type:" + types);
                if (types == "news") {
                    newsNum++;
                    page = newsNum;
                } else {
                    shareNum++;
                    page = shareNum;
                }
                $.ajax({
                    type: "GET",
                    url: "/ajax/dynamicajax.ashx",
                    data: { types: types, pageno: page },   
                    dataType: "json",
                    success: function (data) {
                        setTimeout(function () {
                            console.log(data);
                            // console.log(JSON.parse(data))
                            if (types == 'news') {
                                console.log("page:-------" + page);
                                console.log("Pagecount:-------" + data.num.Pagecount);
                                if (page >= data.num.Pagecount) {
                                    $(".loading .i-load").hide();
                                    $(".loading").html("<p>没有更多数据</p>");
                                }
                                console.log("Newsyeshu:" + data.num.Pagecount);
                                var str = '';
                                $.each(data.dataList, function (index, value) {
                                    str += '<div class="hzo-news l">';
                                    str += '<div class="hzoNews-time">';
                                    // console.log(value.Createtime.replace(/\D\img/, ""));
                                    /* time=new Date(parseInt(time));*/
                                    str += '<p class="day">' + new Date(parseInt(value.Createtime.slice(6))).format("dd") + '</p>';
                                    str += '<p class="year">' + new Date(parseInt(value.Createtime.slice(6))).format("yyyy-MM") + '</p>';
                                    console.log(new Date(parseInt(value.Createtime.slice(6))).format("yyyy-MM-dd hh:mm:ss"));
                                    str += '</div>';
                                    str += '<div class="hzoNews-main">';
                                    str += '<div class="mask"></div>';
                                    str += '<h5 class="title"><a href="/newsdetail/' + value.Id + '.html" target="_blank">';
                                    str += value.Title;
                                    str += '</a></h5>';
                                    str += '<p class="txt"><span>' + value.Description + '</span><a href="/newsdetail/' + value.Id + '.html" target="_blank">更多</a></p>';
                                    str += '</div>';
                                    str += '</div>';
                                });
                                $(".hzo-news-list").append(str);
                            } else {
                                console.log("shareyeshu:" + data.num.Pagecount);
                                if (page >= data.num.Pagecount) {
                                    $(".loading .i-load").hide();
                                    $(".loading").html("<p>没有更多数据</p>");
                                }
                                var str = '';
                                $.each(data.dataList, function (index, value) {
                                    str += '<a class="share-item l" href="/sharedetail/' + value.Id + '.html" target="_blank">';
                                    str += '<h5 class="share-title">' + value.Title + '</h5>';
                                    str += '<p class="share-time">' + new Date(parseInt(value.Createtime.slice(6))).format("yyyy-MM-dd") + '</p>';
                                    str += '<img src="' + value.ImgSrc + '" class="share-pic" />';
                                    str += '<div class="share-info">';
                                    str += '<p>' + value.Description + '</p>';
                                    str += ' </div>';
                                    str += '<div class="share-ft">';
                                    str += '<i class="i-enter l"></i><span class="r">查看全部</span>';
                                    str += '</div>';
                                    str += '</a>';
                                    console.log("str" + str);
                                });
                                $(".share-list").append(str);
                            }
                            $(".i-load").css("background-image", "url('/images/load.png')");
                        }, 500);
                    }
                })
            });
        });
    </script>
</body>
</html>
