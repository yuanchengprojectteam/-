<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="header">
		<div class="header-box">
			<h3 class="huany">WangID本地购物商城欢迎您的到来！</h3>
			<ul class="header-left">
				<li class="bj"><a class="dib" href="ger_zhongx.html">北京</a> <i
					class="ci-leftll"> <s class="jt">◇</s>
				</i>
					<div class="bj-1">
						<h3>热门城市：</h3>
						<a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a
							href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a
							href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a
							href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a
							href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a
							href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a
							href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a
							href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a
							href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
					</div></li>
			</ul>
			<ul class="header-right">
				<li class="denglu dengl_hou">
					<div>
						<a class="red" href="PersonCenter">Hi~${sessionScope.loginedUser.account }</a> <i
							class="icon_plus_nickname"></i> <i class="ci-leftll"> <s
							class="jt">◇</s>
						</i>
					</div>
					<div class="dengl_hou_xial_k">
						<div class="zuid_xiao_toux">
							<a href="PersonCenter"><img src="${sessionScope.loginedUser.image }"></a>
						</div>
						<div class="huiy_dengj">
							<a class="tuic_" href="tologin">退出登录</a>
						</div>
						<div class="toub_zil_daoh">
							<a href="OrderDetail?tabCode=waitpay">待处理订单</a> <a href="MyFavorite">我的收藏</a>
							<a href="toPersonmessage">个人资料</a>
						</div>
					</div>
				</li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps" href="MyFavorite">我的收藏</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps1"
					href="toapplybecomeshop">申请入驻</a></li>
				<li class="shu"></li>
				<li class="denglu"><a class="ing_ps ps2" target="_blank"
					href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes">客户服务</a></li>
				<li class="shu"></li>
				<li class="shouji bj"><a class="ing_ps ps3" href="#">手机通城</a> <i
					class="ci-right "> <s class="jt">◇</s>
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
					</div></li>
			</ul>
		</div>
	</div>