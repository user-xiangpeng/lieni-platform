<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/common.jsp"%>
<html>
<head>
<link href="${ctx}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(
			function() {
				var h3 = $(".tree_box").find("h3");
				var tree_one = $(".tree_box").find(".tree_one");
				var h4 = $(".tree_one").find("h4");
				var tree_two = $(".tree_one").find(".tree_two");
				h3.each(function(i) {
					$(this).click(
							function() {
								tree_one.eq(i).slideToggle();
								tree_one.eq(i).parent().siblings().find(
										".tree_one").slideUp();
								$(this).toggleClass('on').parent().siblings()
										.find('h3').removeClass('on')
							})
				})
				h4.each(function(i) {
					$(this).click(
							function() {
								tree_two.eq(i).slideToggle();
								tree_two.eq(i).parent().siblings().find(
										".tree_two").slideUp();
								$(this).toggleClass('on').parent().siblings()
										.find('h4').removeClass('on')
							})
				})
			})
</script>
</head>
<body>
	<div class="service_top">
		<div class="service_top_in">
			<a href="#" class="service_logo"><img src="img/logo.png" /></a><span><a
				href="#">登录</a><a href="#">注册</a></span>
		</div>
		<div class="service_nav">
			<div class="service_nav_in">
				<a href="#">首页</a>|<a href="#">BIM族库</a>|<a href="#">BIM协同平台</a>
			</div>
		</div>
	</div>
	<div class="service_main clearfix">
		<div class="service_title_box">
			<h6>Revit Families 在线仓库</h6>
		</div>
		<div class="service_left_a">
			<p class="pa_box">分类</p>
			<div class="tree">
				<div class="tree_box">
					<h3>超级管理员资料</h3>
					<ul class="tree_one" style="display: none;">
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
					</ul>
				</div>
				<div class="tree_box">
					<h3>管理员资料</h3>
					<ul class="tree_one">
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
					</ul>
				</div>
				<div class="tree_box">
					<h3>普通管理员资料</h3>
					<ul class="tree_one">
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
						<li><a href="javascript:;">我是三级菜单</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="service_right_a">
			<ul class="ula_top">
				<li>当前分类：<strong>建筑</strong>
				<p>
						关键字：<input name="" type="text" class="inp_a" />&nbsp;&nbsp;<input
							name="" type="submit" class="btn_a" value="搜索" />
					</p></li>
				<li>筛选方式：<input name="" type="checkbox" value="" />&nbsp;非自建族&nbsp;&nbsp;&nbsp;&nbsp;<input
					name="" type="checkbox" value="" />&nbsp;自建族&nbsp;&nbsp;&nbsp;&nbsp;<input
					name="" type="checkbox" value="" />&nbsp;品牌厂商族
				</li>
				<li class="lia">排序方式：<a href="#" class="on">下载</a><a href="#">最新</a><a
					href="#">销量</a><a href="#">评论</a></li>
			</ul>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/1.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">无框单扇地弹玻</a></li>
					<li class="lia">评论<a href="#">[21]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/2.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">双扇硬木门_002</a></li>
					<li class="lia">评论<a href="#">[0]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/3.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">通道自由门_双</a></li>
					<li class="lia">评论<a href="#">[13]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/4.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">门上气窗_001</a></li>
					<li class="lia">评论<a href="#">[32]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/5.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">密码锁_003</a></li>
					<li class="lia">评论<a href="#">[0]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/6.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">料斗</a></li>
					<li class="lia">评论<a href="#">[11]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/7.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">摄像头_墙角_001</a></li>
					<li class="lia">评论<a href="#">[34]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/8.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">自行车停放架_010</a></li>
					<li class="lia">评论<a href="#">[0]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/9.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">通道自由门_双</a></li>
					<li class="lia">评论<a href="#">[54]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/10.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">监控摄像装置_008</a></li>
					<li class="lia">评论<a href="#">[7]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/11.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">单模块式遮阴棚</a></li>
					<li class="lia">评论<a href="#">[18]</a>条
					</li>
				</ul>
			</div>
			<div class="service_list_gmbox">
				<div class="img_box">
					<a href="#"><img src="img/12.jpg" width="127" height="127" /></a>
				</div>
				<ul class="ula">
					<li class="lib"><a href="#" class="ahover">下载</a></li>
					<li><a href="#">太阳能储罐_气</a></li>
					<li class="lia">评论<a href="#">[45]</a>条
					</li>
				</ul>
			</div>
			<div class="clear"></div>
			<div class="service_page">
				共351条 第1页/共24页<a href="#">首页</a><a href="#">上页</a><a href="#"
					class="on">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a
					href="#">5</a><a href="#">...</a><a href="#">下页</a><a href="#">末页</a>
			</div>
		</div>
	</div>
	<div class="service_footer"></div>
</body>
</html>