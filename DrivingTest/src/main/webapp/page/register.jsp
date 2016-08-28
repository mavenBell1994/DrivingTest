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
body{
  background-image: url("images/resiterBg.jpg");
  background-repeat:no-repeat;
  background-size:cover;

 background-color: FFFAE8;
 font-size: 16px;
 font-family: monospace;
}

#log{
width:840px;
height:800px;
position: fixed;
left: 19%;
opacity:0.8;

}
#logform {
	position: relative;
	width:600px;;
	height:400px;
	left: 15%;
	top: 20%;
	background-color: white;
	margin-top: 20px;
}
</style>
</head>
<body >
	<div id="log">
		<div id="logform">
		<h1  style="color: navy;margin-left: 200px;line-height: 90px;font-size: 33px;font-weight: bold; height: 90px;">
		<img src="images/car.jpg"/>
		注册&nbsp;</h1><p><p/>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="userName" class="col-sm-3 control-label">用户名:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="userName"
							placeholder="请输入用户名">
					</div>
				</div>
				<div class="form-group">
					<label for="password"  class="col-sm-3 control-label">密码:</label>
					<div class="col-sm-7">
						<input type="password" class="form-control" id="password"
							placeholder="请输入密码">
					</div>
				</div>
				<div class="form-group">
					<label for="email" class="col-sm-3 control-label">电子邮箱:</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="email"
							placeholder="请输入电子邮箱">
					</div>
				</div>
				<br />
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-8">
						<button type="submit" class="btn btn-info btn-lg center-block"
							style="width: 240px;">注册</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>

