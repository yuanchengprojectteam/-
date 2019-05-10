<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>   
<head> 
<meta charset="utf-8">
<title>WangID通城——申请售后</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="../../js/jquery-2.1.4.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">申请售后 <p class="dingd_huis_zhan" style="float: right;">
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1371490392&site=qq&menu=yes">
						  <img border="0" src="http://wpa.qq.com/pa?p=2:1371490392:51" 
						  alt="点击这里给我发消息" title="联系卖家"/>
						  </a>
					</div> 
					
					<!--************************************-->
					
					
					<form action="post" enctype="multipart/form-data" id="form">
					<br>
					<c:if test="${! empty RetGoodsList}">
					<table class="order-tb order-tb_1">
						<colgroup>
							<col class="number-col">
							<col class="consignee-col">
							<col class="amount-col">
							<col class="operate-col">
							<col class="dis_col">
						</colgroup> 
						
						<tbody>
						
							<tr class="sep-row"><td colspan="4"><p class="p">退货商品：</p><br/></td></tr>
							<tr class="tr-th span_30_1">
								<td colspan="2"> 
									<span class="dealtime span_30" >商品名称</span> 
								</td>
								<td colspan="1">
									<span class="dealtime span_30" >购买价格</span> 
								</td>
								<td colspan="1"> 
									<span class="dealtime span_30" >购买数量</span> 
								</td>
							</tr>
							<tr class="tr-bd">
								<td rowspan="1" colspan="2">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
											<input type="hidden" name="odetailid" value="${RetGoodsList.id}" id="odetailid">
												<span class="span_30"><a href="shagnj_dianp.html">${RetGoodsList.goods.shop.name }</a></span><br>
												<a target="_blank" href="shangp_xiangq.html">${RetGoodsList.goods.name } ${RetGoodsList.goods.size } ${RetGoodsList.goods.color }</a>
												
											</div>
										</div>
									</div>  
								</td>
								
								<td rowspan="1">
									<div class="operate">
										<p class="yiwanc_hui">¥ ${RetGoodsList.goods.price}</p> 
									</div>
								</td>
								
								<td rowspan="1">
									<div class="txt_ren">
										<span>x${RetGoodsList.num }</span> 
									</div>
								</td> 
								
								
							</tr> 
						</tbody> 
					</table>
					
					<div class="shengq_waik" >
						<div class="shengq_qingd">
							<div class="shengq_tis_1">
								<p><em><c:if test="${! empty IsRetGoods}">${IsRetGoods}</c:if></em> </p>
								<p><em>* 温馨提示：</em> 本次售后服务将由 第三方卖家 <em>杭州宏文电子商务有限公司</em> 为您提供 </p>
							</div>
							<div class="shengq_liang"> 
								
								<div class="shengs_li_1">
									<p class="p"><em>*</em>	货物状态：</p>
									<div class="yocu">
										<ul>
											<li id="dsg1">
												<div class="dangq_xuanz_diz" onclick="change1()" id="change1">未收到货</div>
											</li>
											<li id="dsg2">
												<div class="dangq_xuanz_diz" onclick="change2()" id="change2">已收到货</div>
											</li>
										</ul>
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 提交原因：</p>
									<div class="yocu">
										 <select class="select" id="select" name="reason">
											 <option>请选择</option>
										 </select>
									</div>
								</div>
								
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 退款金额：</p>
									<div class="yocu">
										<ul>
											<li>
												<div class="dangq_xuanz_diz" >¥ ${RetGoodsList.retPrice}</div>
												<input type="hidden" id="money" name="money" value="${RetGoodsList.retPrice}" >
											</li>
										</ul>
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 问题描述：</p>
									<div class="yocu">
										<div class="sdg"><textarea cols="" name="descr" rows="" class="area" id="area"></textarea><p>10-500字</p></div> 
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p">上传凭证：&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<div class="yocu">
										<input type="file" style="display: none" name="file" id="file" onchange="setsrc(this)">
							 			<div class="pinj_shangc_tup">
											<img class="btn_upload" alt="" src="" onclick="file.click()" id="img" >
										</div>
									</div>
								</div> 
							</div>
							</div>
							</div>
								</c:if>
								
								</form>
								<div class="shangsd">
									<button onclick="ret1()">提交</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--左边内容结束-->

<script type="text/javascript">

 
</script>

 
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
<script type="text/javascript" src="../../js/hou/jquery.cityselect.js"></script>

<script type="text/javascript">

function ret1(){
	var fd=new FormData($("#form")[0]);
	if($("#dsg1").hasClass("dsg") || $("#dsg2").hasClass("dsg")){
	$.ajax({
		url:"applyRet",
		data:fd,
		type:"post",
		processData:false,
		contentType:false,
		success: function(data){
			alert(data);
			window.location.reload();
		}
	})
	}else{
		alert("请选择货物状态后,再提交");
	} 
	
	
	/* var detailid = $("#detailid").val();
	if($("#dsg1").hasClass("dsg") || $("#dsg2").hasClass("dsg")){
		
		var descr = $("#area").val();
		var reason = $("#select").val();
		var money = $("#money").html();
		var file =document.getElementById('file').files[0];              //获取文件对象
		var formData=new FormData();		//
		formData.append("file",file);
		var data = {
				detailid:detailid,
				descr:descr,
				reason:reason,
				money:money,
		};
		$.post("applyRet",data,function(data){
			alert(data);
		});
		
	}else{
		alert("请选择货物状态后,再提交");
	} */
}

function setsrc(obj){
	var url = getObjectURL(obj);
	$("#img").attr('src',url);
}

//获取文件上传的真实路径
function getObjectURL(file) {
	var url = null;  
	var fileObj =file.files[0];
	if (window.createObjcectURL != undefined) {  
	    url = window.createOjcectURL(fileObj);  
	} else if (window.URL != undefined) {  
	    url = window.URL.createObjectURL(fileObj);  
	} else if (window.webkitURL != undefined) {  
	    url = window.webkitURL.createObjectURL(fileObj);  
	}
	return url;
}


function change1(){
	$("#dsg1").addClass("dsg");
	$("#dsg2").removeClass("dsg");
	var orderstatu = $("#change1").html();
	var detailid = $("#odetailid").val();
	var data={
		statu:orderstatu,
		odetailid:detailid
	}
	$.post("retReason",data,function(data){
		$("#select").empty();
		$("#select").append("<option value='"+0+"'>请选择</option>");
		for(var i = 0 ;i<data.length;i++){
			$("#select").append("<option value='"+data[i].reason+"'>"+data[i].reason+"</option>");
		}
	}) 
}
function change2(){
	$("#dsg2").addClass("dsg");
	$("#dsg1").removeClass("dsg");
	var orderstatu = $("#change2").html();
	var detailid = $("#odetailid").val();
	var data={
			statu:orderstatu,
			odetailid:detailid
		}
	$.post("retReason",data,function(data){
		$("#select").empty();
		$("#select").append("<option value='"+0+"'>请选择</option>");
		for(var i = 0 ;i<data.length;i++){
			$("#select").append("<option value='"+i+1+"'>"+data[i].reason+"</option>");
		}
	}) 
}

</script>