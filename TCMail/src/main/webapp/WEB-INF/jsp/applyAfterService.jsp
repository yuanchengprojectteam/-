<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->
 


</head>
<body>
<%@ include file="AfterHeader.jsp" %>
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->
			<div class="tod_tongc_zuoc">
				<div class="zuoc_toux">
					<div class="toux_kuang">
						<div class="userImage">
							<div class="myGome_userPhoto">
								<img src="images/toux.png">
								<a class="edit_photo_bitton" href="profile" target="_blank">编辑</a>
							</div>
						</div>
						<div class="user_name_Level">
							<p class="user_name" title="山的那边是海">山的那边是海</p>
							<p class="userLevel">会员：<span class="levelId icon_plus_nickname"></span></p> 
						</div>
					</div>
					<div class="userInfo_bar">
						<span>资料完成度</span>
						<span class="userInfo_process_bar"><em class="active_bar" style="width: 40px;"> 20%</em></span>
						<a href="ger_xinx.html" target="_blank">完善</a>
					</div>
					<div class="myGome_accountSecurity">
						<span class="fl_ee" style="margin-top:2px;">账户安全 <em class="myGome_account_level"> 低</em> </span>
						<div class="verifiBox fl_ee">
							<div class="shab_1">
								<span class="myGome_mobile" val="mobile"> <em class=" myGome_onActive "></em> </span> 
								<p class="myGome_verifiPop"> <span>您已绑定手机：</span> <span>182****0710</span> <a href="zhangh_anq.html" target="_blank">管理</a></p>
							</div>
							<div class="shab_1">
								<span class="myGome_email" val="email"> <em class=""></em> </span>
								<p class="myGome_verifiPop"> <span>您还未绑定邮箱 </span><a href="zhangh_anq.html" target="_blank">立即绑定</a></p>
							</div>
						</div>
						<a class="fl_ee" href="zhangh_anq.html" target="_blank" style="margin-top:2px;">提升</a>
					</div>
					<div class="user_counts">
						<ul>
							<li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon01"></i> 待付款
                                        <em id="waitPay">2</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon02"></i> 待收货
                                        <em id="waitPay">4</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon03"></i> 待提货
                                        <em id="waitPay">0</em>
                                    </a>
                                </div>
                            </li>
                            <li>
                                <div class="count_item">
                                    <a href="wod_dingd.html">
                                        <i class="count_icon count_icon04"></i> 待评价
                                        <em id="waitPay">8</em>
                                    </a>
                                </div>
                            </li>
						</ul>
					</div>
				</div>
				<div class="wod_tongc_daoh_lieb">
					<div class="diy_top">
						<ul>
							<h3>订单中心</h3>
							<li><a href="wod_dingd.html">我的订单</a></li>
							<li><a href="shengq_shouh.html">退换货单</a></li>
							<li><a href="pingj_shaid.html">评价晒单</a></li>
						</ul>
						<ul>
							<h3>管理中心</h3>
							<li><a href="wod_shouc.html">我的收藏</a></li>
							<li><a href="#">我的预约</a></li>
							<li><a href="#">我的咨询</a></li>
							<li><a href="#">投诉管理</a></li>
						</ul>
					</div>
					<div class="diy_top">
						<ul>
							<h3>账户设置</h3>
							<li><a href="ger_xinx.html">基本资料</a></li>
							<li><a href="zhangh_anq.html">账户安全</a></li>
							<li><a href="shouh_diz.html">收货地址</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--左边内容-->
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">申请售后</div> 
					<div class="wod_dingd_shuaix wod_shouh"> 
						<p class="dingd_huis_zhan"><a href="#">联系卖家</a></p>
						</div>
					<!--************************************-->
					
					<c:if test="${! empty ReturnList1}">
					<c:if test="${! empty ReturnList}">	
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
								<td colspan="3"> 
									<span class="dealtime span_30" >商品名称</span> 
								</td>
								
								<td colspan="1"> 
									<span class="dealtime span_30" >购买数量</span> 
								</td>
							</tr>
							<tr class="tr-bd">
								<td rowspan="1" colspan="3">
									<div class="goods-item">
										<div class="p-img">
											<a target="_blank" href="shangp_xiangq.html">
												<img src="images/lieb_tupi1.jpg" alt="">
											</a>
										</div>
										<div class="p-msg">
											<div class="p-name">
											<input type="hidden" name="id" value="${ReturnList1.id}" id="detailid">
												<span class="span_30"><a href="shagnj_dianp.html">${ReturnList1.goods.shop.name }</a></span><br>
												<a target="_blank" href="shangp_xiangq.html">${ReturnList1.goods.name } ${ReturnList1.goods.size } ${ReturnList1.goods.color }</a>
												
											</div>
										</div>
									</div>  
								</td>
								
								<td rowspan="1">
									<div class="txt_ren">
										<span>x${ReturnList1.num }</span> 
									</div>
								</td>  
							</tr> 
						</tbody> 
					</table>
					
					<div class="shengq_waik">
						<div class="shengq_qingd">
							<div class="shengq_tis_1">
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
										 <select class="select" id="select">
											 <option>请选择</option>
											 
										 </select>
									</div>
								</div>
								
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 退款金额：</p>
									<div class="yocu">
										<ul>
											<li>
												<div class="dangq_xuanz_diz" >${ReturnList1.goods.price}元</div>
											</li>
										</ul>
										
										
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p"><em>*</em> 问题描述：</p>
									<div class="yocu">
										<div class="sdg"><textarea cols="" rows="" class="area"></textarea><p>10-500字</p></div> 
									</div>
								</div>
								<div class="shengs_li_1">
									<p class="p">上传凭证：&nbsp;&nbsp;&nbsp;&nbsp;</p>
									<div class="yocu">
										<input type="file" style="display: none" id="file" onchange="setsrc(this)">
							 			<div class="pinj_shangc_tup">
											<img class="btn_upload" alt="" src="" onclick="file.click()" id="img">
										</div>
									</div>
								</div> 
								
								<div class="queren_xinx" id="dangq" style="display: block;">
									<p class="quer_xinx_biaot">确认信息<a  id="gef">[修改]</a></p>
									<div class="wome">
										<div class="shengs_li_1">
											<p class="p">  申请凭证：</p>
											<div class="yocu">  
												<p class="pfg">有发票</p>
											</div>
										</div> 
										<div class="shengs_li_1">
											<p class="p"><em>*</em>返回方式：</p>
											<div class="yocu">  
												<p class="pfg">邮寄</p>
											</div>
										</div> 
									
										<div class="shengs_li_1">
											<p class="p"><em>*</em>收货地址：</p>
											<div class="yocu">  
												<p class="pfg">${ReturnList1.goods.shop.addr}</p>
											</div>
										</div>
										<div class="shengs_li_1">
											<p class="p"><em>*</em>收货人：</p>
											<div class="yocu">  
												<p class="pfg">${ReturnList1.goods.shop.name}</p>
											</div>
										</div>
										<div class="shengs_li_1">
											<p class="p"><em>*</em>手机号码：</p>
											<div class="yocu">  
												<p class="pfg"> ${ReturnList.addr.phone}<span>提交服务单后，售后专员可能与您电话沟通，请保持手机畅通</span></p>
											</div>
										</div> 
									</div>
								</div>
							</div>
							</div>
						</div>
								</c:if>
								</c:if>
								<div class="shangsd">
									<p>
										<input type="checkbox" checked="checked">
										<span class="ds">我已阅读并同意 <em><a href="#">《上门取件服务协议》</a></em></span>
									</p>
									<button>提交</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--左边内容结束-->

<script type="text/javascript">
window.onload=function(){
	var t=document.getElementById('gef');
	var c=document.getElementById('gef_1');
	var DangQian=document.getElementById('dangq');
	t.onclick=function(){
		c.style.display ='block';
		DangQian.style.display='none';
	};
};
 
</script>

 
<%@ include file="AfterFoot.jsp" %>
<script type="text/javascript" src="../../js/hou/jquery.cityselect.js"></script>

<script type="text/javascript">

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
	var detailid = $("#detailid").val();
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
function change2(){
	$("#dsg2").addClass("dsg");
	$("#dsg1").removeClass("dsg");
	var orderstatu = $("#change2").html();
	var detailid = $("#detailid").val();
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