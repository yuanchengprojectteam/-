<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<!-- <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> -->
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<!--  <script type="text/javascript" src="js/select.js"></script> -->
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
 <script type="text/javascript" src="js/jquery.reveal.js"></script>

 <script type="text/javascript" src="js/chengs/jquery.js"></script>
<script type="text/javascript" src="js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.js"></script>
<script type="text/javascript" src="js/chengs/main.js"></script>

</head>
<body>
<!--头部--> 
  
<%@ include file="AfterHeader.jsp" %>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			
			<!--侧边导航-->
			<%@include flie="PersonCenterLeft.jsp"%> 
			
			
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">收货地址</div>
					<div class="shouh_diz_beij">
						<div class="shouh_diz_kuang shouh_diz_kuang_mor">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>艾丽西亚</p>
							</div>
							<div class="item">
								<span class="labal">所在地区：</span>
								<p>贵州省贵阳市云岩区</p>
							</div>
							<div class="item">
								<span class="labal">地址：</span>
								<p>下合群路达亨大厦16层</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p>182*****710</p>
							</div>
							<div class="item">
								<span class="labal">固定电话：</span>
								<p> </p>
							</div>
							<div class="item">
								<span class="labal">电子邮箱：</span>
								<p>22******88@qq.com</p>
							</div>
							<div class="bianj_yv_shanc">
								<a href="#" class="mor_color">当前默认地址</a>
								<a href="#"  data-reveal-id="myModal_1">编辑</a>
								<a href="#">删除</a>
							</div>
						</div>
						<div class="shouh_diz_kuang">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>艾丽西亚</p>
							</div>
							<div class="item">
								<span class="labal">所在地区：</span>
								<p>贵州省贵阳市云岩区</p>
							</div>
							<div class="item">
								<span class="labal">地址：</span>
								<p>下合群路达亨大厦16层</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p>182*****710</p>
							</div>
							<div class="item">
								<span class="labal">固定电话：</span>
								<p> </p>
							</div>
							<div class="item">
								<span class="labal">电子邮箱：</span>
								<p>22******88@qq.com</p>
							</div>
							<div class="bianj_yv_shanc">
								<a href="#">设为默认</a>
								<a href="#">编辑</a>
								<a href="#">删除</a>
							</div>
						</div>
						<div class="xinz_shouh_dz_ann"><a href="#" data-reveal-id="myModal">新增收货地址</a></div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div>
<!--新增地址表单-->
<div id="myModal" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text")">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")">
			</div>
			<span class="huo_z">或</span>
			<div class="liangp_e">
				<p>固定电话：</p>
				<input type="text" class="text")">
			</div>
		</div>
		<div class="biaod_1">
			<p>邮箱：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1">
			<a href="#" class="diz_baoc">保存</a>
		</div>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<div id="myModal_1" class="reveal-modal">
	<div class="xint_biaot">
		<h3>新添收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>联系人：</p>
			<input type="text" class="text")">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text")">
			</div>
			<span class="huo_z">或</span>
			<div class="liangp_e">
				<p>固定电话：</p>
				<input type="text" class="text")">
			</div>
		</div>
		<div class="biaod_1">
			<p>邮箱：</p>
			<input type="text" class="text text1")">
		</div>
		<div class="biaod_1">
			<a href="#" class="diz_baoc">保存</a>
		</div>
	</div>
	<a class="close-reveal-modal">&#215;</a>
</div>

<%@ include file="AfterFoot.jsp" %>