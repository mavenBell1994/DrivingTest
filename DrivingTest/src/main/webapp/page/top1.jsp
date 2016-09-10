<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="jkbd-main-header-top" data-item="jkbd-main-header-top">
	<div class="inner jkbd-width wid-auto">
		<div class="float-l" data-item="header-cityinfo">
			<span class="info" data-item="info">衡阳</span> <a
				class="switch colorpink" href="http://www.jiakaobaodian.com/city">[切换]</a>
			<span class="split"></span>
		</div>
		<div class="tiku-select-container float-l"
			data-hover="main-carchoose-container"
			data-item="tiku-select-container">
			<span class="tk-label">题库</span> <span class="split"></span>
			<div class="current-wapper float-r">
				<span class="colorpink current-tiku-span" data-item="current-tiku">小车</span>
				<i class="arrow arrow-bottom"></i>
			</div>
			<div class="mask"></div>
			<div class="main-carchoose-container"
				data-item="main-carchoose-container" data-bind="1">
				<div class="hack"></div>
				<div class="car-h car-jsz">
					<label>驾驶证：</label>
					<ul class="cl float-l-ul">
						<li><a data-car="car" class="current">小车</a></li>
						<li><a data-car="bus" class="">客车</a></li>
						<li><a data-car="truck" class="">货车</a></li>
						<li><a data-car="moto" class="">摩托车</a></li>
					</ul>
				</div>
				<div class="car-h car-zgz">
					<label>资格证：</label>
					<ul class="cl float-l-ul">
						<li><a data-car="keyun" class="">客运资格证</a></li>
						<li><a data-car="huoyun" class="">货运资格证</a></li>
						<li><a data-car="weixian" class="">危险品资格证</a></li>
						<li><a data-car="jiaolian" class="">教练员资格证</a></li>
						<li><a data-car="chuzu" class="">出租车资格证</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="auth-info fl cl">
			<span id="login_cname"> <a href="#">用户：${cname.cname}</a>
			</span>
			<span style="display: none" id="cid">${cname.cid}</span>
			 <span id="quit_login"> <a href="user/quit?url=<%=request.getRequestURI()%>">[退出]</a>
			</span>
		</div>
		<div class="other-product-wapper float-r">
			<a target="_blank"
				href="http://jx.jiakaobaodian.com/hengyang?src=jkbdweb&at=homenav">驾校之家</a>
			<a target="_blank" href="http://www.maiche.com/">买车网</a> <a
				target="_blank" rel="nofollow"
				href="http://toutiao.kakamobi.com/?src=jkbdweb&at=homenav">汽车头条</a>
			<a target="_blank"
				href="http://www.xiaozhu2.com/hengyang?src=jkbdweb&at=homenav">小猪二手车</a>
			<a target="_blank" rel="nofollow"
				href="http://zhushou.so/?src=jkbdweb&at=homenav">违章查询</a>
		</div>
	</div>
	<div class="jindu-bar fes" data-item="jindu">
		<div class="inner-bar" data-item="jindu-inner-bar"></div>
	</div>
</div>