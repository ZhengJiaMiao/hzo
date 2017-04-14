<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HzoSiteWeb.index" %>

<%@ Register Src="~/ascx/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/ascx/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>HZO 黄&郑&欧</title>
    <meta name="Keywords" content="HZOHZO，HZO，网站建设，APP开发设计，小程序开发，品牌标识">
    <meta name="description" content="HZO 黄&郑&欧是全球五金网旗下的专业的网站建设平台，拥有强大的技术团队，主营网站建设、APP开发设计、小程序开发、品牌标识,为数千万家商家提供网站建设服务,是进军互联网市场的最佳选择！">
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/swiper.min.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/jmStyle.css" />
    <script type="text/javascript" src="js/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="js/lazyload.js"></script>
    <script type="text/javascript" src="js/common.js"></script>
</head>
<body>
    <!-- hzo-hd头部 start -->
    <div class="hzo-hd clearfix">
        <a href="/index.html" class="logo l">
            <!--<img src="images/logo.png" />-->
        </a>
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
    <!-- hzo-bnr轮播图 start -->
    <div class="hzo-bnr">
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide" style="background:url(/images/bnr01.png) no-repeat center">
                    <%--<img src="images/bnr01.png" />--%>
                    <div class="bnr-info w1200 clearfix">
                        <div class="bnr-info-l l">
                            <h5>B2B学院 行业站1</h5>
                            <p>五金采致力于打造五金行业采购商与供应商快速匹配，构建一个合伙人撮合的机制，实现最低成本的采购交易</p>
                        </div>
                        <div class="bnr-info-r l">
                            <a href="" class="bnr-info-logo">
                                <img src="images/bnrLogo01.png" /></a>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background:url(/images/bnr02.png) no-repeat center">
                    <%--<img src="images/bnr02.png" />--%>
                    <div class="bnr-info w1200 clearfix">
                        <div class="bnr-info-l l">
                            <h5>B2B学院 行业站2</h5>
                            <p>五金采致力于打造五金行业采购商与供应商快速匹配，构建一个合伙人撮合的机制，实现最低成本的采购交易</p>
                        </div>
                        <div class="bnr-info-r l">
                            <a href="" class="bnr-info-logo">
                                <img src="images/bnrLogo01.png" /></a>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide" style="background:url(/images/bnr03.png) no-repeat center">
                    <%--<img src="images/bnr03.png" />--%>
                    <div class="bnr-info w1200 clearfix">
                        <div class="bnr-info-l l">
                            <h5>B2B学院 行业站3</h5>
                            <p>五金采致力于打造五金行业采购商与供应商快速匹配，构建一个合伙人撮合的机制，实现最低成本的采购交易</p>
                        </div>
                        <div class="bnr-info-r l">
                            <a href="" class="bnr-info-logo">
                                <img src="images/bnrLogo01.png" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
        </div>
    </div>
    <!-- hzo-bnr轮播图 end -->
    <script src="js/swiper.js"></script>

    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            paginationClickable: true,
            /*direction: 'vertical',
            lazyLoading: true,*/
            mousewheelControl: true
        });
    </script>
    <script>
        $("img.lazy").lazyload();
    </script>

    <!-- hzo-business功能 start -->
    <div class="hzo-business">
        <div class="w1200">
            <div class="clearfix bus-list">
                <div class="l bus-item">
                    <i class="i-business i-bus01"></i>
                    <h5>网站建设</h5>
                    <p>独一无二的原创设计，从PC、手机、移动终端，多网合一</p>
                </div>
                <div class="l bus-item">
                    <i class="i-business i-bus02"></i>
                    <h5>APP开发设计</h5>
                    <p>资深的研发团队，打造优良的iOS与Android体验产品</p>
                </div>
                <div class="l bus-item">
                    <i class="i-business i-bus03"></i>
                    <h5>小程序开发</h5>
                    <p>兴起的轻量APP产品，开发周期短，维护成本低</p>
                </div>
                <div class="l bus-item">
                    <i class="i-business i-bus04"></i>
                    <h5>品牌标识</h5>
                    <p>优秀的设计团队，打造独一无二的品牌标识</p>
                </div>
            </div>
        </div>
    </div>
    <!-- hzo-business功能 end -->

    <!-- hzo-case案例 start -->
    <div class="hzo-case">
        <div class="w1200">
            <div class="case-hd clearfix">
                <h5 class="l">案例 </h5>
                <h6 class="l">经典品质</h6>
                <p class="l"><span>网站建设</span> / <span>APP</span> / <span>小程序</span> / <span>logo</span></p>
                <a href="/case.html" target="_blank" class="case-more"><span>全部作品</span><i></i></a>
            </div>
        </div>
        <div class="case-list clearfix">
            <asp:Repeater ID="caseList" runat="server">
                <ItemTemplate>
                    <div class="l care-item">
                        <a href="/casedetail/<%# Eval("Id") %>.html" target="_blank" class="care-pic">
                            <img src="<%# Eval("ImgSrc") %>" /></a>
                        <p class="care-title"><a href="/casedetail/<%# Eval("Id") %>.html"  target="_blank"><%# Eval("Title") %></a></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

           <%-- <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case01.png" /></a>
                <p class="care-title"><a href="">五金采 APP采购平台</a></p>
            </div>--%>
            <%--<div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case02.png" /></a>
                <p class="care-title"><a href="">链金APP</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case03.png" /></a>
                <p class="care-title"><a href="">五金云官网</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case04.png" /></a>
                <p class="care-title"><a href="">五金网帮助中心</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case05.png" /></a>
                <p class="care-title"><a href="">代运营专题</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case06.png" /></a>
                <p class="care-title"><a href="">五金眼 行业平台</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case07.png" /></a>
                <p class="care-title"><a href="">b2b学院官网</a></p>
            </div>
            <div class="l care-item">
                <a href="" class="care-pic">
                    <img src="images/case08.png" /></a>
                <p class="care-title"><a href="">链金官网</a></p>
            </div>--%>
        </div>
    </div>
    <!-- hzo-case案例 end -->

    <!-- hzo-secondary新闻和分享 start -->
    <div class="hzo-secondary">
        <div class="w1200 clearfix">
            <div class="l share">
                <div class="column-hd clearfix">
                    <h5 class="l">分享 </h5>
                    <span class="l">/</span><a href="/dynamic.html?sort=share" target="_blank" class="l">更多分享</a>
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
                    </a>
                    <a class="share-item l" href="">
                        <h5 class="share-title">自带思维导图的大纲工具，让你的思路更清晰！</h5>
                        <p class="share-time">2017-03-22</p>
                        <img src="images/share02.png" class="share-pic" />
                        <div class="share-info">
                            <p>编者按：很早之前看过田中一光《设计的觉醒》和原研哉的《设计中的设计》，开始比较认同于日本对于常用设计的态度士等…</p>
                        </div>
                        <div class="share-ft">
                            <i class="i-enter l"></i><span class="r">查看全部</span>
                        </div>
                    </a>--%>
                </div>
            </div>
            <div class="l news">
                <div class="column-hd clearfix">
                    <h5 class="l">新闻  </h5>
                    <span class="l">/</span><a href="/dynamic.html?sort=news" target="_blank" class="l">更多分享</a>
                </div>
                <div class="news-list">
                    <ul class="news-inner">
                        <asp:Repeater ID="newsList" runat="server">
                            <ItemTemplate>
                                <li class="news-item">
                                    <a href="/newsdetail/<%# Eval("Id") %>.html" target="_blank" class="news-a">
                                        <h5 class="news-title"><%# Eval("Title") %></h5>
                                        <p class="news-time"><%# DateTime.Parse( Eval("CreateTime").ToString()).ToString("yyyy-MM-dd") %></p>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>

                        <%--<li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>
                        <li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>
                        <li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>
                        <li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>
                        <li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>
                        <li class="news-item">
                            <a href="" class="news-a">
                                <h5 class="news-title">【签约】HZO签约链金科技B2B学院平台开发</h5>
                                <p class="news-time">2017-03-22</p>
                            </a>
                        </li>--%>
                    </ul>
                    <div class="mask"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(function () {
            var scrollTimer = null;
            var delay = 2000;
            //1.鼠标对新闻触发mouseout事件后每2s调用scrollNews() 
            //2.鼠标对新闻触发mouseover事件后停止调用scrollNews() 
            //3.初次加载页面触发鼠标对新闻的mouseout事件 
            $('div.news-list').hover(function () {
                clearInterval(scrollTimer);
            }, function () {
                scrollTimer = setInterval(function () {
                    scrollNews();
                }, delay);
            }).triggerHandler('mouseout');
        });
        //滚动新闻 
        function scrollNews() {
            var $news = $('div.news-list>ul');
            var $lineHeight = $news.find('li:first').height();
            $news.animate({ 'marginTop': -$lineHeight + 'px' }, 600, function () {
                $news.css({ margin: 0 }).find('li:first').appendTo($news);
            });
        }
    </script>
    <!-- hzo-secondary新闻和分享 end -->

    <!-- hzo-cooperation合作 start -->
    <div class="hzo-cooperation">
        <div class="w1200">
            <div class="coop-hd">
                <h5><span>他们</span> 选择了HZO</h5>
                <h6>这些优秀的平台选择了和HZO合作，打造高品质的产品视觉！</h6>
            </div>
            <div class="coop-customer">
                <a href="/contact.html"><img src="images/brandList.png" /></a>
            </div>
        </div>
    </div>
    <!-- hzo-cooperation合作 end -->
    <uc1:footer runat="server" ID="footer" />
</body>
</html>
