<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
   <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
   
   <% 
   		if(request.getSession().getAttribute("loginedUser") == null){
   			request.getRequestDispatcher("login.jsp").forward(request, response);
   		}
   
   %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>WangID通城——商品详情页</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<link rel="stylesheet" type="text/css" href="houl/jquery.fancybox-1.3.4.css">
<link rel="stylesheet" type="text/css" href="houl/style.css">
<script src="js/jquery-1.11.3.min.js" ></script>
<!--  <script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script>
<script type="text/javascript" src="houl/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if('${sessionScope.loginedUser}'){
		$.ajax({
			url:"haveReciver",
			data:"sid="+${shop.id}+"&uid="+'${sessionScope.loginedUser.id}',
			type:"post",
			success:function(result){
				if(result=='yes'){
	   				document.getElementById('r').innerHTML='已收藏';
	   			 }else{
	   				document.getElementById('r').innerHTML='加入收藏';
	   			 }
			}
		});
	}else{
		document.getElementById('r').innerHTML='加入收藏';
	}
	
});
var  i=parseInt('${shop.level}');
document.getElementById('start').setAttribute('style','width:'+(i*20)+'%');
 function recivershop(){
	if('${sessionScope.loginedUser}'){
		$.ajax({
			url:"reciver", 					//url地址
	   		 data:"id="+${shop.id}+"&userid="+'${sessionScope.loginedUser.id}',   			 // 将uname=张三传递给后台
	   		 type:"post",   				 //传输方式，get / post
	   		 success:function(result){ //success为服务器响应成功后传回的数据。  result为后台传回来的数据
	   			 if(result=='yes'){
	   				document.getElementById('r').innerHTML='已收藏';
	   			 }else{
	   				document.getElementById('r').innerHTML='收藏失败';
	   			 }
	   		 }
	});
	}else{
		$("#r")[0].href="tologin";
	}
}


function colorSelect(e){
	var show="select";
	var noShow="clicks";
	var sign = $("#cor");
	var value = $(e).attr("value");
	//alert(value);
	var flag = $(e).hasClass(show)
	if(flag){
		sign.val("")
		$(e).removeClass(show).addClass(noShow);
	}else{
		sign.val(value)
		$(e).removeClass(noShow).addClass(show);
	}
	
}

function sizeSelect(f){
	var show="select";
	var noShow="clicks";
	var sign = $("#Goodsize");
	var value = $(f).attr("value");
	//alert(value);
	var flag = $(f).hasClass(show)
	if(flag){
		sign.val("")
		$(f).removeClass(show).addClass(noShow);
	}else{
		sign.val(value+"寸")
		$(f).removeClass(noShow).addClass(show);
	}
}

function add(){
	var sum = $("#sum").val();
	sum++;
	$("#sum").val(sum);
}

function reduce(){
	var sum = $("#sum").val();
	if(sum==1){
		alert("购买数量不能为'0'")
		return;
	}
	sum--;
	$("#sum").val(sum);
}


function addCar(){
	var color = $("#cor").val();
	var size = $("#Goodsize").val(); 
	var sum = $("#sum").val();
	var gid = $("#gid").val();
	var sid = $("#sid").val();
	alert(gid+":"+color+":"+size+":"+sid);
	//var isEmail = /^[A-Za-z0-9\u4e00-\u9fa5.]+$/;  
	//alert(isEmail.test(color));
	/*  if(!isEmail.test(color)){
		alert("颜色没有选择");
		return;
	}
	
	if(!isEmail.test(size)){
		alert("尺寸没有选择");
		return;
	}  */
	$.ajax({
		type:"post",
		url:"goodAddCar",
		cache:false,
		data:{"sum":sum,"gid":gid,"sid":sid},
		success:function(data){
				alert("加入购物车成功！");	
		},
		error:function(e){
			alert("ajax错误");
		}
		
	});
	
}


</script>

</script>
</head>
<body>
<!--侧边-->
<jsp:include page="../public/rowHeader.jsp"></jsp:include>

		<!--左边导航-->

		
		<!--左边导航结束-->
 <script type="text/javascript">
	(function(){ 
		var $subblock = $(".subpage"), $head=$subblock.find('h2'), $ul = $("#proinfo"), $lis = $ul.find("li"), inter=false; 
		$head.mouseover(function(e){
			e.stopPropagation();
			if(!inter){
				$ul.show();
			}else{
				$ul.hide();
			}
			inter=!inter;
		});
		
		$ul.mouseover(function(event){
			event.stopPropagation();
		});
		
		$(document).mouseover(function(){
			$ul.hide();
			inter=!inter;
		}); 
	})();
</script>
<!--商品详情-->
 <div class="breadcrumbs_container">
 	<div class="left_luj">
	    <ul> 
	 
	        <li>
				<a href="#" title="服饰鞋帽">服饰鞋帽</a>
				<i class="icon-crumbs-right"></i>
	        </li>
	        <li>
				<a title="女装">女装</a>
				<i class="icon-crumbs-right"></i>
	        </li>
	        <li>
				<a href="#" title="连衣裙">连衣裙</a>
				<i class="icon-crumbs-right"></i>
	        </li>
	        <li>
				<a href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" title="${shop.name }">${shop.name }</a>
				<i class="icon-crumbs-right"></i>
	        </li>
	        <li class="active">


				<a href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)">${goodMsg.name }(${goodMsg.color }&nbsp&nbsp${goodMsg.size })</a>


				

	        </li>
	    </ul>
    </div>
    <div class="right_dianp">
        <div class="ly-stores shops-name">
            <a class="btn-collect ">
                <i class="icon-collect"></i>
                <span  id="r" onclick="recivershop()">收藏店铺</span>
                <i class="icon-arrow"></i>
            </a>
            <a class="btn-service hide customerService_show"><i></i>在线客服</a>
            
            <span class="services-score"><b class="star-gray"><i class="star-red" style="width:81.2819333333%" id="start"></i></b><em class="score">${shop.level }</em>分</span>
<<<<<<< HEAD


            <a class="name" title="${goodMsg.shop.name }" href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" target="_blank">${goodMsg.shop.name }</a>
=======

            <a class="name" title="${shop.name }" href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" target="_blank">${shop.name }</a>

>>>>>>> refs/remotes/origin/master

             
        </div>
	</div>
 </div>
<div class="gome_container">
	<!--左-->
	<div class="prd_firstscreen_left">
		<!---->
		<div id="magnifier">
		    <div class="small-box">
		      	<img src="${goodMsg.image }" alt="#" align="top"/>
		      	<span class="hover"></span>
		    </div>
		    <div class="thumbnail-box">
		      	<a href="javascript:;" class="btn btn-prev"></a>
		      	<a href="javascript:;" class="btn btn-next"></a>
		      	<div class="list">
		        	<ul class="wrapper">
		        	<!-- class="item" class="item item-cur" -->
		   
		        		
		          		<li class="item item-cur" data-src="${goodMsg.images}"><img src="${goodMsg.images}" alt="#"></li>
		          		
			      
		        	</ul>
		      	</div>
		    </div>
		    <div class="big-box">
		      	<img src="${goodMsg.image }" alt="#">
		    </div>
		</div> 
		<!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
		<script src="js/magnifier.js"></script>
		<script>
		    $(function () { 
		      	$('#magnifier').magnifier(); 
		    });
		</script>
		<!---->
		<div class="preview-info">
            <div class="left-btns">
                <a class="share J-share" href="#">
                    <i class="sprite-share"></i><em>分享</em>
                </a>
				<a class="" href="#">
                    <i class="sprite-compare"></i><em>收藏商品（商品人气1500）</em>
                </a>
            </div>
            <div class="right-btns">
                <a class="report-btn" href="#">举报</a>
            </div>
        </div>
	</div>
	<!--中-->
	<div class="prd_firstscreen_center">
		<div class="hgroup">

        	<h1>${goodMsg.name }(${goodMsg.color }&nbsp&nbsp${goodMsg.size })</h1> 
    	</div>
    	<div class="prd_price_1">  
            <div class="unitprice">
            	<p>
            		<label class="prd_price_left">原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</label>
            		<span class="price xiangq_yuanj"><em>¥</em>${goodMsg.price }</span>  
            	</p>
                <p>
            		<label class="prd_price_left">促&nbsp;销&nbsp;价</label>
            		<span class="price"><em>¥</em>${goodMsg.price }</span>  
            	</p>
            </div>
            <div class="prd_price_flr">
                <div class="prd_price_line">|</div>
                <div class="prd_price_lineright">
                    <p>好评度<em id="haocnt">98%</em></p>
                    <p class="pincnt"><a href="#" class="reduce"><em>${goodMsg.commnum }</em>人评价</a></p>
                </div>
            </div> 
        </div>
        <!---->
        <form action="addOrder" method="post" id="formId">
        <div class="prd_properties">
	        <div class="prd_properties_1"> 
        		<label class="prd_price_left">服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</label>
        		<span>由<a href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum">${shop.name }</a>发货并负责售后服务。</span>  

	        </div>
	        <div class="prd-properties-2"> 
                <div class="prd_properties_other">
                    <label class="prdLeft">颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色</label>
                    <div class="prdRight">
                    <c:forEach items="${AllTS}" var="gl">
                        <div class="prdcol">
                            <a onclick="colorSelect(this)" class="" value="${gl.color }" data-alt="${gl.color }">
                        	 	<img src="${gl.image }" gome-src="${gl.image }" alt="${gl.image }">
                                <span>${gl.color }</span><i></i>
                            
                            </a>
                        </div>
                    </c:forEach>
                   
                    <input type="hidden" name="color" id="cor" />
              
                    </div>
                </div>
               
                <div class="prd_properties_other" style="display:block">
                    <label class="prdLeft">尺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <div class="prdRight_1">
                     <c:forEach items="${AllTS}" var="siz">
                        <div class="prdmod">
                        <!-- select:选中 -->
                            <a onclick="sizeSelect(this)" class="clicks" value="${siz.size }" title="${siz.size }" data-alt="${siz.size }">${siz.size }<i></i></a>
                        </div>
                      </c:forEach>
                      <input type="hidden" name="size" id="Goodsize" />
                        
                    </div>
                </div>   
	        </div>
	    </div>
	    <div class="prd_properties_1 hou_jia"> 
    		<label class="prd_price_left">货&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;源</label>
    		<span>库存仅剩${goodMsg.num }件</span>  
        </div>
	    <style type="text/css">
	    	.hou_jia{
	    		padding:0 10px;
	    	}
	    	.kuc_jian{
	    		width: 100%;
	    		line-height: 25px;
	    	}
	    </style>
	    <!---->
	   
	    <div class="prd_buttons">
		    <div class="count-wrapper" id="btnCount">
		        <input type="text" id="sum" name="sum" class="quantity" value="1">
		        <a onclick="add()" class="plus j-gACbtnA">+</a>
		        <a onclick="reduce()" class="minus j-gACbtn disab">-</a>
		    </div>
		   
		    <input type="hidden" id="gid" name="goodId" value="${goodMsg.id }">
		     <input type="hidden" id="sid" name="shopId" value="${goodMsg.shop.id }">
		    <a onclick="formId.submit()" class="btn-product btn-addcart">立即购买</a>
		    <a onclick="addCar()" class="btn-product">加入购物车</a>

	    </div> 
	    </form>
        <!---->
        <div class="prd-tips wenxintishi_wrap clearfix">
	        <p>温馨提示</p>
	        <ol class="wenxinti">
	            <li> 
	                正品保障；
	                支持7天无理由退货
	            </li>
	        </ol>
	    </div>
        <!---->
	</div>
	<!--右-->
	<div class="prd_firstscreen_right">
		<h2>看了又看</h2>
		<!---->
		<div class="multipleColumn" style="margin:0 auto"> 
			<div class="bd">
				<div class="ulWrap">
					<ul><!-- 把每次滚动的n个li放到1个ul里面 -->
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/xiangqtu_1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/lieb_tupi3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/big_3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li> 
					</ul>
					<ul><!-- 把每次滚动的n个li放到1个ul里面 -->
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/xiangqtu_1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/lieb_tupi3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/big_3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li> 
					</ul>
					<ul><!-- 把每次滚动的n个li放到1个ul里面 -->
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/xiangqtu_1.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/lieb_tupi3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li>
						<li>
							<div class="pic"><a href="#" target="_blank"><img src="images/big_3.jpg" /></a></div>
							<div class="title"><a href="#" target="_blank">￥68.00</a></div>
						</li> 
					</ul> 
				</div><!-- ulWrap End -->
			</div><!-- bd End -->
			<div class="hd"> 
				<ul></ul> 
			</div>
		</div><!-- multipleColumn End -->

		<script type="text/javascript"> 
			jQuery(".multipleColumn").slide({titCell:".hd ul",mainCell:".bd .ulWrap",autoPage:true,effect:"leftLoop",autoPlay:true,vis:1});
		</script>
		<!---->
	</div>
</div>

<!--商品信息结束-->
<!--详情-->
<div class="shangp_xiangq_neir_beij">
<!--left-->
	<div class="shangp_xiangq_left">
		<!---->
		<div class="shangp_xiangq_left_biank">
			<div class="stores-infos">
		        <div class="ly-stores">
		            <h2 class="fix-storesname shops-name" id="store_live800_wrap">
		                <a class="name" title="${shop.name }" href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" target="_blank">${shop.name }</a> 
		            </h2>
		            <div class="services-wrapper">
		                <div class="services-stars">
		                    服务评分：
		                    <span class="star"><i style="width:81.2819333333%">星星</i></span>
		                    <span class="score">4.0</span>分
		                </div>
		                <div class="services-score-detail">
		                    <p><span class="detail">评分明细</span><span class="contrast">与行业对比</span></p>
		                    <div class="describe ">
		                        <p>商品描述：<span>4.15</span><small title="计算规则：（商家得分-同行业平均分）" class="diyu_text">9.93%</small><i class="diyu">箭头</i></p>
		                    </div>
		                    <div class="logistics">
		                        <p>发货速度：<span>3.96</span><small title="计算规则：（商家得分-同行业平均分" class="diyu_text">15.34%</small><i class="diyu">箭头</i></p>
		                    </div>
		                    <div class="services">
		                        <p>服务质量：<span>4.08</span><small title="计算规则：（商家得分-同行业平均分））" class="diyu_text">13.08%</small><i class="diyu">箭头</i></p>
		                    </div>
		                </div>
		            </div>
		            <div class="btn-group">
		                <a href="toshopGoodsShowStyle1?id=${shop.id}&oreason=commnum" class="btn-product btn-enter" target="_blank"><i></i>进入店铺</a>
		                <a href="#" class="btn-collect" onclick="recivershop()" id="r"><i class="sprite-enter"></i></a>
		            </div>
		        </div>
		    </div>
		    <!---->
		    <div class="dianp_xiao_jiej">
		    	<div class="shangj_diz">
		    		<p>地址：<span>${shop.addr }</span></p>
		    		<span>电话：${ShopOwner.phone }</span>
					<span>联系人：${ShopOwner.realname}</span>
					<span>营业时间：09:00至18:00</span>
		    	</div>
		    	<div class="_xq_gogns_jianj">
			    	<p>公司简介：</p>
			    	<p class="_xq_gogns_jianj_neir">${shop.describe }<a href="#">[查看更多]</a></p>
		    	</div>
		    </div>
	    </div>
		<!---->
		<div class="shangp_xiangq_left_biank">
			<div class="stores-infos">
		        <div class="ly-stores">
		            <h2 class="fix-storesname shops-name" id="store_live800_wrap">
		                <a class="name" title="本店商品" href="#" target="_blank">本店商品</a> 
		            </h2> 
		            <ul class="bend_shangp_lieb">
		            	<li>
		            		<c:forEach items="${goodMsg.shop.good }" var="g">
		            
		            	<li>
		            		<a href="lootbuy?gid=${g.id }">
		            			<img src="${g.image }">
		            			<h3>￥${g.price }</h3>
		            			<p>${g.name }</p>
		            		</a>
		            	</li>
		           </c:forEach>
		            	</li>
		            	
		            </ul>
		        </div>
		    </div>
	    </div>
	    <!---->
	    <div class="shangp_xiangq_left_biank">
			<div class="stores-infos">
		        <div class="ly-stores">
		            <h2 class="fix-storesname shops-name" id="store_live800_wrap">
		                <a class="name" title="热门商品" href="#" target="_blank">热门商品</a> 
		            </h2> 
		            <ul class="bend_shangp_lieb">
		            <c:forEach items="${hostGoods }" var="hg">
		            
		            	<li>
		            		<a href="lootbuy?gid=${hg.id }">
		            			<img src="${hg.image }">
		            			<h3>￥${hg.price }</h3>
		            			<p>${hg.name }</p>
		            		</a>
		            	</li>
		           </c:forEach>
		            </ul>
		        </div>
		    </div>
	    </div>
		<!---->
	</div>
<!--right-->
	<div class="shangp_xiangq_right">
		<!---->
		<div class="slideTxtBox_1">
			<div class="hd">  
				<ul><li>商品介绍</li><li>售后保障</li><li>商品评价(500+)</li></ul>
				<div class="extra_jiar_gouw_c">
					<a href="#">加入购物车</a>
				</div>
			</div>
			<div class="bd">
				<ul>
					<div class="p_parameter">
						<ol class="p_parameter_list">
							<li title="卿城">品牌： <a href="#" target="_blank">卿城</a> </li>
						</ol>
						<ol class="parameter2 p_parameter_list">
		<li title="${goodMsg.name }&nbsp">商品名称：${goodMsg.name }(${goodMsg.color }&nbsp&nbsp${goodMsg.size })</li>
    						<li title="11971841918">商品编号：${goodMsg.id }</li>
                      		<li title="依晴服饰内衣专营店">店铺： <a href="toshopGoodsShowStyle1?id=${goodMsg.shop.id}&oreason=commnum" target="_blank">${goodMsg.shop.name }</a></li>
                     		
							<li title="M，L，XL，XXL">尺码：<c:forEach items="${ AllTS}" var="li">
								${li.size }&nbsp&nbsp
							</c:forEach></li>

						</ol>
					</div>
					<div class="detail_content_wrap">
						<img src="${goodMsg.image }">
						<img src="${goodMsg.image }">
						<img src="${goodMsg.image }">
						<img src="${goodMsg.image }">
					</div>
					<div class="shouh_baoz">
						<div class="mt">
	                       <h3>售后保障</h3>
	                    </div>
	                    <!---->
	                    <div class="mc">
		                    <div class="item-detail item-detail-copyright">
								<div class="serve-agree-bd">
		    						<dl> 
										<dt>
								            <i class="goods"></i>
								            <strong>卖家服务</strong>
								        </dt>
									    <dd>
										</dd>
										<dt>
								            <i class="goods"></i>
								            <strong>正品行货</strong>
								        </dt>
								        <dd>
											wangid平台卖家销售并发货的商品，由卖家提供发票和相应的售后服务。请您放心购买！<br>
											注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
								        </dd>
									  
							        </dl>
								</div>
								<div id="state">
		                            <strong>权利声明：</strong><br>wangid通城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
		                            <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
								</div>
		                    </div>
		                </div>
	                    <!---->
					</div>
					<!---->
					<div class="shouh_baoz_2">
						<div class="mt"><h3>商品评价</h3></div>
						<div class="mc">
							<div class="comment-info J-comment-info">
								<div class="comment-percent">
									<strong class="percent-tit">好评度</strong>
									<div class="percent-con">99<span>%</span></div>
								</div>
							</div>
							<!---->
							<div class="ETab">
								<div class="tab-main small">
									<ol class="filter-list">
										<li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
										<li ><a href="#">晒图<em>(60)</em></a></li>
										<li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
										<li><a href="#">好评<em>(4900+)</em></a></li><li>
										<a href="#">中评<em>(40+)</em></a></li>
										<li><a href="#">差评<em>(20+)</em></a></li>
										<li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
									</ol>
									<div class="_extra_a">
										<div class="sort-select">
											<div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
											<div class="others">
												<div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
												<ol>
													<li class="J-sortType-item">推荐排序</li>
													<li class="J-sortType-item">时间排序</li>
												</ol>
											</div>
										</div>
									</div>
								</div> 
							</div>
						</div>
						<!---->
						<div class="tab_con">
							<ol class="replyListWrap"> 
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
										<div id="content"> 
	<p> 
		<a rel="example_group" href="images/example/9_b.jpg" title="Lorem ipsum dolor sit amet"><img alt="" src="images/example/9_s.jpg" /></a> 
		<a rel="example_group" href="images/example/10_b.jpg" title=""><img alt="" src="images/example/10_s.jpg" /></a>
		<a rel="example_group" href="images/example/11_b.jpg" title=""><img alt="" src="images/example/11_s.jpg" /></a>
		<a rel="example_group" href="images/example/12_b.jpg" title=""><img class="last" alt="" src="images/example/12_s.jpg" /></a>
	</p>
 
</div>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
										<div id="content"> 
	<p> 
		<a rel="example_group" href="images/example/9_b.jpg" title="Lorem ipsum dolor sit amet"><img alt="" src="images/example/9_s.jpg" /></a> 
		<a rel="example_group" href="images/example/10_b.jpg" title=""><img alt="" src="images/example/10_s.jpg" /></a>
		<a rel="example_group" href="images/example/11_b.jpg" title=""><img alt="" src="images/example/11_s.jpg" /></a>
		<a rel="example_group" href="images/example/12_b.jpg" title=""><img class="last" alt="" src="images/example/12_s.jpg" /></a>
	</p>
 
</div>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
								
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
							</ol>
							<div class="com-table-footer">
								<div class="ui-page-wrap">
									<div class="ui-page">
										<a rel="1" class="ui-page-curr" href="#">1</a>
										<a rel="2" href="#">2</a>
										<a rel="3" href="#">3</a>
										<a rel="4" href="#">4</a>
										<a rel="5" href="#">5</a>
										<a rel="6" href="#">6</a>
										<span>...</span>
										<a rel="2" class="ui-pager-next" href="#">下一页</a>
									</div>
								</div>
							</div>
						</div>
						<!---->
						<div class="jkdhfld">
							<div class="mt"><h3>商品评价</h3></div>
							<div class="consult-rt">
				                <table class="consult-form" >
				                    <caption>我要发表咨询</caption>
				                    <tbody><tr id="tr-zxlx">
				                        <th>咨询类型:&nbsp;</th>
				                        <td>
				                            <label class="cst-type" ><input type="radio" value="1" >购买咨询</label>
				                            <label class="cst-type" ><input type="radio" value="2" >促销优惠</label>
				                            <label class="cst-type" ><input type="radio" value="3" >支付问题</label>
				                            <label class="cst-type" ><input type="radio" value="4" >售后咨询</label>
				                        </td>
				                    </tr>
				                        <tr class="consul_type_wrap">
				                            <th>回复方式:&nbsp;</th>
				                            <td>
				                                <div>
				                                    <label class="cst-type" for="consul_site">
				                                        <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
				                                    </label>
				                                    <label class="cst-type" for="consul_mail">
				                                        <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
				                                    </label>
				                                    <label class="cst-type" for="consul_weixin">
				                                        <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
				                                    </label>
				                                </div>
				                                <div class="weixin-sm" style="display: none;">
				                                    <div class="img-w">
				                                        <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
				                                    </div>
				                                    <div class="text">
				                                        <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
				                                    </div>
				                                </div>
				                            </td>
				                        </tr>
				                        <tr class="consul_type_wrap" id="email-address" style="display: none;">
				                            <th>邮箱地址:&nbsp;</th>
				                            <td>
				                                <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
				                                <span class="email-error"></span>
				                            </td>
				                        </tr>
				                    <tr id="gm-zxnr">
				                        <th>咨询内容:&nbsp;</th>
				                        <td>
				                            <div class="txt-area-wrap">
				                                <textarea name="" id="quesTxt" class="txt-area"></textarea> 
				                            </div>
				                        </td>
				                    </tr>
				                    <tr id="gm-submit">
				                        <th></th>
				                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
				                    </tr>
								</tbody></table>
								<div class="consult-lt"> 
									<dl class="consult-question clearfix">
										<dt>常见问题</dt>
										<dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
										<dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
										<dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
									</dl>
								</div>
							</div>
						</div>
						<!---->
					</div>
					<!---->
				</ul>
				<!--售后保障--> 
				<ul>
					<div class="shouh_baoz">
						<div class="mt">
	                       <h3>售后保障</h3>
	                    </div>
	                    <!---->
	                    <div class="mc">
		                    <div class="item-detail item-detail-copyright">
								<div class="serve-agree-bd">
		    						<dl> 
										<dt>
								            <i class="goods"></i>
								            <strong>卖家服务</strong>
								        </dt>
									    <dd>
										</dd>
										<dt>
								            <i class="goods"></i>
								            <strong>正品行货</strong>
								        </dt>
								        <dd>
											wangid平台卖家销售并发货的商品，由卖家提供发票和相应的售后服务。请您放心购买！<br>
											注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
								        </dd>
									  
							        </dl>
								</div>
								<div id="state">
		                            <strong>权利声明：</strong><br>wangid通城上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
		                            <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
								</div>
		                    </div>
		                </div>
	                    <!---->
					</div>
					<div class="shouh_baoz_2">
						<div class="mt"><h3>商品评价</h3></div>
						<div class="mc">
							<div class="comment-info J-comment-info">
								<div class="comment-percent">
									<strong class="percent-tit">好评度</strong>
									<div class="percent-con">99<span>%</span></div>
								</div>
							</div>
							<!---->
							<div class="ETab">
								<div class="tab-main small">
									<ol class="filter-list">
										<li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
										<li><a href="#">晒图<em>(60)</em></a></li>
										<li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
										<li><a href="#">好评<em>(4900+)</em></a></li><li>
										<a href="#">中评<em>(40+)</em></a></li>
										<li><a href="#">差评<em>(20+)</em></a></li>
										<li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
									</ol>
									<div class="_extra_a">
										<div class="sort-select">
											<div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
											<div class="others">
												<div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
												<ol>
													<li class="J-sortType-item">推荐排序</li>
													<li class="J-sortType-item">时间排序</li>
												</ol>
											</div>
										</div>
									</div>
								</div> 
							</div>
						</div>
						<!---->
						<div class="tab_con">
							<ol class="replyListWrap"> 
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
							</ol>
							<div class="com-table-footer">
								<div class="ui-page-wrap">
									<div class="ui-page">
										<a rel="1" class="ui-page-curr" href="#">1</a>
										<a rel="2" href="#">2</a>
										<a rel="3" href="#">3</a>
										<a rel="4" href="#">4</a>
										<a rel="5" href="#">5</a>
										<a rel="6" href="#">6</a>
										<span>...</span>
										<a rel="2" class="ui-pager-next" href="#">下一页</a>
									</div>
								</div>
							</div>
						</div>
						<!---->
						<div class="jkdhfld">
							<div class="mt"><h3>商品评价</h3></div>
							<div class="consult-rt">
				                <table class="consult-form">
				                    <caption>我要发表咨询</caption>
				                    <tbody><tr id="tr-zxlx">
				                        <th>咨询类型:&nbsp;</th>
				                        <td>
				                            <label class="cst-type"><input type="radio" value="1">购买咨询</label>
				                            <label class="cst-type"><input type="radio" value="2">促销优惠</label>
				                            <label class="cst-type"><input type="radio" value="3">支付问题</label>
				                            <label class="cst-type"><input type="radio" value="4">售后咨询</label>
				                        </td>
				                    </tr>
				                        <tr class="consul_type_wrap">
				                            <th>回复方式:&nbsp;</th>
				                            <td>
				                                <div>
				                                    <label class="cst-type" for="consul_site">
				                                        <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
				                                    </label>
				                                    <label class="cst-type" for="consul_mail">
				                                        <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
				                                    </label>
				                                    <label class="cst-type" for="consul_weixin">
				                                        <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
				                                    </label>
				                                </div>
				                                <div class="weixin-sm" style="display: none;">
				                                    <div class="img-w">
				                                        <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
				                                    </div>
				                                    <div class="text">
				                                        <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
				                                    </div>
				                                </div>
				                            </td>
				                        </tr>
				                        <tr class="consul_type_wrap" id="email-address" style="display: none;">
				                            <th>邮箱地址:&nbsp;</th>
				                            <td>
				                                <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
				                                <span class="email-error"></span>
				                            </td>
				                        </tr>
				                    <tr id="gm-zxnr">
				                        <th>咨询内容:&nbsp;</th>
				                        <td>
				                            <div class="txt-area-wrap">
				                                <textarea name="" id="quesTxt" class="txt-area"></textarea> 
				                            </div>
				                        </td>
				                    </tr>
				                    <tr id="gm-submit">
				                        <th></th>
				                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
				                    </tr>
								</tbody></table>
								<div class="consult-lt"> 
									<dl class="consult-question clearfix">
										<dt>常见问题</dt>
										<dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
										<dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
										<dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
									</dl>
								</div>
							</div>
						</div>
						<!---->
					</div>
				</ul>
				<!--商品评价-->
				<ul>
					<div class="shouh_baoz_2">
						<div class="mt"><h3>商品评价</h3></div>
						<div class="mc">
							<div class="comment-info J-comment-info">
								<div class="comment-percent">
									<strong class="percent-tit">好评度</strong>
									<div class="percent-con">99<span>%</span></div>
								</div>
							</div>
							<!---->
							<div class="ETab">
								<div class="tab-main small">
									<ol class="filter-list">
										<li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
										<li><a href="#">晒图<em>(60)</em></a></li>
										<li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
										<li><a href="#">好评<em>(4900+)</em></a></li><li>
										<a href="#">中评<em>(40+)</em></a></li>
										<li><a href="#">差评<em>(20+)</em></a></li>
										<li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
									</ol>
									<div class="_extra_a">
										<div class="sort-select">
											<div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
											<div class="others">
												<div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
												<ol>
													<li class="J-sortType-item">推荐排序</li>
													<li class="J-sortType-item">时间排序</li>
												</ol>
											</div>
										</div>
									</div>
								</div> 
							</div>
						</div>
						<!---->
						<div class="tab_con">
							<ol class="replyListWrap"> 
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
										
					
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li> 
								<li class="oh_de">
									<div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
										<p>收货后1天评论</p>
										<p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
										<p><span>白色 M码</span></p>
									</div>
									<div class="reply-center">
										<p>正品行货，很棒</p>
									</div>
									<div class="reply-right">
										<div class="reply_avatar">
										<img src="images/7_170312181624_2.jpg">
										<span class="reply_avatar_userName">祢夏了夏天</span>
										</div>
										<p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p> 
									</div>
								</li>
							</ol>
							<div class="com-table-footer">
								<div class="ui-page-wrap">
									<div class="ui-page">
										<a rel="1" class="ui-page-curr" href="#">1</a>
										<a rel="2" href="#">2</a>
										<a rel="3" href="#">3</a>
										<a rel="4" href="#">4</a>
										<a rel="5" href="#">5</a>
										<a rel="6" href="#">6</a>
										<span>...</span>
										<a rel="2" class="ui-pager-next" href="#">下一页</a>
									</div>
								</div>
							</div>
						</div>
						<!---->
						<div class="jkdhfld">
							<div class="mt"><h3>商品评价</h3></div>
							<div class="consult-rt">
				                <table class="consult-form">
				                    <caption>我要发表咨询</caption>
				                    <tbody><tr id="tr-zxlx">
				                        <th>咨询类型:&nbsp;</th>
				                        <td>
				                            <label class="cst-type"><input type="radio" value="1">购买咨询</label>
				                            <label class="cst-type"><input type="radio" value="2">促销优惠</label>
				                            <label class="cst-type"><input type="radio" value="3">支付问题</label>
				                            <label class="cst-type"><input type="radio" value="4">售后咨询</label>
				                        </td>
				                    </tr>
				                        <tr class="consul_type_wrap">
				                            <th>回复方式:&nbsp;</th>
				                            <td>
				                                <div>
				                                    <label class="cst-type" for="consul_site">
				                                        <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
				                                    </label>
				                                    <label class="cst-type" for="consul_mail">
				                                        <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
				                                    </label>
				                                    <label class="cst-type" for="consul_weixin">
				                                        <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
				                                    </label>
				                                </div>
				                                <div class="weixin-sm" style="display: none;">
				                                    <div class="img-w">
				                                        <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
				                                    </div>
				                                    <div class="text">
				                                        <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
				                                    </div>
				                                </div>
				                            </td>
				                        </tr>
				                        <tr class="consul_type_wrap" id="email-address" style="display: none;">
				                            <th>邮箱地址:&nbsp;</th>
				                            <td>
				                                <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
				                                <span class="email-error"></span>
				                            </td>
				                        </tr>
				                    <tr id="gm-zxnr">
				                        <th>咨询内容:&nbsp;</th>
				                        <td>
				                            <div class="txt-area-wrap">
				                                <textarea name="" id="quesTxt" class="txt-area"></textarea> 
				                            </div>
				                        </td>
				                    </tr>
				                    <tr id="gm-submit">
				                        <th></th>
				                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
				                    </tr>
								</tbody></table>
								<div class="consult-lt"> 
									<dl class="consult-question clearfix">
										<dt>常见问题</dt>
										<dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
										<dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
										<dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
										<dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
									</dl>
								</div>
							</div>
						</div>
						<!---->
					</div>
				</ul>
			</div>
		</div>
		<script type="text/javascript">jQuery(".slideTxtBox_1").slide({trigger:"click"});</script>
		<!---->
	</div>
</div>




<!--商品详情结束-->
<!--猜你喜欢-->
<div class="cain_xih">
	<div class="mt">
		<h2 class="title">猜你喜欢</h2>
		<div class="extra">
			<a href="#" class="change"><i class="ico"></i><span class="txt">换一批</span></a>
		</div>
	</div>
	<ul class="cain_xihuan_neir">
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi1.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi2.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi3.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi1.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi3.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
		<li>
			<div class="item_pic"><a href="#"><img src="images/lieb_tupi2.jpg"></a></div>
			<div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
			<div class="cain_xih_jiaq"><p>￥560.00</p></div>
		</li>
	</ul>
</div>

<jsp:include page="../public/BeforeFoot.jsp"></jsp:include>
<script type="text/javascript">
		/* $(document).ready(function() {
			
			  //Examples - images
			

			$("a#example1").fancybox();

			$("a#example2").fancybox({
				'overlayShow'	: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'elastic'
			});

			$("a#example3").fancybox({
				'transitionIn'	: 'none',
				'transitionOut'	: 'none'	
			});

			$("a#example4").fancybox({
				'opacity'		: true,
				'overlayShow'	: false,
				'transitionIn'	: 'elastic',
				'transitionOut'	: 'none'
			});

			$("a#example5").fancybox();

			$("a#example6").fancybox({
				'titlePosition'		: 'outside',
				'overlayColor'		: '#000',
				'overlayOpacity'	: 0.9
			});

			$("a#example7").fancybox({
				'titlePosition'	: 'inside'
			});

			$("a#example8").fancybox({
				'titlePosition'	: 'over'
			});

			$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});

			
			//  Examples - various
			

			$("#various1").fancybox({
				'titlePosition'		: 'inside',
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});

			$("#various2").fancybox();

			$("#various3").fancybox({
				'width'				: '75%',
				'height'			: '75%',
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'type'				: 'iframe'
			});

			$("#various4").fancybox({
				'padding'			: 0,
				'autoScale'			: false,
				'transitionIn'		: 'none',
				'transitionOut'		: 'none'
			});
		}); */
		</script>