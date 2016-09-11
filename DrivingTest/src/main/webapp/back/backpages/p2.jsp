<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
<base href="/DrivingTest/back/backpages/">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="../img/logo.png" />
<title>DrivingTest后台管理系统</title>
<link href="../css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="../css/mmss.css" />
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<script src="../js/Chart.js"></script>
<script src="../js/jquery-1.11.3.js"></script>
<script src="../js/bootstrap.js"></script>
</head>

<body>
	<header>
		<div class="container-fluid navbar-fixed-top bg-primary">
			<ul class="nav navbar-nav  left">
				<li class="text-white h4">&nbsp;&nbsp;&nbsp;&nbsp;<span
					class="glyphicon glyphicon-leaf"></span>&nbsp;&nbsp;<b>DrivingTest后台管理系统</b>
				</li>
			</ul>
			<ul class="nav navbar-nav nav-pills right ">
				<li class="bg-warning "><a href="#"><span
						class="glyphicon glyphicon-tasks"></span><span class="badge">1</span></a>
				</li>
				<li class="bg-success"><a href="#"><span
						class="glyphicon glyphicon-envelope"></span><span class="badge">2</span></a>
				</li>
				<li class="bg-danger"><a href="#"><span
						class="glyphicon glyphicon-bell"></span></a></li>
				<li class="bg-info dropdown"><a class="dropdown-toggle"
					href="#" data-toggle="dropdown"> <span
						class="glyphicon glyphicon-user"></span>&nbsp;<span>系统管理员</span><span
						class="caret"></span>
				</a>
					<ul class="dropdown-menu dropdown-menu-right">
						<li class="text-center"><a href="#"><span
								class="text-primary">账号设置</span></a></li>
						<li class="text-center"><a href="#"><span
								class="text-primary">消息设置</span></a></li>
						<li class="text-center"><a href="#"><span
								class="text-primary">帮助中心</span></a></li>
						<li class="divider"><a href="#"></a></li>
						<li class="text-center"><a href="../login.jsp"><span
								class="text-primary">退出</span></a></li>
					</ul></li>
			</ul>
		</div>
	</header>

	<section>
		<div class="container-fluid">
			<div class="row ">
				<!--左侧导航开始-->
				<div class="col-xs-2 bg-blue">
					<br />
					<div class="panel-group sidebar-menu" id="accordion"
						aria-multiselectable="true">
						<div class="panel panel-default menu-first menu-first-active">
							<a data-toggle="collapse" data-parent="#accordion"
								href="index.jsp" aria-expanded="true"
								aria-controls="collapseOne"> <i class="icon-home icon-large"></i>
								主页
							</a>
						</div>
						<div class="panel panel-default menu-first">
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne"> <i
								class="icon-user-md icon-large"></i> 管理员管理
							</a>

							<div id="collapseOne" class="panel-collapse collapse in">
								<ul class="nav nav-list menu-second">
									<!--<li>
											<a href="p1.jsp"><i class="icon-user"></i> 表格p1留着做样本</a>
										</li>-->
									<li><a href="p2.jsp"><i class="icon-edit"></i>
											图表p2留着做样本</a></li>
									<li><a href="checkAdmin.jsp"><i class="icon-trash"></i>
											查看所有管理员</a></li>
									<li><a href="checkAdminSelf.jsp"><i class="icon-list"></i>查看当前管理员</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo"> <i
								class="icon-book icon-large"></i> 用户管理
							</a>
							<div id="collapseTwo" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<li><a href="checkAllUsers.jsp"><i class="icon-user"></i>
											查看所有用户</a></li>
									<li><a href="checkChartInfo.jsp"><i class="icon-edit"></i>
											查看我要分析</a></li>
									<li><a href="checkReport.jsp"><i class="icon-edit"></i>
											查看举报建议</a></li>

								</ul>
							</div>
						</div>
						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree"> <i
								class="icon-book icon-large"></i> 题库管理
							</a>

							<div id="collapseThree" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<li><a href="getAllQuiz.jsp"><i class="icon-user"></i>
											查看题库</a></li>
									<li><a href="checkChapter.jsp"><i class="icon-edit"></i>
											查看章节</a></li>
									<li><a href="checkCertify.jsp"><i class="icon-trash"></i>查看资格证</a>
									</li>
									<li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
								</ul>
							</div>
						</div>

						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour"> <i
								class="icon-book icon-large"></i> 测试管理
							</a>

							<div id="collapseFour" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<li><a href="checkTestRec.jsp"><i class="icon-user"></i>
											查看测试成绩</a></li>

								</ul>
							</div>
						</div>
					</div>
				</div>
				<!--左侧导航结束-->
				<!----------------------------------------------------------------------------------------------------->
				<!--右侧内容开始-->
				<div class="col-xs-10">
					<br />
					<ol class="breadcrumb">
						<li><a href="index.jsp"><span
								class="glyphicon glyphicon-home"></span>&nbsp;后台首页</a></li>
						<li class="active">系统管理 - 图表</li>
					</ol>
					<div class="chart">
						<div class="canvas">
							<h3 class="text-primary">折线图</h3>
							<canvas id="canvas"></canvas>
						</div>
						<div class="canvas">
							<h3 class="text-primary">柱状图</h3>
							<canvas id="canvas1"></canvas>
						</div>

					</div>

				</div>
				<!--右侧内容结束-->
			</div>
		</div>
	</section>

	<footer class="bg-primary navbar-fixed-bottom">
		<p class="text-center text-white">版权所有&copy;ReadyGo小组</p>
	</footer>


	<script>
/* 			Bootlint工具用于对页面中的HTML标签以及Bootstrapclass的使用进行检测
			(function() {
				var s = document.createElement("script");
				s.onload = function() {
					bootlint.showLintReportForCurrentDocument([]);
				};
				s.src = "../js/bootlint.js";
				document.body.appendChild(s)
			})(); 
*/
			/*Chart的数据*/
			function lineChart() {
				var ctx = document.getElementById('canvas').getContext("2d")
				var data = {
					labels: ["2014-10", "2014-11", "2014-12", "2015-1", "2015-2", "2015-3"],
					datasets: [{
						label: "My First dataset",
						fillColor: "rgba(200,200,200,0.2)",
						strokeColor: "rgba(200,200,200,1)",
						pointColor: "rgba(200,200,200,1)",
						pointStrokeColor: "#fff",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(200,200,200,1)",
						data: [65, 59, 80, 81, 56, 55, 40]
					}, {
						label: "My Second dataset",
						fillColor: "rgba(151,187,205,0.2)",
						strokeColor: "rgba(151,187,205,1)",
						pointColor: "rgba(151,187,205,1)",
						pointStrokeColor: "#fff",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(151,187,205,1)",
						data: [28, 48, 40, 19, 86, 27, 90]
					}]
				};
				var salesVolumeChart = new Chart(ctx).Line(data);
			}

			function barChart() {
				var ctx = document.getElementById('canvas1').getContext("2d")
				var data = {
					labels: ["2014-10", "2014-11", "2014-12", "2015-1", "2015-2", "2015-3"],
					datasets: [{
						label: "",
						fillColor: "rgba(151,187,205,0.2)",
						strokeColor: "rgba(151,187,205,1)",
						pointColor: "rgba(151,187,205,1)",
						pointStrokeColor: "#fff",
						pointHighlightFill: "#fff",
						pointHighlightStroke: "rgba(151,187,205,1)",

						data: [1.27, 1.30, 1.30, 1.41, 1.04, 1.29]
					}]
				};
				
			}
			// 启动
			setTimeout(function() {
				// 避免IE7-8 调用getContext报错，使用setTimeout
				lineChart()
				barChart()
			}, 0)
			if(/Mobile/i.test(navigator.userAgent)) {
				//针对手机，性能做一些降级，看起来就不会那么卡了
				Chart.defaults.global.animationSteps = Chart.defaults.global.animationSteps / 6
				Chart.defaults.global.animationEasing = "linear"
			}
		</script>
</body>

</html>