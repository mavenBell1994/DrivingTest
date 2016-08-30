<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<base href="/DrivingTest/">
<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
<script src="bootstrap-3.3.7/js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	/* background-image: url("images/resiterBg.jpg"); */
	background-repeat: no-repeat;
	background-size: cover;
	background-color: FFFAE8;
	font-size: 14px;
	font-family: monospace;
}

#log {
	width: 840px;
	height: 800px;
	position: fixed;
	left: 19%;
	opacity: 0.8;
}

#logform {
	position: relative;
	width: 600px;;
	height: 400px;
	left: 15%;
	top: 20%;
	background-color: white;
	margin-top: 20px;
}

#error {
	font-size: 13px;
	color: red;
	line-height: 13px;
	margin-left: 44%;
	height: 20px;
}
#span1,#span2,#span3{
	font-size:13px;
	color:red;
	line-height: 13px;
	display: block;
	margin-top: 10px;
}

#buttonlogin {
	margin-top: 10px;
}
</style>
</head>
<body>
	<div id="log">
		<div id="logform">
			<h1
				style="color: navy; margin-left: 200px; line-height: 90px; font-size: 33px; font-weight: bold; height: 90px;">
				<img src="images/car.jpg" /> 注册&nbsp;
			</h1>
			<p>
			<p />
			<form class="form-horizontal" role="form" action="user/register"
				onsubmit="return register()">
				<div class="form-group">
					<label for="userName" class="col-sm-3 control-label">用户名:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="cname" name="cname"
							placeholder="请输入用户名" onblur="checklogin()">
					</div><span id="span1"></span>
				</div>
				<div class="form-group">
					<label for="password" class="col-sm-3 control-label">密码:</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="cpwd" name="cpwd"
							placeholder="由6-20个字母、数字、下划线组成" onblur="Pwd()">
					</div><span id="span2"></span>

				</div>
				<div class="form-group">
					<label for="userName" class="col-sm-3 control-label">确认密码:</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="checkpwd" 
							onblur="checkPwd()" placeholder="请再次输入密码">
					</div><span id="span3"></span>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">电子邮箱:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="email" name="email"
							onblur="checkEmail()" placeholder="请输入电子邮箱">
					</div><span id="span4"></span>
				</div>
				<div>
					<span id="error"><br /></span>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8" id="buttonlogin">
						<button type="submit" class="btn btn-info btn-lg center-block"
							style="width: 240px;">注册</button>
					</div>
				</div>

			</form>
		</div>
	</div>
	<script type="text/javascript">
		function register() {
			
		}
		function Checkcname(){
			$.post("user/checkcname");
		}
		function checkEmail()//检查邮箱名是否正确
		{
			var emailValue = $("#email").val();
			if (!isEmail(emailValue)) {
				$("#error").html("您输入的邮箱有误,请重新核对后再输入!");

				return false;
			}
			$("#error").html("<br>");
			$("#span4").html('<img src="images/1.gif" >');
			return true;
		}
		function Pwd(){
			var pwd=$("#cpwd").val();
			if (!isPwd(pwd)){
				$("#span2").html("格式不正确！");

				return false;
			}
			$("#span2").html('<img src="images/1.gif" >');
			return true;
		}
		function checkPwd(){
			if($("#cpwd").val().trim()==""){
				$("#span3").html("请先输入密码！");
				return false;
			}else if($("#span2").text()!=""){
				$("#span3").html("请先输入密码！");
				return false;
			}else if($("#cpwd").val()!=$("#checkpwd").val()){
				$("#span3").html("输入不一致！");
				return false;
			}else{
				$("#span3").html('<img src="images/1.gif" >');
				return true;
			}	
		}
		//匹配邮箱的正则表达式
		function isEmail(str) {
			var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
			return reg.test(str);
		}
		//匹配密码格式的正则表达式
		function isPwd(str) {
			var reg = /^(\w){6,20}$/;
			return reg.test(str);
		}
	</script>
</body>
</html>

