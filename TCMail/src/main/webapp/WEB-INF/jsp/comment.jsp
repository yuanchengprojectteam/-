<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<html>   
<head>  
<meta charset="utf-8">
<title>WangID通城——评价</title>
<link rel="stylesheet" type="text/css" href="../../css/index.css">
<link rel="stylesheet" type="text/css" href="../../css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="../../js/index.js" ></script>   -->
<script type="text/javascript" src="../../js/jquery1.42.min.js"></script>
<script type="text/javascript" src="../../js/jquery-1.11.1.min.js"></script>

<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>

<script type="text/javascript">
	function changeClass(ob){
		var id = $(ob).attr("value");
		var arr = new Array();
		arr = id.split(',');
		//alert(id);
		var noShow="star star"+arr[0];
		var show="star star"+arr[0]+" "+"hover";
		var flag = $(ob).hasClass(show)
		if(flag){
			
			$(ob).removeClass(show).addClass(noShow);
		}else{
			$(ob).removeClass(noShow).addClass(show);
			$("#"+arr[1]).text(arr[0]);
			$("#"+arr[1]+"1").val(arr[0]);
		}
	}
	
	function getObjectURL(file) {  
	     var url = null;  
	     if (window.createObjcectURL != undefined) {  
	         url = window.createOjcectURL(file);  
	     } else if (window.URL != undefined) {  
	         url = window.URL.createObjectURL(file);  
	     } else if (window.webkitURL != undefined) {  
	         url = window.webkitURL.createObjectURL(file);  
	     }  
	     return url;  
	 }


</script>
 
</head>
<body>
<!--头部-->  

<%@ include file="../public/AfterHeader.jsp" %>
<!--内容-->
<form action=""  id="formid">
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="pingj_dingd_hao">
			<h3>订单评价</h3>
			<p><span><i>订单号：</i>${comm.uorder.id }</span><span>${comm.uorder.ordertime }</span></p>
			<input type="hidden" name="uoid" value="${comm.uorder.id }">
		</div>
	</div>
	<div class="beij_center">
		<div class="lingj_neir_beij">
			<div class="dianp_pingj">
				<div class="dianpu_minc_ji">
					<a href="shagnj_dianp.html" class="shop_logo" target="_blank"><img src="${comm.goods.shop.user.image }"></a>
					<div class="dinam_he">
						<p class="shop_mignc">${comm.goods.shop.name }</p>
						<input type="hidden" name="gid" value="${comm.goods.id}" />
						<div class="shop_score_01">
							<div class="sum">
								<span class="tit s_diy">综合</span>
								<em class="num x_diy">9.59</em>
							</div>
							<div class="sum">
								<span class="tit">商品</span>
								<em class="num">9.59</em>
							</div>
							<div class="sum">
								<span class="tit">服务</span>
								<em class="num">9.59</em>
							</div>
							<div class="sum">
								<span class="tit">物流</span>
								<em class="num">9.59</em>
							</div>
						</div>
					</div>
				</div>
				<div class="dianpu_minc_you">
					<!---->
					 <div class="shangp_xx">
					 	<span class="label_2">商品符合度</span>
					 	<span class="commstar">
					 		<span value="1,a" title="非常不满意" class="star star1" onclick="changeClass(this)"></span>
					 		<span  value="2,a" title="不满意" class="star star2" onclick="changeClass(this)"></span>
					 		<span  value="3,a" title="一般" class="star star3" onclick="changeClass(this)"></span>
					 		<span  value="4,a" title="满意" class="star star4" onclick="changeClass(this)"></span>
					 		<span  value="5,a" title="非常满意" class="star star5" onclick="changeClass(this)"></span>
					 		<span id="a" class="star_info">0</span>
					 		<input id="a1" type="hidden" value="" name="gfit">
					 	</span> 
					 </div>
					  <div class="shangp_xx">
					 	<span class="label_2">店家服务态度</span>
					 	<span class="commstar">
					 		<span value="1,b" title="非常不满意" class="star star1" onclick="changeClass(this)"></span>
					 		<span  value="2,b" title="不满意" class="star star2" onclick="changeClass(this)"></span>
					 		<span  value="3,b" title="一般" class="star star3" onclick="changeClass(this)"></span>
					 		<span  value="4,b" title="满意" class="star star4" onclick="changeClass(this)"></span>
					 		<span  value="5,b" title="非常满意" class="star star5" onclick="changeClass(this)"></span>
					 		<span id="b" class="star_info">0</span>
					 		<input id="b1" type="hidden" value="" name="atti">
					 	</span> 
					 </div>
					 <div class="shangp_xx">
					 	<span class="label_2">物流发货速度</span>
					 	<span class="commstar">
					 		<span value="1,c" title="非常不满意" class="star star1" onclick="changeClass(this)"></span>
					 		<span  value="2,c" title="不满意" class="star star2" onclick="changeClass(this)"></span>
					 		<span  value="3,c" title="一般" class="star star3" onclick="changeClass(this)"></span>
					 		<span  value="4,c" title="满意" class="star star4" onclick="changeClass(this)"></span>
					 		<span  value="5,c" title="非常满意" class="star star5" onclick="changeClass(this)"></span>
					 		<span id="c" class="star_info">0</span>
					 		<input id="c1" type="hidden" value="" name="speed">
					 	</span> 
					 </div>
					 <div class="shangp_xx">
					 	<span class="label_2">配送员服务态度</span>
					 	<span class="commstar">
					 		<span value="1,d" title="非常不满意" class="star star1" onclick="changeClass(this)"></span>
					 		<span  value="2,d" title="不满意" class="star star2" onclick="changeClass(this)"></span>
					 		<span  value="3,d" title="一般" class="star star3" onclick="changeClass(this)"></span>
					 		<span  value="4,d" title="满意" class="star star4" onclick="changeClass(this)"></span>
					 		<span  value="5,d" title="非常满意" class="star star5" onclick="changeClass(this)"></span>
					 		<span id="d" class="star_info">0</span>
					 		<input id="d1" type="hidden" value="" name="watti">
					 	</span> 
					 </div> 
					<!--******-->
				</div>
			</div>
			<div class="shangp_pingj">
				<div class="shangp_minc_ji">
					<div class="comment_goods">
						<p class="zuo_img"><a href="shangp_xiangq.html"><img src="${comm.goods.image }"></a></p>
						<p><a href="shangp_xiangq.html">${comm.goods.name } </a></p>
						<span class="zuo_jiag">￥${comm.goods.price }</span>
						<span>${comm.goods.size }  ${comm.goods.color }</span>
					</div>
				</div>
				<div class="dianpu_minc_you">
					<div class="shangp_many">
						<div class="shangp_xx">
						 	<span class="fop_label label_2">商品满意度</span>
						 	<span class="commstar">
						 	<span value="1,e" title="非常不满意" class="star star1" onclick="changeClass(this)"></span>
					 		<span  value="2,e" title="不满意" class="star star2" onclick="changeClass(this)"></span>
					 		<span  value="3,e" title="一般" class="star star3" onclick="changeClass(this)"></span>
					 		<span  value="4,e" title="满意" class="star star4" onclick="changeClass(this)"></span>
					 		<span  value="5,e" title="非常满意" class="star star5" onclick="changeClass(this)"></span>
					 		<span id="e" class="star_info">0</span>
					 		<input id="e1" type="hidden" value="" name="satisf">
						 	</span> 
						 </div> 
					</div>
					<div class="shangp_many">
						<div class="fop_label">评价晒单</div>
						<div class="fop_shur_kuang">
							<div class="sdvg">
								<div class="f-textarea">
									<textarea name="msg" id="msg" placeholder="商品是否给力？快分享你的购买心得吧~"></textarea>
									<div class="textarea-ext">还可输入500字</div>
								</div>
							</div>
							<div class="pinj_shangc_tup">
								<span class="btn_upload" onclick="f.click()" ><input type="file" name="file" id="f"  style="display:none"/></span>
								<span class="btn_upload" onclick="f1.click()" ><input type="file" name="file" id="f1"  style="display:none"/></span>
								<span class="btn_upload" onclick="f2.click()" ><input type="file" name="file" id="f2"  style="display:none"/></span>
								<span class="btn_upload" onclick="f3.click()" ><input type="file" name="file" id="f3"  style="display:none"/></span>
								<!--手机传图-->
								 <!-- <span class="btn_upload yiwei_beij"></span>  -->
								<p>共<em>0</em>张,还能上传<em>9</em>张</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="pingj_tij_ann">
				<span  class="btn_submit" onclick="commentSavemsg()">提交</span>
				<span class="f_checkbox">
					<input type="checkbox" class="i-check">
					<label for="check1">匿名评价</label>
				</span>
			</div>
		</div>
	</div>
</div>
</form>
<jsp:include page="../public/AfterFoot.jsp"></jsp:include>
</body>
<script type="text/javascript">
	function commentSavemsg(){
		var fd = new FormData(formid);
		//alert(fd);
		$.ajax({
			url:"commentMsg",
			type:"post",
			cache:false,
			contentType: false,
			processData: false,
			dataType:"JSON",
			data: fd,
			success:function(data){
				alert(data);
			}
		});
		
		
		
	}



</script>

</html>

