<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="footer.ascx.cs" Inherits="HzoSiteWeb.ascx.footer" %>
<!-- hzo-ft底部 start -->
<div class="hzo-ft">
	<div class="w1200">
	    <div class="hzo-ft-top clearfix">
	    	<div class="hzo-ft-menu l">
	    		<dl>
	    			<dt>快速导航</dt>
	    			<dd><a href="/case.html">案例作品</a></dd>
	    			<dd><a href="/project.html">服务项目</a></dd>
	    			<dd><a href="/dynamic.html">新闻动态</a></dd>
	    			<dd><a href="/contact.html">联系我们</a></dd>
	    		</dl>
	    		<dl>
	    			<dt>服务支持</dt>
	    			<dd><span>合作热线：</span><span>0571-56570018</span></dd>
	    			<dd><span>合作QQ：</span><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:2598599941:41" alt="业务咨询" border="0"></a></dd>
	    			<dd><span>合作QQ：</span><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=317682454&amp;site=qq&amp;menu=yes"><img title="业务咨询" src="http://wpa.qq.com/pa?p=2:317682454:41" alt="业务咨询" border="0"></a></dd>
	    		</dl>
	    		<dl>
	    			<dt>友情链接</dt>
                    <%--<%string[] aa = { "1", "b" }; %>
                    <%foreach (string a in aa)
                        {%>
                      <dd><a href="<%# Eval("Links") %>"><%# Eval("KeyNames") %></a></dd>
                    <%} %>--%>
                    <asp:Repeater ID="flinklist" runat="server">
                        <ItemTemplate>

                            <dd><a href="<%# Eval("Links") %>"><%# Eval("KeyNames") %></a></dd>
                        </ItemTemplate>
                    </asp:Repeater>
	    			
	    		</dl>
	    	</div>
	    	<div class="hzo-ft-r r">
	    		<p>24小时全国服务热线</p>
	    		<p class="tel">0571-56570018</p>
	    		<a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2598599941&amp;site=qq&amp;menu=yes" class="kefu r"><i></i><span>在线客服</span></a>
	    	</div>
	    </div>
	    		
	    <div class="hzo-ft-bt clearfix">
	    	<div class="clearfix hzo-ft-bt-b1">
	    		<p class="l hzo-ft-b1-1">HZO 黄&郑&欧设计工作室</p>
	    		<p class="l hzo-ft-b1-2">地址：浙江省杭州市拱墅区祥园路39号天堂E谷三号楼五楼</p>
	    		<p class="r hzo-ft-b1-3"><span class="l label">关注我们：</span><i class="l i-weixin"></i><span class="l line">|</span><i class="l i-sina"></i><span class="l line">|</span><i class="l i-weibo"></i></p>
	    	</div>
	    	<p class="copyright">©2017 <a href="">www.hzohzo.com</a> All rights reserved.</p>
	    </div>
	</div>
</div>
<!-- hzo-ft底部 end -->