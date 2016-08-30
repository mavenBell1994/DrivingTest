<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/DrivingTest/">
<title>【驾考宝典】</title>
<style type="text/css">
	#msgerror{
		margin-left: 60px;
		font-size: 12px;
		color: red;
	}
</style>
</head>
<body  class=" " id="body">
	<div id="simple-container" class="simple-container">
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
				<div class="auth-info fl cl" >
					<span class="login-span" data-action="login">
					<a href="javascript:show()" >登录，保存做题进度</a>
					</span> 
					<span data-action="reg">
					<a href="page/register.jsp">还没账号？</a>
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
		<div class="jkbd-main-header-nav-zhanwei" data-item="nav-zhanwei"></div>
		<div class="jkbd-main-header-nav erjiyemian"
			data-item="jkbd-main-header-nav">
			<div class="nav-wapper jkbd-border ">
				<div class="inner jkbd-width wid-auto cl">
					<a class="index-logo" href="http://www.jiakaobaodian.com/"><img
						src="images/logo_erji.png" alt="驾考宝典" class="no-bg"></a>
					<ul class="nav float-l float-l-ul cl">
						<li data-item="nav-home" class="li-h current"><a
							href="http://www.jiakaobaodian.com/hengyang">首页</a></li>
						<li data-item="nav-mnks" class=""><a
							href="http://www.jiakaobaodian.com/mnks/hengyang.html">模拟考试</a></li>
						<li data-item="nav-tiku" class=""><a
							href="http://www.jiakaobaodian.com/tiku/hengyang.html">驾考题库</a></li>
						<li data-item="nav-news" class=""><a
							href="http://www.jiakaobaodian.com/news">学车指南</a></li>
						<li data-item="nav-download" class=""><a
							href="http://www.jiakaobaodian.com/download">软件下载</a></li>
						<li data-item="nav-maiche"><a target="_blank"
							href="http://www.maiche.com/rank/">新手买车</a></li>
					</ul>
					
				</div>
			</div>
		</div>
		<div class="jkbd-main-main " data-item="jkbd-main-main-container"
			data-simple-node-dom="jkbd-template-html-home-main">
			<div class="jkbd-page jkbd-page-main" data-item="jkbd-page-main">
				<div class="main-banner" data-item="main-banner">
					<div class="screen-ad-container" data-item="banner-ad-container">
						<div class="content bd" data-item="content">
							<ul>
								<li><a target="_blank" href="http://www.maiche.com/"
									class="a-dis"><img alt="汽车评测/报价大全_汽车销量排行榜_2016最新汽车报价"
										src="images/maiche.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/honor.html"
									class="a-dis"><img alt="2.5亿用户的选择，好评如流"
										src="images/banner5.png"></a></li>
								<li><a target="_blank"
									href="http://www.xiaozhu2.com/hengyang/" class="a-dis"><img
										alt="全国车源最多的二手车平台，多快好省，更多品牌，尽在小猪二手车"
										src="images/banner_xiaozhu.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/dynamic.html"
									class="a-dis"><img alt="硕果累累驾考利器，获得奖项"
										src="images/banner2.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/intro.html"
									class="a-dis"><img alt="驾考宝典-小米科技战略投资"
										src="images/banner1.png"></a></li>
							</ul>
						</div>
						<div class="hd pagenation" data-item="pagenation">
							<ul class="cl">
								<li class="on"><span></span></li>
								<li><span></span></li>
								<li><span></span></li>
								<li><span></span></li>
								<li><span></span></li>
							</ul>
						</div>
					</div>
					<div class="banner-fly inner jkbd-width wid-auto cartype-car">
						<ul class="left-door" data-item="left-door">
							<li class="li1 zjx"><a target="_blank"
								href="http://jx.jiakaobaodian.com/hengyang?src=jkbdweb&at=homei1"><span>找驾校</span></a>
								<ul class="ul2">
									<li class="li0"><a target="_blank"
										href="http://jx.jiakaobaodian.com/hengyang/0-0-0-0-5-1.html?src=jkbdweb&at=homei1">认证推荐</a></li>
									<li><a target="_blank"
										href="http://jx.jiakaobaodian.com/hengyang/0-0-0-0-2-1.html?src=jkbdweb&at=homei1">人气排行</a></li>
									<li><a target="_blank"
										href="http://jx.jiakaobaodian.com/hengyang/0-0-0-0-1-1.html?src=jkbdweb&at=homei1">口碑排行</a></li>
								</ul></li>
							<li class="li1 ke1"><a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu1/car-hengyang.html"><span>科目一理论考</span></a>
								<ul class="ul2">
									<li class="li0"><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exam/car-kemu1-hengyang.html">全真模拟</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exercise/0-car-kemu1-hengyang.html">顺序练习</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exercise/8-car-kemu1-hengyang.html">难题练习</a></li>
								</ul></li>
							<li class="li1 ke2"><a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu2/car-hengyang.html"><span>科目二小路考</span></a>
								<ul class="ul2">
									<li class="li0"><a target="_blank"
										href="http://www.jiakaobaodian.com/news/vkemu2">考场视频</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/news/kemu2">考场技巧</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/news">注意事项</a></li>
								</ul></li>
							<li class="ke3 li1"><a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu3/car-hengyang.html"><span>科目三大路考</span></a>
								<ul class="ul2">
									<li class="li0"><a target="_blank"
										href="http://www.jiakaobaodian.com/news/vkemu3">路考视频</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/news/kemu3">路考技巧</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/news/detail/15142.html">灯光模拟</a></li>
								</ul></li>
							<li class="ke4 li1"><a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu4/car-hengyang.html"><span>科目四理论考</span></a>
								<ul class="ul2">
									<li class="li0"><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exam/car-kemu3-hengyang.html">全真模拟</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exercise/0-car-kemu3-hengyang.html">顺序练习</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/mnks/exercise/8-car-kemu3-hengyang.html">难题练习</a></li>
								</ul></li>
							<li class="kaixin li1"><a target="_blank"
								href="http://www.jiakaobaodian.com/news/skill"><span>开心拿驾照</span></a>
								<ul class="ul2 up">
									<li class="li0"><a target="_blank"
										href="http://www.jiakaobaodian.com/news/vskill">开车视频</a></li>
									<li><a target="_blank"
										href="http://www.jiakaobaodian.com/news/skill">开车技巧</a></li>
								</ul></li>
						</ul>
						<div class="left-door-bg"></div>

					</div>
				</div>
				<div class="app-quick-container jkbd-width wid-auto cl"
					data-item="app-quick-container">
					<div class="kemu1-wapper course-wapper float-l">
						<h3 class="font_title2">
							<i class="icon"></i><a class="hoverBdBlue" target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu1/car-hengyang.html">衡阳2016小车理论考试
								科目一</a>
						</h3>
						<a target="_blank" class="exam kemu1-exam"
							href="http://www.jiakaobaodian.com/mnks/exam/car-kemu1-hengyang.html">全真模拟</a>
						<p>
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/0-car-kemu1-hengyang.html">顺序练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/3-car-kemu1-hengyang.html">随机练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/chapter/car-kemu1-hengyang.html">章节练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/strengthen/car-kemu1-hengyang.html">专项练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/8-car-kemu1-hengyang.html">难题练习</a>
						</p>
					</div>
					<div class="course-wapper float-l">
						<h3 class="font_title2">
							<i class="icon"></i><a class="hoverBdBlue" target="_blank"
								href="http://www.jiakaobaodian.com/mnks/kemu4/car-hengyang.html">衡阳2016小车理论考试
								科目四</a>
						</h3>
						<a target="_blank" class="exam kemu4-exam"
							href="http://www.jiakaobaodian.com/mnks/exam/car-kemu3-hengyang.html">全真模拟</a>
						<p>
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/0-car-kemu3-hengyang.html">顺序练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/3-car-kemu3-hengyang.html">随机练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/chapter/car-kemu3-hengyang.html">章节练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/strengthen/car-kemu3-hengyang.html">专项练习</a>|
							<a target="_blank"
								href="http://www.jiakaobaodian.com/mnks/exercise/8-car-kemu3-hengyang.html">难题练习</a>
						</p>
					</div>
				</div>
				<div class="news-item-block cl" style="margin-top: 0px;">
					<div class="float-l"></div>
				</div>
			</div>
		</div>
		<div class="jkbd-main-footer" data-item="jkbd-main-footer">

			<div class="footer2">
				<div class="jkbd-width wid-auto">
					<ul class="cl">
						<li><a rel="nofollow" target="_blank"
							href="http://www.jiakaobaodian.com/about/intro.html"
							class="joinus a-link">关于我们</a></li>
						<li class="bd-line"></li>
						<li><a rel="nofollow" target="_blank"
							href="http://www.jiakaobaodian.com/about/product.html"
							class="a-link">核心产品</a></li>
						<li class="bd-line"></li>
						<li><a rel="nofollow" target="_blank"
							href="http://www.jiakaobaodian.com/about/contact.html"
							class="a-link">商务合作</a></li>
						<li class="bd-line"></li>
						<li class="fankui" data-item="feedback"><a target="_blank" href="/feedback" class="a-link">意见反馈</a></li>
					</ul>
					<p>Copyright © ReadyGo&nbsp;&nbsp;</p>
				</div>
			</div>
		</div>

	</div>



<link rel="stylesheet" id="bsCss">
 <script src="bootstrap-3.3.7/js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true" style="display: none">
		<div class="modal-dialog" style="width: 400px;height: 650px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
<!-- 						<img class="center-block" alt="" src="images/log-car.jpg"> -->	
						<h3>
							<span class="glyphicon glyphicon-user" id="myModalLabel" style="color:navy; margin-left: 123px;" >&nbsp;ReadyGo</span> 
						</h3>
			<!-- 					<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
 -->				</div>
				<div class="modal-body">
				<!-- 登陆表单 -->
					<form class="form-horizontal" role="form" action="user/login" method="post" id="login" onsubmit="return login()">
						<div class="form-group" >
								<label for="userName" class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cname" name="cname"
									placeholder="请输入用户名" >
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">密&nbsp;&nbsp;&nbsp;码:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="cpwd" name="cpwd"
									placeholder="请输入密码" >
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox">请记住我</label><span id="msgerror"></span>
								</div>
							</div>
						</div>
						<div class="form-group">&nbsp;&nbsp;
							  <a href="page/register.jsp" class="text-primary col-sm-offset-3" > 立即注册</a> 
							  <a href="#" class="text-primary pull-right col-sm-4" >&nbsp;&nbsp;找回密码</a>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
						<br/><button  class="btn btn-info btn-lg center-block"  style="width:240px;" type="submit">登  录</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<script>
	function show(){
		
		$("#bsCss").attr("href","bootstrap-3.3.7/css/bootstrap.min.css");
/* 		$("#myModal").append('<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css" >');
 */	
		$('#myModal').modal({
		keyboard: true ,
		show:true,//设置模式窗关闭
		backdrop:'static',
		});

	 $('#myModal').on('hide.bs.modal', function () {
		$("#bsCss").attr("href","");
		});
	
	}
	function login(){
		if($("#cname").val().trim()=="" || $("#cpwd").val().trim()=="" ){
			$("#msgerror").html("账号或密码不能为空！");
			show();
			return false;
		}else{
			return true;
		}
	}
</script>
</body>
</html>