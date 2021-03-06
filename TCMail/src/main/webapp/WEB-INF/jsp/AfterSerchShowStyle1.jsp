<%@ page language="java" contentType="text/html; charset=utf-8"

    pageEncoding="utf-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:if test="${empty allGoods}">
	<jsp:forward page="index.jsp"></jsp:forward>
</c:if>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
<meta charset="utf-8">
<title>WangID通城——商品列表-详情</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" type="text/css" href="css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
 <script type="text/javascript" src="js/chengs/jquery.js"></script>
<script type="text/javascript" src="js/chengs/bootstrap.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.data.js"></script>
<script type="text/javascript" src="js/chengs/city-picker.js"></script>
<script type="text/javascript" src="js/chengs/main.js"></script>
</head>
<body>
<%@ include file="../public/rowHeader.jsp" %>



		
</div>
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
<!--列表一开了-->
<div class="nSearchWarp">
    <div class="hot-tj">
        <span class="icon_tj">热卖<br>推荐</span>
        <ul class="hot-list clearfix">
        <c:forEach items="${hostRecommend }" var="h">
        	<li class="item asynPriceBox">
        		<p class="pic">
        			<a target="_blank" href="#"><img src="${h.image }" alt=""></a>
        		</p>
        		<p class="name"><a href="#" title=" 联想(lenovo) 小新潮5000 15.6英寸轻薄笔记本电脑">${h.name } &nbsp&nbsp ${h.color} &nbsp&nbsp ${h.size }</a></p>
        		<p class="price asynPrice" >${h.price }</p>
        		<p class="btn"><a class="buy" href="lootbuy?gid=${h.id }" >立即抢购</a></p>
        	</li>
        </c:forEach>
        	
        </ul>
    </div>
</div>
<div class="lujing_ziy">
	<a href="#">
	<c:forEach items="${typeName }" var="td">
		${td.name }>>
	</c:forEach>
	
	</a> 
</div>
<div class="shangp_lieb_jvz">
	<div class="selector">
		<div class="s-title">
		    <h3><b>笔记本</b><em>商品筛选</em></h3>
		    <div class="st-ext">共&nbsp;<span>63337</span>个商品 </div>
	  	</div>
		<div class="J_selectorLine s-line J_selectorFold" >
    		<div class="sl-wrap multiple_D">
		        <div class="sl-key">
		          <span>处理器：</span>
		        </div>
		        <div class="sl-value">
		          	<div class="sl-v-list">
			            <ul class="J_valueList">
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">Intel CoreM</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">Intel i3</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">Intel i5低功耗版</a>
			                </li> 
			            </ul>
		            </div> 
		            <div class="st_d">
		            	<a href="#">确定</a>
		            	<a href="#">取消</a>
		            </div>
	            </div>
	            <div class="sl-ext">
		            <a class="sl-e-more" style="visibility: visible;"> </a>
		            <a class="sl-e-multiple" > 多选<i></i></a>
	         	</div>
            </div>
            <div class="sl-wrap">
		        <div class="sl-key">
		          <span>价格：</span>
		        </div>
		        <div class="sl-value">
		          	<div class="sl-v-list">
			            <ul class="J_valueList">
			                <li>
			                  	<a href="ScopePrice?low=10&top=100"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">10-100</a>
			                </li>
			                <li>
			                  	<a href="ScopePrice?low=100&top=500"  rel='nofollow'><input type="checkbox"  class="checkbox yingc_df">100-500</a>
			                </li>
			                <li>
			                  	<a href="ScopePrice?low=500&top=9999999"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">500以上</a>
			                </li> 
			            </ul>
		            </div>
	            </div>
	            <div class="sl-ext">
		            <a class="sl-e-more" style="visibility: visible;">更多<i></i></a>
		            <a class="sl-e-multiple">多选<i></i></a>
	         	</div>
            </div>
            <div class="sl-wrap">
		        <div class="sl-key">
		          <span>款式：</span>
		        </div>
		        <div class="sl-value">
		          	<div class="sl-v-list">
			            <ul class="J_valueList">
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">软壳</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">定制</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">硬壳</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">边框</a>
			                </li>
			                <li>
			                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">运动臂包</a>
			                </li>
			            </ul>
		            </div>
	            </div>
	            <div class="sl-ext">
		            <a class="sl-e-more" style="visibility: visible;">更多<i></i></a>
		            <a class="sl-e-multiple">多选<i></i></a>
	         	</div>
            </div>
            <div  id="yingc">
	            <div class="sl-wrap">
			        <div class="sl-key">
			          <span>风格d：</span>
			        </div>
			        <div class="sl-value">
			          	<div class="sl-v-list">
				            <ul class="J_valueList">
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">简约</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">卡通动漫</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">商务</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">奢华</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">小清新</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">怀旧</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">轻奢主义</a>
				                </li> 
				            </ul>
			            </div>
		            </div>
		            <div class="sl-ext">
			            <a class="sl-e-more" style="visibility: visible;">更多<i></i></a>
			            <a class="sl-e-multiple">多选<i></i></a>
		         	</div>
	            </div>
	            <div class="sl-wrap" >
			        <div class="sl-key">
			          <span>风格f：</span>
			        </div>
			        <div class="sl-value">
			          	<div class="sl-v-list">
				            <ul class="J_valueList">
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">简约</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">卡通动漫</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">商务</a>
				                </li>
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">奢华</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">小清新</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">怀旧</a>
				                </li> 
				                <li>
				                  	<a href="#"  rel='nofollow'><input type="checkbox" class="checkbox yingc_df">轻奢主义</a>
				                </li> 
				            </ul>
			            </div>
		            </div>
		            <div class="sl-ext">
			            <a class="sl-e-more" style="visibility: visible;">更多<i></i></a>
			            <a class="sl-e-multiple">多选<i></i></a>
		         	</div>
	            </div>
            </div>
            <div class="s_more">
			    <span class="sm-wrap" onclick="xians()" data-more="材质、风格、选购热点 等">更多选项（ 材质、风格、选购热点 等）<i></i></span>
			</div> 
    	</div> 
	</div>
	<!--测试****************************************-->
		<script type="text/javascript">
		function xians()
		{
			var ddd=document.getElementById('yingc');
			if(ddd.style.display=='block')
			{
				ddd.style.display='none';
			}
			else
			{
				ddd.style.display='block';
			}
		}
	</script>
	<!--测试****************************************-->
	<!--列表-->
	<div class="shangp_lieb_yi">
		<div class="filter_yi">
			<div class="f_line">
				<div class="f_sort">
	                <a href="#" class="curr_1">综合排序<i></i></a>
	                <a href="buyNum" class="curr_2">销量<i></i></a>
	                <a href="price" class="curr_2">价格<i></i></a>
	                <a href="commentNum" class="curr_2">评论数<i></i></a>
	                <a href="#" class="curr_2">上架时间<i></i></a>
	          	</div>
	          	<div class="f_pager" id="J_topPage"> 
           			<span class="fp_text">
               			<b>1</b><em>/</em><i>166</i>
          			</span>
                    <a class="fp_prev disabled" href="#"> &lt; </a>
                    <a class="fp_next" href="#"> &gt; </a>
                </div>
                <div class="lieb_anniu_kuang">
                	<a class="lieb_ann lieb_er_abn_2" href="showStyle2"></a>
	          		<a class="lieb_ann lieb_er_abn lieb_er_abn1" href="showStyle1"></a>
                </div>
			</div>
			<div class="f_line_xia">
				<div class="sdgdfg">配&nbsp;送&nbsp;至：</div>
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
				<div class="f_feature">
			        <ul>
                        <li id="delivery"><a class="selected" href="#"><i></i>仅显示有货</a></li>
                        <li id="delivery_211"><a class="" href="#"><i></i>货到付款</a></li>
                        <li id="delivery_daofu"><a class="" href="#"><i></i>真划算</a></li> 
	                </ul>
			      </div>
			</div>
		</div>
		<div class="shnagp_list_v1 shnagp_list_v1_lieb_er">
			<ul>
			<c:forEach items="${allGoods }" var="all">
				<li>
					<div class="lieb_neir_kuang lieb_neir_kuang_1">
						<div class="lieb_img lieb_img_1">
							<a href="#"><img src="${all.image }"></a> 
						</div>
						<div class="lieb_er_kuang">
							<div class="shangp_biaot_ shangp_biaot_1">
								<a href="#">${all.name } &nbsp&nbsp ${all.color } &nbsp&nbsp ${all.size }</a>
								<p><a class="lianpu_minc" href="#">${all.shop.name }</a><a class="mis" href="#">点我交谈</a></p>
							</div>
							<div class="lieb_text lieb_text_1">
								<div class="p_price">
					              	<strong class="J_price"><em>¥</em><i>${all.price * 0.9 }</i><p><em class="shangp_yuanj zuo_ji">¥</em><i class="shangp_yuanj">${all.price }</i></p></strong> 
					            </div>
							</div>
							<div class="you_pingj you_pingj_1">
								<p>"${all.commnum == null ? '未有评价'  :  '已有评价' }"</p>
								<span><a href="#"><em>${all.commnum}</em></a> 人</span>
							</div>
							<div class="lieb_dianp_mingc lieb_dianp_mingc_1">
								<div class="zuo_mingc"> 
									<div class="p_icons">
										<i class="icon_grou_1" data-tips="本地商品"><img src="images/bend.png"></i>
										<i class="icon_grou_2" data-tips="商品特价出售">特价</i>
									</div>
								</div> 
							</div>
							<div class="p_focus p_focus_1"><a class="J_focus"  value="${all.id }" onclick="collectionGood(this)"><i></i>加入收藏</a></div>
						</div>
					</div>
				</li> 
		</c:forEach>
			</ul>
			<div class="jiaz_zhong"><a href="#">玩命加载中</a></div>
			<div class="page clearfix">
	        	<div class="p-wrap" id="J_bottomPage">
		            <span class="p-num">
						<a class="pn-prev disabled" href="undefined&amp;ms=5"><i>&lt;</i><em>上一页</em></a>
						<a href="#" class="curr_3">1</a>
		                <b class="pn-break hide"> …</b>
		                <a href="/#" class="hide ">-2</a>
		                <a href="/#" class="hide ">-1</a>
		                <a href="#" class="hide ">0</a>
		                <a href="#" class="hide curr_3">1</a>
		                <a href="#" class=" ">2</a>
		                <a href="#" class=" ">3</a>
		                <b class="pn-break "> …</b>
		                <a href="#" class="">166</a>
						<a class="pn-next" href="#">下一页<i>&gt;</i></a>
					</span>
		            <span class="p-skip">
		                <em>共<b>166</b>页&nbsp;&nbsp;到第</em>
		                <input class="input-txt" value="1">
		                <em>页</em>
		                <a class="btn btn-default" href="javascript:page_jump();">确定</a>
		            </span> 
	        	</div>
	    	</div>
		</div>
	</div>
</div>

<!--列表一结束-->
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
</body>
<script type="text/javascript">
	function collectionGood(e){
		var id =$(e).attr("value");
		//alert(id);
		$.ajax({
			type:"post",
			url:"collction",
			cache:false,
			dataType:"JSON",
			data:{"id":id},
			success:function(data){
				if(data.count == 0){
					alert("在您的收藏里已经有此商品了。");
				}else{
					alert("成功加入收藏。");
				}	
			},
			error:function(e){
				alert("ajax错误");
			}
			
		});
		
	}

</script>

</html>