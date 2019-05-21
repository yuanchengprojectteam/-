<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--侧边-->
<div class="jdm-toolbar-wrap J-wrap">                
	<div class="jdm-toolbar J-toolbar">                    
		<div class="jdm-toolbar-panels J-panel"></div>                                       
		<div class="jdm-toolbar-tabs J-tab">
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-ger">                                
				<i class="tab-ico"></i>
				<em class="tab-text">购物车</em>                                                  
			</div>                           
			<div data-type="bar" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-cart">                                
				<i class="tab-ico"></i>
				<em class="tab-text">购物车</em>                                                  
			</div>                           
			<div data-type="bar" clstag="h|keycount|cebianlan_h_follow|btn" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-follow" data-name="follow" data-login="true">                                
				<i class="tab-ico"></i>
				<em class="tab-text">我的关注</em>                                                  
			</div>                                             
		</div>                          
		<div class="J-trigger jdm-toolbar-tab jdm-tbar-tab-message" data-name="message"><a target="_blank" href="#">
			<i class="tab-ico"></i>                                
			<em class="tab-text">我的消息                                
			</em></a>                                                
		</div>            
	</div>                    
	<div class="jdm-toolbar-footer">                        
		<div data-type="link" id="#top" class="J-trigger jdm-toolbar-tab jdm-tbar-tab-top">                                
			<a href="#" clstag="h|keycount|cebianlan_h|top">                                
				<i class="tab-ico"></i>
				<em class="tab-text">顶部</em>                                
			</a>                         
		</div>             
	</div>                    
	<div class="jdm-toolbar-mini"></div>              
	<div id="J-toolbar-load-hook" clstag="h|keycount|cebianlan_h|load"></div>            
</div> 


<!--头部-->
<div id="header">
	<div class="header-box">
		<h3 class="huany">WangID本地购物商城欢迎您的到来！</h3>
		<ul class="header-left"> 
			<li class="bj">
				<a class="dib" href="#">贵阳市</a>
				<i class="ci-leftll">
					<s class="jt">◇</s>
				</i>
				<div class="bj-1">
					<h3>热门城市：</h3>
					<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
				</div>
			</li>					
		</ul>
		<ul class="header-right">

			<li class="denglu">Hi~ 
			<c:choose>
			<c:when test="${sessionScope.loginedUser != null}">
				<a href="PersonCenter" style="cursor:pointer;">${sessionScope.loginedUser.account}</a>
			</c:when>
			<c:otherwise>
				<a class="red" href="tologin">请登录!</a> <a href="toregister">[免费注册]</a>
			</c:otherwise>
			</c:choose>
			</li> 

			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps" href="wod_shouc.html">我的收藏</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps1" href="toapplybecomeshop">申请入驻</a></li>
			<li class="shu"></li>
			<li class="denglu"><a class="ing_ps ps2" href="PersonCenter">个人中心</a></li>
			<li class="shu"></li>
			<li class="shouji bj">
				<a class="ing_ps ps3" href="#">手机通城</a>
				<i class="ci-right ">
					<s class="jt">◇</s>
				</i>
				<div class="shouji1">
					<img src="images/mb_wangid.png" class="shouji4">
					<div class="shouji2">
						<p>通城客户端</p>
						<p class="red">首次下单满79元，送79元</p>
					</div>
					<div class="yi">
						<img src="images/mb_wangid.png" class="shouji4">
						<div class="er">
							<p>通城微信公众号</p>
							<p class="red">关注通城公众号的积分，换大礼</p>
						</div>
					</div>
				</div>
			</li> 
		</ul>
	</div>
</div>

<!--搜索栏-->
<div class="toub_beij">
	<div class="logo"><a href="index"><img src="./images/logo.png"></a></div>
	<div class="search">
		<form action="queryGoods" method="post">
			<input type="text" name="msg" value="" class="text" id="textt" placeholder="小米">
			<input type="submit" class="button" value="搜索">
		</form>
	</div>
	<div class="right" >
		<i class="gw-left"></i>
		<i class="gw-right"></i>
		<div class="sc">
		<c:if test="${!empty carList}">
			<i class="gw-count">${carNum}</i>
		</c:if>
			<i class="gw-count"></i>
			<i class="sd"></i>
		</div>
		<a href="car">我的购物车</a>
		
		 <div class="dorpdown-layer" style="width: 340px">
			<ul>
			
				
				<c:choose>
					<c:when test="${sessionScope.loginedUser != null  }">
					<c:choose>
					<c:when test="${! empty carList}">
						<c:forEach items="${carList}" var="temp">
						<div class="smt"><h4 class="fl">最新加入的商品</h4></div>
							<li class="meiyou">
								<span><a href="#"><img src="./images/settleup-nogoods.png"></a></span>
								<span style="width:150%;font-size:5px;"  ><a href="#" style="font-size:5px;margin-right:40px;" >
								${temp.goods.name} ${temp.goods.size} ${temp.goods.color} ￥${temp.goods.price}</a></span>
								<span><a href="#" style="width:100%;font-size:5px;">删除</a></span>
							</li>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<li class="meiyou">
						<img src="./images/settleup-nogoods.png">
						<span>购物车中还没有商品，赶紧选购吧！</span> 
						</li>
					</c:otherwise>
					</c:choose>
					
					
					</c:when>
					<c:otherwise>
						<li class="meiyou">
						<span>亲，请先登录,才可以查看购物车消息哦</span> 
						</li>
					</c:otherwise>
				</c:choose>
				
			
			
			
			
				
			</ul>
		</div>
		
	</div>
	<div class="hotwords">
		<a class="biaoti">热门搜索：</a>
		<a href="#">新款连衣裙</a>
		<a href="#">四件套</a>
		<a href="#">潮流T恤</a>
		<a href="#">时尚女鞋</a>
		<a href="#">乐1</a>
		<a href="#">特步女鞋</a>
		<a href="#">威士忌</a>
	</div>
</div> 

<script type="text/javascript">

function show(){
	if('${sessionScope.loginedUser}'){
		document.getElementById('na').innerHTML='${sessionScope.loginedUser.name}';
	}else{
			document.getElementById('na').innerHTML='请登录！';
	}
}
</script>            