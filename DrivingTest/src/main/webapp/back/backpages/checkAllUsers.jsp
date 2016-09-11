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
<link rel="stylesheet" href="../css/bootstrap-table.css" />
<link rel="stylesheet" href="../css/mmss.css" />
<link rel="stylesheet" href="../css/font-awesome.min.css" />
<!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

<script src="../js/jquery-1.11.3.js"></script>
<script src="../js/bootstrap.js"></script>
<script src="../js/bootstrap-table.js"></script>
<script src="../js/bootstrap-table-zh-CN.js"></script>
<style>
</style>
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
						class="glyphicon glyphicon-user"></span>&nbsp;<span>管理员管理</span><span
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
								href="#collapseOne" aria-expanded="false"
								aria-controls="collapseOne"> <i
								class="icon-user-md icon-large"></i> 管理员管理
							</a> </a>

							<div id="collapseOne" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<!--<li>
											<a href="p1.jsp"><i class="icon-user"></i> 表格p1留着做样本</a>
										</li>-->
									<li><a href="p2.jsp"><i class="icon-edit"></i>
											图表p2留着做样本</a></li>
									<li><a href="checkAdmin.jsp"><i class="icon-trash"></i>
											查看所有管理员</a></li>
									<li><a href="checkAdminSelf.jsp"><i class="icon-list"></i>查看当前管理员</a></li>
								</ul>
							</div>
						</div>
						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="true" aria-controls="collapseTwo"> <i
								class="icon-book icon-large"></i> 用户管理
							</a> </a>
							<div id="collapseTwo" class="panel-collapse collapse in">
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
							</a> </a>

							<div id="collapseThree" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<li><a href="getAllQuiz.jsp"><i class="icon-user"></i>
											查看题库</a></li>
									<li><a href="checkChapter.jsp"><i class="icon-edit"></i>
											查看章节</a></li>
									<li><a href="checkCertify.jsp"><i class="icon-trash"></i>查看资格证</a></li>
									<li><a href="#"><i class="icon-list"></i> 子选项4</a></li>
								</ul>
							</div>
						</div>

						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour"> <i
								class="icon-book icon-large"></i> 测试管理
							</a> </a>

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
						<li class="active">系统管理 - 表格</li>
					</ol>
					<a href="#" class=" btn btn-primary ">
						<span class="glyphicon glyphicon-search"></span>
					</a> 
					<a href="#" class=" btn btn-primary ">
						<span class="glyphicon glyphicon-download"></span>
					</a> 
					<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#add1" title="添加">
						<span class="glyphicon glyphicon-plus">
					</a> 
					<br />
					<br />
					<table id="allUsers">

					</table>

				</div>
				<!--右侧内容结束-->
			</div>
		</div>
	</section>

	<footer class="bg-primary navbar-fixed-bottom">
		<p class="text-center text-white">版权所有&copy;ReadyGo小组</p>
	</footer>


	<script>
			/*Bootlint工具用于对页面中的HTML标签以及Bootstrapclass的使用进行检测*/
			(function() {
				var s = document.createElement("script");
				s.onload = function() {
					bootlint.showLintReportForCurrentDocument([]);
				};
				s.src = "../js/bootlint.js";
				document.body.appendChild(s)
			})();

			//    添加编辑模态框
			$('#add').on('show.bs.modal', function(event) {
				var button = $(event.relatedTarget) // Button that triggered the modal
				var recipient = button.data('whatever') // Extract info from data-* attributes
					// If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
					// Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
				var modal = $(this)
				modal.find('.modal-title').text('' + recipient)
				modal.find('.modal-body input').val(recipient)
			});
			
			//加载所有用户的数据
		$('#allUsers').bootstrapTable({
			method : 'get',
			url : '../../backuser/allUsers',
			height : $(window).height() - 200,
			cache : false,
			striped : true,
			pagination : true,
			dataType : "json",
			pageList : [5,10,20,50],
			pageSize : 5,
			pageNumber : 1,
			search : true,
			sidePagination : 'client',
			showColumns : true,
			minimumCountColumns : 2,
			clickToSelect : true,
			showToggle : true,
			columns : [ {
				field : '',
				checkbox : true
			}, {
				field : 'cid',
				title : 'ID',
				sortable : true,
				align: 'center',
			}, {
				field : 'cname',
				title : '姓名',
				align: 'center'
			}, {
				field : 'cpwd',
				title : '密码',
				align: 'center'
			}, {
				field : 'email',
				title : '邮箱',
				sortable : true,
				align: 'center'
			}, {
				field : 'icon',
				title : '头像',
				align: 'center'
			} , {
				field : 'tel',
				title : '手机',
				align: 'center'
			} , {
				field : 'sex',
				title : '性别',
				sortable : true,
				align: 'center'
			} , {
				field : 'addr',
				title : '地址',
				align: 'center'
			} , {
				field : 'status',
				title : '状态',
				align: 'center'
			} , {
				field : 'regdate',
				title : '注册日期',
				sortable : true,
				align: 'center'
			} 
			
			//,
			//	            {field : 'operate',title: '操作',width: 100,align: 'center',valign: 'middle',formatter:function(){
			//	            		
			//	            }} 
			]
			
		},"json");
			
	</script>
</body>

</html>