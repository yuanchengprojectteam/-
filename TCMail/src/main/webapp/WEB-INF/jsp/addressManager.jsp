<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址</title>
<link rel="stylesheet" type="text/css" href="../../css/index.css">
<link rel="stylesheet" type="text/css" href="../../css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<!-- <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script> -->
<!--  <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
<!--  <script type="text/javascript" src="js/select.js"></script> -->
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
 <script type="text/javascript" src="../../js/jquery.reveal.js"></script>

 <script type="text/javascript" src="js/chengs/jquery.js"></script>
<script type="text/javascript" src="js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.js"></script>
<script type="text/javascript" src="js/chengs/main.js"></script>

</head>
<body>
<!--头部--> 
  
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<!---->
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">收货地址</div>
					<div class="shouh_diz_beij">
					<c:forEach items="${AddrList.items}" var="temp">
						<div class="shouh_diz_kuang shouh_diz_kuang_mor">
							<div class="item">
								<span class="labal">收件人：</span>
								<p>${temp.name}</p>
							</div>
							<div class="item">
								<span class="labal">收货地址：</span>
								<p>${temp.recvaddr}</p>
							</div>
							<div class="item">
								<span class="labal">详细地址：</span>
								<p>${temp.detailaddr}</p>
							</div>
							<div class="item">
								<span class="labal">手机：</span>
								<p> ${temp.phone}</p>
							</div>
							<div class="bianj_yv_shanc">
								<c:choose>
									<c:when test="${temp.level == 1}">
										<a href="javascript:void(0)" class="mor_color">当前为默认地址</a> 
									</c:when>
									<c:otherwise>
										<a href="javascript:void(0)" id="${temp.id}" onclick="setlevel(id)">设为默认</a>  
									</c:otherwise>
								</c:choose>
								<a href="javascript:void(0)"  data-reveal-id="myModal_1"  id="${temp.id}" onclick="edit(id)">编辑</a>
								<a href="#">删除</a>
							</div>
						</div>
					</c:forEach>
						
						
						<div class="xinz_shouh_dz_ann"><a href="#" data-reveal-id="myModal">新增收货地址</a></div>
						<div class="gerzx_fany">
						<div style="float: left;">
						<c:choose>
							<c:when test="${AddrList.isMore == 0}">
								<a href="javascript:void(0)" class="shangxy" onclick="alert('已经是尾页了')" >下一页</a>
							</c:when>
							<c:otherwise>
								<a href="toAddrManager?currentPage=${AddrList.nextPage}" class="shangxy">下一页</a>
							</c:otherwise>
						</c:choose>
						<c:choose>
						<c:when test="${AddrList.currentPage == 1}">
								<a href="javascript:void(0)" class="shangxy" onclick="alert('已经是首页了')" >上一页</a>
						</c:when>
						<c:otherwise>
							<a href="toAddrManager?currentPage=${AddrList.prePage}" class="shangxy" >上一页</a>
						</c:otherwise>
						</c:choose>
						
					</div>
					<div style="float: right;margin-right: 10px">
						第&nbsp;<span id="currentPage" style="color: black;">${AddrList.currentPage}</span>&nbsp;页
					</div>
					</div>
						
						
					</div>
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
		<input type="hidden" name="id" id="addrid">
			<p><em>*</em>收货人：</p>
			<input type="text" class="text" id="name" name="name">
			${errors}
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker3" class="form-control" readonly type="text" 
									value="北京市/北京市/朝阳区" data-toggle="city-picker">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1" id="detailaddr">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text" id="phone" name="phone">
			</div>
		</div>
		<div class="biaod_1">
			<!-- <input type="checkbox" name="level" id="level" value="1">&nbsp;&nbsp;设为默认地址 -->
			<a href="javascript:void(0)" class="diz_baoc" onclick="save()">保存</a>
		</div>
		
	</div>
	<a class="close-reveal-modal" id="close">&#215;</a>
</div>

<div id="myModal_1" class="reveal-modal">
	<div class="xint_biaot">
		<h3>编辑收货地址</h3>
	</div>
	<div class="shouj_diz_b">
		<div class="biaod_1">
			<p><em>*</em>收货人：</p>
			<input type="text" class="text" id="name_1" name="name">
		</div>
		<div class="biaod_1">
			<p><em>*</em>收货地址：</p>
			<div class="xinz_diz_cs">
				<div class="docs-methods">
					<form class="form-inline">
						<div id="distpicker">
							<div class="form-group">
								<div style="position: relative;">
									<input id="city-picker2" class="form-control" readonly type="text" 
									value="北京市/北京市/朝阳区" data-toggle="city-picker" name="recvaddr">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="biaod_1">
			<p><em>*</em>详细地址：</p>
			<input type="text" class="text text1" id="detailaddr_1" name="detailaddr">
		</div>
		<div class="biaod_1 biaod_2">
			<div class="liangp_e">
				<p><em>*</em>手机号码：</p>
				<input type="text" class="text" id="phone_1" name="phone">
			</div>
		</div>
		
		<div class="biaod_1">
			<a href="javascript:void(0)" class="diz_baoc" onclick="update()">保存</a>
		</div>
		
	</div>
	<a class="close-reveal-modal" >&#215;</a>
</div>

<script type="text/javascript">
	function setlevel(id){
		$.post("setLevel?id="+id+"",function(data){
			
			window.location.reload();   //页面刷新
		});
	}

	function save(){
		var recvaddr = $("#city-picker3").val();
		var name = $("#name").val();
		var detailaddr = $("#detailaddr").val();
		var phone = $("#phone").val();
		var data = {
			recvaddr: recvaddr,
			name: name,
			detailaddr: detailaddr,
			phone: phone
		};
		//alert($("#level").val());
		$.post("addAddress",data,function(data){
			alert(data.msg);
			 setInterval(function () {
			        $("#close").trigger('click')
			 }, 1500);
			 window.location.reload();
		}); 
	}
	function update(){
		var id = $("#addrid").val();
		var recvaddr = $("#city-picker2").val();
		var name = $("#name_1").val();
		var detailaddr = $("#detailaddr_1").val();
		var phone = $("#phone_1").val();
		var data = {
			recvaddr: recvaddr,
			name: name,
			detailaddr: detailaddr,
			phone: phone,
			id: id
		};
		$.post("updateAddr",data,function(data){
			alert(data.msg);
			window.location.reload();
		}); 
	}
	function edit(id){
		$.post("queryById?id="+id+"",function(data){
			$("#name_1").val(data.name);
			$("#detailaddr_1").val(data.detailaddr);
			$("#phone_1").val(data.phone);
			$("#addrid").val(data.id);
			$("#city-picker2").citypicker("reset");
	        $("#city-picker2").citypicker("destroy");
	        $("#city-picker2").citypicker({
	              province: data.province,
	              city: data.city,
	              district: data.district
	        }); 
		});
		
	}
	
</script>

<jsp:include page="../public/AfterFoot.jsp"></jsp:include>