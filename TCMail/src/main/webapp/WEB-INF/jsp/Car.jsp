<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>WangID通城——购物车</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!-- <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  
<script type="text/javascript" src="../../js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="../../js/jquery-2.1.4.js"></script>

<script type="text/javascript"
	src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<script type="text/javascript" src="js/select.js"></script>

</head>
<body>
	<!--头部-->

	<!--头部-->
	<jsp:include page="../public/Header.jsp"></jsp:include>

	<!---->
	<div class="yiny yiny_gouwc">
		<div class="beij_center">
			<div class="dengl_logo">
				<img src="images/logo_1.png">
				<h1>购物车</h1>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="cart-login-tip fl" id="idnotlogin" act-not-login-info=""
			style="display: none;">
			您还没有登录！登录后购物车的商品将保存到您账号中。 <a class="cart-login-btn" href="tologin">
				立即登录 </a>
		</div>
	</div>

	<div class="beij_center">
		<div class="cart-main-header clearfix">
			<div class="cart-col-1">
				<input type="checkbox" id="up" onclick="checkAll(this)"
					class="jdcheckbox">
				
			</div>
			<div class="cart-col-2">全选</div>
			<!-- $page.site 主站 团购 抢购   style -->
			<div class="cart-col-3">商品信息</div>
			<div class="cart-col-4">
				<div class="cart-good-real-price">单价</div>
			</div>
			<div class="cart-col-5">数量</div>
			<div class="cart-col-6">
				<div class="cart-good-amount">小计</div>
			</div>
			<div class="cart-col-7">操作</div>
		</div>
	</div>
<form action="nraaa" method="post" id="carForm">
	<div class="container">
		<c:forEach items="${CarList }" var="temp">
			<div class="cart-shop-header">
				<div class="cart-col-1">
					<!-- <input type="checkbox"  name="c1" class="jdcheckbox" > -->
				</div>
				<div class="cart-col-2">
					<span class="gouw_c_dianp">${temp.goods.shop.name }</span>
				</div>
			</div>
			<div class="cart-shop-goods dangq_honh">
				<div class="cart-shop-good">
					<div class="cart-col-1">
					<!-- 状态 Unchecked 未选中 -->
						<br /> <input type="checkbox" name="Unchecked"
							id="checkboxx${temp.id }" class="jdcheckbox" 
							onclick="changestatu('${temp.id }')" onchange="changenumber('${temp.id }')">
			
					</div>
					<input type="hidden"  id="h${temp.id}" name="cid"  value="${temp.id}">
					<div class="cart-col-2" style="height: 82px;">
						<a href="shangp_xiangq.html" target="_blank" class="g-img"><img
							src="${temp.goods.image }" alt="商品图片"></a>
					</div>
					<div class="fl houj_c">
						<div class="cart-dfsg">
							<div class="cart-good-name">
								<a href="goodsDetail" target="_blank">
									${temp.goods.name } ${temp.goods.size} ${temp.goods.color}</a>
							</div>
						</div>
						<div class="cart-good-pro"></div>
						<div class="cart-col-4">
							<div class="cart-good-real-price ">
								<!--主品-->
								¥&nbsp;<em id="thisgoods${temp.id }">${temp.goods.price }</em>
							</div>
							<div class="red"></div>
						</div>
						
						
						<div class="cart-col-5">
							<div class="gui-count cart-count"">
								<input id="del_${temp.id}" name="-1" onclick="operate(id)"
									type="button" value="-" class="gui-count-btn gui-count-add">
								<input id="text_box_${temp.id}" name="num" 
									type="text" value="${temp.num }"
									style="width: 48px; height: 20px; font-size: 12px; text-align: center; float: left" />
									
									
								<input id="add_${temp.id}" name="1" type="button" value="+"
									onclick="operate(id)"
									class="gui-count-btn gui-count-sub gui-count-disabled">
								<input type="hidden" name="goods_${temp.goods.id }" value="${temp.goods.id}">
							</div>
						</div>
						
						
						<div class="cart-col-6 ">
							<div class="cart-good-amount" >¥
								<em id="numgoods${temp.id}">${temp.totalPrice}</em></div>
							<!-- 重量展示(只展示全球百货的重量) -->
						</div>
						
						
						
					</div>
					<div class="cart-col-7">
						<div class="cart-good-fun delfixed">
							<a href="#" onclick="deleteFromCar('${temp.id}')">删除</a>
						</div>
						<div class="cart-good-fun">
							<a href="#" onclick="addToFav(${temp.goods.id},${temp.id})">移入收藏夹</a>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<div class="jies_beij">
		<div class="beij_center over_dis">
			<div class="cart-col-1 cart_jies">
				<input type="checkbox" class="jdcheckbox">
			</div>
			<div class="qianm_shanc_yvf">
				<span onclick="checkAll(this)">全选</span> <a href="#"
					onclick="deleteFCar()">删除</a>
			</div>
			
			
			<div class="jies_ann_bei">
				<p>
					已选 <em id="allnumber">0</em> 件商品 总计（不含运费）：<span id="shouldPayMoney">￥
						0.00</span>
						<input type="hidden" name="totalprice" value="" id="totalprice">
						<input type="hidden"  name="totalNum" value="" id="totalNum">
				</p>
			
				
				<a href="#"  onclick="carForm.submit()"   class="order_btn">去结算</a>
				
			</div>
			
			
		</div>
		
	</div>

</form>

	<div class="beij_center">
		<div class="investment_f">
			<div class="investment_title">
				<div class="ds_dg on_d">为您推荐</div>
				<div class="ds_dg">最近预览</div>
			</div>
			<div class="investment_con">
				<!---->
				<div class="picScroll_left_s" style="display: block;">
					<div class="hd">
						<a class="next next_you"></a>
						<ul></ul>
						<a class="prev prev_zuo"></a>
					</div>
					<div class="bd">
						<ul class="picList">
							<li>
								<div class="pic">
									<a href="shangp_xiangq.html" target="_blank"><img
										src="images/lieb_tupi3.jpg" /></a>
								</div>
								<div class="title">
									<a href="shangp_xiangq.html" target="_blank">喜芬妮春秋桑蚕丝长袖性感蕾丝花边女式睡衣家居服二</a>
									<div class="jiage_gouw">
										<span>¥2499.00</span>
									</div>
									<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
								</div>
							</li>
							
						</ul>
					</div>
				</div>
				<!---->
				<div class="picScroll_left_s" style="display: none;">
					<div class="picScroll_left_s_dsl">
						<div class="dfgc">
							<ul class="picList">
							<c:forEach items="${BrowseRecord}" var="goods">
								<li>
									<div class="pic">
										<a href="shangp_xiangq.html" target="_blank"><img
											src="${goods.image }" /></a>
									</div>
									<div class="title">
										<a href="shangp_xiangq.html" target="_blank">${goods.name}</a>
										<div class="jiage_gouw">
											<span>¥${goods.price}</span>
										</div>
										<a href="gouw_che.html" class="cart_scroll_btn">加入购物车</a>
									</div>
								</li>
							</c:forEach>
								
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	function changestatu(id){
		var boolea=$("#checkboxx"+id)[0].checked;
		if(boolea){
			$("#checkboxx"+id).attr("name",'checked');
			$("#h"+id).val("cid"+id);
		}else{
			$("#checkboxx"+id).attr("name",'Unchecked');
			$("#h"+id).val(id);
		}
		console.log($("#checkboxx"+id).attr("name"));
	}
	function changenumber(id){
		var statu = $("#checkboxx"+id).attr("name");
		var oneMoney=parseInt($("#numgoods"+id).html());
		var allMoney=parseInt($("#shouldPayMoney").html().substring(2,$("#shouldPayMoney").html().length));
		var allGoodsNum = parseInt($("#allnumber").html());
		
		var goodsNum = parseInt($("#text_box_"+id).val());
		if(statu == 'checked'){
			allMoney = allMoney + oneMoney;
			allGoodsNum = allGoodsNum + goodsNum;
		}else{
			allMoney = allMoney - oneMoney;
			allGoodsNum = allGoodsNum - goodsNum;
			
		}
		$("#allnumber").html(allGoodsNum);
		$("#shouldPayMoney").html("￥ "+(allMoney));
		$("#totalprice").val(allMoney);
		$("#totalNum").html(allGoodsNum);
	}
	function operate(obj){
		var id = obj.split("_")[1];
		var operate = $("#"+obj).attr("name");
		var num = $("#text_box_"+id).val();
		var statu = $("#checkboxx"+id).attr("name");
		var price = $("#thisgoods"+id).html();
		var allGoodsNum = parseInt($("#allnumber").html());
		var goodsNum = parseInt($("#text_box_"+id).val());
		var allMoney=parseInt($("#shouldPayMoney").html().substring(2,$("#shouldPayMoney").html().length));
		var data = {
			id : id,
			operate : operate,
			num : num
		}
		$.post("operateOfCar",data,function(result){
			if(result.code == 0){
				alert(result.msg);
			}
			$("#text_box_"+id).val(result.data);
			$("#numgoods"+id).html($("#thisgoods"+id).html()*result.data);
			if(statu == 'checked'){
				if(operate == 1){
						allMoney = parseInt(allMoney) + parseInt(price);
						allGoodsNum = parseInt(allGoodsNum) + 1;
					
				}else{
					if(goodsNum>1){
					allMoney = parseInt(allMoney) - parseInt(price);
					allGoodsNum = parseInt(allGoodsNum) - 1;
					}
				}
				
			}
			$("#allnumber").html(allGoodsNum);
			$("#shouldPayMoney").html("￥ "+(allMoney));
			$("#totalprice").val(allMoney);
			$("#totalNum").html(allGoodsNum);
		});
		 
	}
	
	function checkAll(obj){
		$.each($("input[id^='checkboxx']"),function(i,item){
			
			var id = item.id.substring(9);
			var bool = $("#checkboxx"+id)[0].checked;
			if(!bool){
				item.checked=obj.checked;
				changestatu(id);
				changenumber(id);
			}else{
				item.checked=obj.unchecked;
			}
			
			
		})
		var id = '${CarList[0].id}'; 
		//changenumber(obj);
	} 
	 
	/* function changenumber(id){
		var boolea=$("#checkboxx"+id)[0].checked;
		var oneMoney=parseInt($("#numgoods"+id).html().substring(2,$("#numgoods"+id).html().length));
		var allMoney=parseInt($("#shouldPayMoney").html().substring(2,$("#shouldPayMoney").html().length));
		if(boolea){
			$("#shouldPayMoney").html("￥ "+(oneMoney+allMoney));
		}else{
			if(allMoney<=0){
				$("#shouldPayMoney").html("￥ "+0);
			}
			$("#shouldPayMoney").html("￥ "+(allMoney-oneMoney));
		}
	} */
	
	/* function add(id){
		var num=parseInt($("#text_box_"+id).val());
		$("#text_box_"+id).attr("disabled",false);
		if(num==1){
			$("#min_"+id).attr("disabled",false);
		}
		$("#text_box_"+id).val(num+1);
		var price=parseInt($("#thisgoods"+id).html());
		$("#numgoods"+id).html("￥ "+((num+1)*price));
		
		 var boolea=$("#checkboxx"+id)[0].checked;
		
		if(boolea){
			
			var rownum= parseInt($("#allnumber").html());
			$("#allnumber").html(rownum+num+1);
			
			 var paymoney= parseInt($("#shouldPayMoney").html().substring(1,$("#shouldPayMoney").html().length)); 
			
			
			$("#shouldPayMoney").html("￥ "+(paymoney+price));
			
		}; 
	
	}
	
	function del(id){
		var textid="#text_box_"+id;
		var num=parseInt($(textid).val());
		if((num-1)==0){
			$("#min_"+id).attr("disabled",true);
		}
			
		
		$(textid).val(num-1);
		var price=parseInt($("#thisgoods"+id).html());
		$("#numgoods"+id).html("￥ "+((num-1)*price));
		
		var boolea=$("#checkboxx"+id)[0].checked;
		
		 if(boolea){
			 
			 var paymoney= parseInt($("#shouldPayMoney").html().substring(1,$("#shouldPayMoney").html().length)); 
			
			 
			 var nowprice=paymoney-price;
			 if(nowprice<0){
				 $("#shouldPayMoney").html("￥ "+0);
			 }else{
				 $("#shouldPayMoney").html("￥ "+nowprice);
			 }
			 
			
		}; 
	}*/
	
$(function(){
		
    /*tab标签切换*/
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	 
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
  tabs(".investment_title","on_d",".investment_con");
  
})



function deleteFromCar(obj){
	
	$.ajax({
		url:"delfromCar",
		data:"id="+obj,
		type:"post",
		success: function(data){
			window.location.reload();
		}
	})
}
function addToFav(gid,sid){
	$.ajax({
		url:"addToFav?cid="+sid,
		type:"POST",
		data:"id="+gid,
		success:function(data){
			alert(data);
			window.location.reload();
		}
	})
}

var price;
function deleteFCar(){
	var str='';
	$.each($("input[name^='c']"),function(i,n){
		if(n.checked==true){
			deleteFromCar(n.value);
		}
	})
}

</script>
	<script type="text/javascript">
jQuery(".picScroll_left_s").slide({titCell:".hd ul",mainCell:".bd ul",autoPage:true,effect:"left",autoPlay:true,vis:5,trigger:"click"});
</script>


	<jsp:include page="../public/AfterFoot.jsp"></jsp:include>