<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="case.aspx.cs" Inherits="HzoSiteWeb._case" %>

<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>案例|HZO 黄&郑&欧</title>
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
    <div class="jm-case">
			<div class="case-list clearfix">
                <asp:Repeater ID="caseList" runat="server">
                    <ItemTemplate>
                        <div class="l care-item">
	    			        <a href="/casedetail/<%# Eval("Id") %>.html" target="_blank" class="care-pic"><img src="<%# Eval("ImgSrc") %>" /></a>
	    			        <p class="care-title"><a href="/casedetail/<%# Eval("Id") %>.html"  target="_blank"><%# Eval("Title") %></a></p>
	    			        <a href="/casedetail/<%# Eval("Id") %>.html" target="_blank" class="case-mask">
	    				        <div class="case-mask-bg" style="background: <%# Eval("BackgColor") %>;"></div>
	    				        <div class="case-mask-box">
	    					        <div class="case-mask-lt">
	    						        <p class="case-mask-sort"><%# Eval("Category") %></p>
	    						        <p class="case-mask-sort">design</p>
	    						        <p class="case-mask-line"></p>
	    						        <div class="case-mask-zj">
	    							        <i class="i-see"></i>
	    							        <p><%# Eval("Title") %></p>
	    						        </div>
	    					        </div>
	    				        </div>
	    			        </a>
	    		        </div>
                    </ItemTemplate>
                </asp:Repeater>
	    		<%--<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case01.png" /></a>
	    			<p class="care-title"><a href="">五金采 APP采购平台</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #03c7a7;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case02.png" /></a>
	    			<p class="care-title"><a href="">链金APP</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #f76416;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case03.png" /></a>
	    			<p class="care-title"><a href="">五金云官网</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #fbede2;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case04.png" /></a>
	    			<p class="care-title"><a href="">五金网帮助中心</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #a9c9e0;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case05.png" /></a>
	    			<p class="care-title"><a href="">代运营专题</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #f2403e;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case06.png" /></a>
	    			<p class="care-title"><a href="">五金眼 行业平台</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #abd9e6;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case07.png" /></a>
	    			<p class="care-title"><a href="">b2b学院官网</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #e8e8e8;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>
	    		<div class="l care-item">
	    			<a href="" class="care-pic"><img src="images/case08.png" /></a>
	    			<p class="care-title"><a href="">链金官网</a></p>
	    			<a href="" class="case-mask">
	    				<div class="case-mask-bg" style="background: #ff7c31;"></div>
	    				<div class="case-mask-box">
	    					<div class="case-mask-lt">
	    						<p class="case-mask-sort">app</p>
	    						<p class="case-mask-sort">design</p>
	    						<p class="case-mask-line"></p>
	    						<div class="case-mask-zj">
	    							<i class="i-see"></i>
	    							<p>五金采 app采购平台</p>
	    						</div>
	    					</div>
	    				</div>
	    			</a>
	    		</div>--%>
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
            var page = 1;
            $(".loading").on("click", function () {
                $(".i-load").css("background-image", "url('/images/loading.gif')");
                page++;
                $.ajax({
                    type: "GET",
                    url: "/ajax/caseajax.ashx",
                    data: { pageno: page },
                    dataType: "json",
                    
                    success: function (data) {
                        setTimeout(function () {
                            console.log(data)
                            if (page >= data.num.Pagecount) {
                                $(".loading .i-load").hide();
                                $(".loading").html("<p>没有更多数据</p>");
                            }
                            var str = '';
                            $.each(data.dataList, function (index, value) {


                                str += '<div class="l care-item">';
                                str += '<a href="/casedetail/' + value.Id + '.html" target="_blank" class="care-pic"><img src="' + value.ImgSrc + '" /></a>';
                                str += '<p class="care-title"><a href="/casedetail/' + value.Id + '.html"  target="_blank">' + value.Title + '</a></p>';
                                str += ' <a href="/casedetail/' + value.Id + '.html" target="_blank" class="case-mask">';
                                str += '  <div class="case-mask-bg" style="background: ' + value.BackgColor + ';"></div>';
                                str += '<div class="case-mask-box">';
                                str += ' <div class="case-mask-lt">';
                                str += ' <p class="case-mask-sort"> ' + value.Category + '</p>';
                                str += '<p class="case-mask-sort">design</p>';
                                str += '<p class="case-mask-line"></p>';
                                str += '<div class="case-mask-zj">';
                                str += '<i class="i-see"></i>';
                                str += '<p> ' + value.Title + '</p>';
                                str += '</div>';
                                str += '</div>';
                                str += '</div>';
                                str += '</a>';
                                str += ' </div>';
                            });
                            $(".case-list").append(str);
                            $(".i-load").css("background-image", "url('/images/load.png')");
                        }, 500);
                    }
                })
            });
        });
    </script>
</body>
</html>
