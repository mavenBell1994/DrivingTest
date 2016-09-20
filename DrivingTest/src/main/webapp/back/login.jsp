<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="/DrivingTest/back/">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/logo.png" />
<title>DrivingTest后台管理系统</title>
<link href="css/bootstrap.css" rel="stylesheet">



<script src="js/jquery-1.11.3.js"></script>
<script src="js/bootstrap.js"></script>
<!--[if lt IE 9]>
  <script src="js/html5shiv.min.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
<style>
html, body {
	height: 100%;
}

.box {
	/*filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /!*  IE *!/*/
	/*background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/
	/*background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/
	/*background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/
	/*background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/
	/*background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);*/
	background-image: url("img/bg-login.png");
	background-repeat: no-repeat;
	background-size: 100%;
	margin: 0 auto;
	position: relative;
	width: 100%;
	height: 100%;
}

.login-box {
	width: 100%;
	max-width: 500px;
	height: 400px;
	position: absolute;
	top: 50%;
	margin-top: -200px;
	/*设置负值，为要定位子盒子的一半高度*/
}

@media screen and (min-width:500px) {
	.login-box {
		left: 50%;
		/*设置负值，为要定位子盒子的一半宽度*/
		margin-left: -250px;
	}
}

.form {
	width: 100%;
	max-width: 500px;
	height: 275px;
	margin: 25px auto 0px auto;
	padding-top: 25px;
}

.login-content {
	height: 300px;
	width: 100%;
	max-width: 500px;
	background-color: rgba(255, 250, 2550, .6);
	float: left;
}

.input-group {
	margin: 0px 0px 30px 0px !important;
}

.form-control, .input-group {
	height: 40px;
}

.form-group {
	margin-bottom: 0px !important;
}

.login-title {
	padding: 20px 10px;
	background-color: rgba(0, 0, 0, .6);
}

.login-title h1 {
	margin-top: 10px !important;
}

.login-title small {
	color: #fff;
}

.link p {
	line-height: 20px;
	margin-top: 30px;
}

.btn-sm {
	padding: 8px 24px !important;
	font-size: 16px !important;
}

.text-white {
	color: white;
}
</style>
</head>
<body>
	<div class="box">
		<br />
		<!--    <h1 class="text-center text-white"><span class="glyphicon glyphicon-leaf" style="margin-top: 150px;"></span>&nbsp;&nbsp;DrivingTest后台管理系统</h1>
-->
		<div class="login-box">
			<div class="login-title text-center">
				<h1>
					<small style="margin-top: 5px;">
						<h1 class="text-center text-white">
							<span class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;DrivingTest后台管理系统
						</h1> <!--登&nbsp;&nbsp;录-->
					</small>
				</h1>
			</div>
			<div class="login-content ">
				<div class="form">
					<form>
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										id="aname" name="aname" class="form-control" placeholder="用户名">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-12  ">
								<div class="input-group">
									<span class="input-group-addon"><span
										class="glyphicon glyphicon-lock"></span></span> <input
										type="password" id="apwd" name="apwd" class="form-control"
										placeholder="密码">
								</div>
							</div>
						</div>
						<div class="form-group form-actions">
							<div class="col-xs-4 col-xs-offset-4 " style="margin: 0 37%;">
								<!-- <button class="btn btn-sm btn-info" type="submit"><span
									class="glyphicon glyphicon-off"></span> 登录</button> -->
								<input class="btn btn-sm btn-info" type="button"
									class="glyphicon glyphicon-off" value="登录"
									onclick="checkbacklogin()" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6 link"></div>
							<div class="col-xs-6 link">
								<p class="text-center remove-margin">
									<small>忘记密码？</small> <a href="javascript:void(0)"><small>找回</small></a>
								</p>
							</div>
							<!--<div class="col-xs-6 link">
                            <p class="text-center remove-margin"><small>还没注册?</small> <a href="register.html" ><small>注册</small></a>
                            </p>
                        </div>-->
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
	function checkbacklogin(){
		if($("#aname").val().trim()=="" || $("#apwd").val()==""){
			alert("用户名或密码不能为空！");
		}else{
			$.post("../backadmin/login",{"aname":$("#aname").val().trim(),"apwd":$("#apwd").val()},function(data){
				if(data==0){
					alert("用户名或密码错误！");
					init();
				}else if(data==-1){
					alert("该用户正在使用中！");
					init();
				}else{
					location.href="backpages/index.jsp";
				}
			},"json");
		}
	}
	function init(){
		$("#aname").val("");
		$("#apwd").val("");
	}
	$(function(){
		init();
	});
	</script>

</body>
</html>