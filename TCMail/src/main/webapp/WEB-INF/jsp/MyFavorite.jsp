<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head> 
<meta charset="utf-8">
<title>WangID通城——收货地址${param.id}</title>
<link rel="stylesheet" type="text/css" href="../../css/index.css">
<link rel="stylesheet" type="text/css" href="../../css/ziy.css">
<!--  <script src="js/jquery-1.11.3.min.js" ></script>
<script src="js/index.js" ></script>  -->
<!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
 <script type="text/javascript" src="../../js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../../js/jquery.SuperSlide.2.1.1.source.js"></script>
<!--  <script type="text/javascript" src="js/select.js"></script> -->


</head>
<body>
<!--头部--> 
 
<jsp:include page="../public/AfterHeader.jsp"></jsp:include>
<div class="wod_tongc_zhongx">
	<div class="beij_center">
		<div class="myGomeWeb">
			<!--侧边导航-->

				<jsp:include page="../public/PersonCenterLeft.jsp"></jsp:include>
			<!--左边内容-->
			
			<div class="mod_main">
				<div class="jib_xinx_kuang">
					<div class="shand_piaot">我的收藏</div>
					<div class="slideTxtBox_shouc">
						<div class="hd">  
							<ul><li>商品</li><li>店铺</li></ul>
						</div>
						<div class="bd">
							<ul>
								<div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<a href="#" class="beij_color">总数(1)</a>
												<a href="#">连衣裙(1)</a>
											</dd>
										</dl>
									</div>
									<div class="history_bd">
										<dl>
											<dt>全部分类：</dt>
											<dd>
												<label><input type="checkbox" class="checkbox">现货商品</label>
											</dd>
										</dl>
									</div>
								</div> 
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
										<c:forEach items="${favorites }" var="f">
										 
										
											<li>
											    <input type="hidden" value="${f.uid }" id="uid"/>
											    <input type="hidden" value="${f.id }" id="id"/>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="${f.good.image }"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)" target="_blank">${f.good.name}${f.good.color } ${f.good.size}</a></h2>
													<div class="price_box"><span>单价：￥${f.good.price }</span></div>
													<div class="price_box"><span class="font_aide">￥${f.good.price }</span></div>
													<div class="price_box">
														<a href="zhouAddCar?id=${f.id }&num=1" class="button_grey">加入购物车</a>
														<input type="button" onclick="delects()" class="button_grey" value="取消收藏"/>
													</div>
												</div>
												<div class="youh_d">库存量：${f.good.num }</div>
											</li>
											</c:forEach>
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							
							</ul>
							
							
						
							<ul>
								<div class="uc_overdueTable">
									<div class="list_thead">
										<div class="col432">
											<label class="label"><input class="checkbox" type="checkbox">全选</label>
											<a href="#" class="button_grey">取消收藏</a>
										</div>
									</div>
									<div class="diyig_s">
										<ol>
										<c:forEach items="${favoritesAndGoods }" var="fg">		
											<li>
												<label><input type="checkbox" class="checkbox"></label>
												<div class="overflow">
													<div class="shouc_img">
														<a href="shangp_xiangq.html"><img src="${fg.shop.user.image }"></a>
													</div>
													<a href="shagnj_dianp.html" class="btn_mix_shop">进入店铺</a>
												</div>
												<div class="col280">
													<h2><a href="shangp_xiangq.html" title="Mistletoe女装旗舰店(白色 M)" target="_blank">${fg.shop.name }</a></h2> 
													<div class="price_box"><span class="font_aide">收藏时间：${fg.ftime }</span></div>
													<div class="price_box">
														<a href="#" class="button_grey">取消收藏</a>
													</div>
												</div>
												<div class="bend_shangp_">
													<h2>本店商品<a href="#">换一批</a></h2>
													<div>
													<c:forEach items="${fg.shop.good }" var="sg">
														<div class="bengd_sp_neir">
															<div class="bengd_sp_neir_img"><a href="shagnj_dianp.html"><img src="${sg.image }"></a></div>
															<div class="price_box"><span>￥${sg.price}</span></div>
															<a href="zhouAddCarShop?id=${fg.shop.id }&num=1&gid=${sg.id}" class="button_grey neir_jiar">加入购物车</a>
														</div>
													</c:forEach>
														
													</div>
												</div>
											</li> 
									</c:forEach>	
										</ol>
										<div class="gerzx_fany">
											<a href="#" class="shangxy">上一页</a>
											<a href="#">1</a>
											<a href="#" class="shangxy">上一页</a>
										</div>
									</div>
								</div>
							</ul> 
							
							
						</div>
					</div> 
				</div>
			</div>
			<!--左边内容结束-->
		</div>
	</div>
</div> 
<script type="text/javascript">jQuery(".slideTxtBox_shouc").slide();</script>


<jsp:include page="../public/AfterFoot.jsp"></jsp:include>

 <script type="text/javascript">
 
 
	 function delects(){
		
		var id = $("#id").val();
		var uid = $("#uid").val();
		alert(id+","+uid);
		$.ajax({
			type:"post",
			url:"fdelect?id="+id,
			cache:false,
			data:{"uid":uid},
			dataType:"JSON",
			success:function(data){
				alert("取消成功！！");
				location.href = "MyFavorite?uid="+data.uid;
			},
			error:function(e){
				alert("ajax错误");
			}
		});
	};
 

</script>


</body>


</html>
