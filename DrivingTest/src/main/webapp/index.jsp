<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<base href="/DrivingTest/">
<title>【驾考宝典】</title>
<style type="text/css">
#msgerror {
	margin-left: 60px;
	font-size: 12px;
	color: red;
}

#login_cname {
	margin-left: 50px;
}

#login_cname a {
	text-decoration: none;
	font-size: 13px;
	font-weight: 700;
}
</style>

<link rel="stylesheet" id="bsCss">
<link href="css/public.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link href="css/home.css" rel="stylesheet" type="text/css">
<link href="css/top.css" rel="stylesheet" type="text/css">
<style type="text/css">
#verify {
	width: 80px;
}

#errormsg {
	color: red;
	margin-left: 50px;
}

#verifyimg {
	display: block;
	float: right;
	width: 120px;
	text-align: right;
	line-height: 34px;
	height: 34px;
	margin-right: 60px;
}

#verifyimg a {
	margin-left: 5px;
}
</style>

</head>
<body class=" " id="body">

	<c:choose>
		<c:when test="${cname.cname==null}">
			<jsp:include page="/page/top.jsp"></jsp:include>
		</c:when>
		<c:otherwise>
			<jsp:include page="/page/top1.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>
	<div id="simple-container" class="simple-container">

		<div class="jkbd-main-header-nav-zhanwei" data-item="nav-zhanwei"></div>
		<div class="jkbd-main-header-nav erjiyemian"
			data-item="jkbd-main-header-nav">
			<div class="nav-wapper jkbd-border ">
				<div class="inner jkbd-width wid-auto cl">
					<a class="index-logo" href="http://www.jiakaobaodian.com/"><img
						src="images/logo_erji.png" alt="驾考宝典" class="no-bg"></a>
					<ul class="nav float-l float-l-ul cl" id="navUl">
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
									class="a-dis"><img src="images/maiche.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/honor.html"
									class="a-dis"><img src="images/banner5.png"></a></li>
								<li><a target="_blank"
									href="http://www.xiaozhu2.com/hengyang/" class="a-dis"><img
										src="images/banner_xiaozhu.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/dynamic.html"
									class="a-dis"><img src="images/banner2.png"></a></li>
								<li><a target="_blank"
									href="http://www.jiakaobaodian.com/about/intro.html"
									class="a-dis"><img src="images/banner1.png"></a></li>
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
										href="page/completeSimulation.jsp">全真模拟</a></li>
									<li><a target="_blank" href="page/orderExercise.jsp">顺序练习</a></li>
									<li><a href="javascript:void(0)" onclick="toPageDiff()">难题练习</a></li>
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
										href="completeSimulation.jsp">全真模拟</a></li>
									<li><a target="_blank" href="orderExercise.jsp">顺序练习</a></li>
									<li><a target="_blank" href="difficultExercise.jsp">难题练习</a></li>
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
						<li class="fankui" data-item="feedback"><a target="_blank"
							__href="/feedback" class="a-link">意见反馈</a></li>
					</ul>
					<p>Copyright © ReadyGo&nbsp;&nbsp;</p>
				</div>
			</div>
		</div>
	</div>

	<script src="bootstrap-3.3.7/js/jquery.min.js"></script>
	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true"
		style="display: none">
		<div class="modal-dialog" style="width: 400px; height: 650px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<!-- 						<img class="center-block" alt="" src="images/log-car.jpg"> -->
					<h3>
						<span class="glyphicon glyphicon-user" id="myModalLabel"
							style="color: navy; margin-left: 123px;">&nbsp;ReadyGo</span>
					</h3>
					<!-- 					<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
 -->
				</div>
				<div class="modal-body">
					<!-- 登陆表单 -->
					<form class="form-horizontal" role="form" action="login/login"
						method="post" id="login" onsubmit="return login()">
						<div class="form-group">
							<label for="userName" class="col-sm-3 control-label">用户名:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cname" name="cname"
									placeholder="请输入用户名">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">密&nbsp;&nbsp;&nbsp;码:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="cpwd"
									name="cpwd" placeholder="请输入密码">
							</div>
						</div>
						<div class="form-group">
							<label for="captcha" class="col-sm-3 control-label ">验证码:</label>
							<div class="col-sm-8" style="width: 100px;">
								<input type="text" class="form-control" id="verify"
									onblur="checkverify()" name="cname">
							</div>
							<span id="verifyimg"><img id="signcode" alt="验证码"
								src="signcode/authcode"> <a href="javascript:changeimg()">看不清？</a></span>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-10">
								<div class="checkbox">
									<label> <input type="checkbox">请记住我
									</label><span id="errormsg"></span>
								</div>
							</div>
						</div>
						<div class="form-group">
							&nbsp;&nbsp; <a href="page/register.jsp"
								class="text-primary col-sm-offset-3"> 立即注册</a> <a href="#"
								class="text-primary pull-right col-sm-4">&nbsp;&nbsp;找回密码</a>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<br />
								<button class="btn btn-info btn-lg center-block"
									style="width: 240px;" type="submit">登 录</button>
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
	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js">
		
	</script>
	<script>
		function show() {
			$("#cname").val("");
			$("#cpwd").val("");
			$("#verify").val("");
			changeimg();
			$("#bsCss").attr("href", "bootstrap-3.3.7/css/bootstrap.min.css");
			$("#navUl li").css("width", "98px");
			$("#navUl").css("height", "70px");
			$('#myModal').modal({
				keyboard : true,
				show : true,//设置模式窗关闭
				backdrop : 'static',
			});

			$('#myModal').on('hide.bs.modal', function() {
				$("#bsCss").attr("href", "");
			});
		}
		function login() {
			if ($("#cname").val().trim() == "" || $("#cpwd").val().trim() == "") {
				$("#errormsg").html("账号或密码不能为空！");
				return false;
			} else  if($("#verify").val().trim()==""){
				$("#errormsg").html("请输入验证码！");
				return false;
			}else if($("#errormsg").text()!=""){
				
				return false;
			}else{
				$.post("login/login",{"cname":$("#cname").val().trim(),"cpwd":$("#cpwd").val().trim()},function(data){
					if(!data){
						$("#errormsg").html("账号或密码错误！");
						show();
						console.info(data+"登录失败");
						return false;
					}else{
						console.info(data+"登录成功");
						location.href="index.jsp";
						return false;
					}
				});
				return false;
			}
		}
		function changeimg() {
			$('#signcode').attr('src', 'signcode/authcode?abc=' + Math.random());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。\
		}
		function checkverify(){
			if($("#verify").val().trim()==""){
				$("#errormsg").html("请输入验证码！");
				return false;
			}else{
			$.post("login/checkverify",{"verify":$("#verify").val()},function(data){
				if(data.length>4){
					$("#errormsg").html("验证码输入有误！");
					changeimg();
				}else{
					$("#errormsg").html("");
				}
			});
			}
		}
		function toPageDiff(){
			/*使cookie里的值变为undefined,必须指明路径  */
			alert($.cookie('index'));
			alert("a");
			$.cookie('index', '', {path:'/', expires: -1 }); 
			 alert($.cookie('index'));
			location.href="page/difficultExercise.jsp";
		}
		
	</script>
</body>
</html>