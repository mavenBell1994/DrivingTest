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
							</a>

							<div id="collapseOne" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
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
							</a>
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
							</a>

							<div id="collapseThree" class="panel-collapse collapse">
								<ul class="nav nav-list menu-second">
									<li><a href="getAllQuiz.jsp"><i class="icon-user"></i>
											查看题库</a></li>
									<li><a href="checkChapter.jsp"><i class="icon-edit"></i>
											查看章节</a></li>
									<li><a href="checkCertify.jsp"><i class="icon-trash"></i>查看资格证</a></li>
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
						<li class="active">用户管理 - 表格</li>
					</ol>

					<a class="btn btn-primary" title="添加" onclick="addUser()"> <span
						class="glyphicon glyphicon-plus"></a> <br /> <br />
					<table id="allUsers">

					</table>

				</div>
				<!--右侧内容结束-->
			</div>
		</div>
	</section>

	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<!-- 						<img class="center-block" alt="" src="images/log-car.jpg"> -->
					<h3>
						<span class="glyphicon glyphicon-user" id="myModalLabel"
							style="color: navy; margin-left: 123px;"></span>
					</h3>

				</div>
				<div class="modal-body">
					<!-- 登陆表单 -->
					<form class="form-horizontal" role="form" onsubmit="return confirmEdit()">
						<div class="form-group" id="divQid">
							<label for="userName" class="col-sm-3 control-label">cid:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cid" readonly="true">
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">名称:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cname">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">状态:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="status">
							</div>
						</div>

						<div class="form-group">
							<label for="text" class="col-sm-3 control-label">密码:</label>
							<div class="col-sm-8">
								<input type="password" class="form-control" id="cpwd">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">邮箱:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="email">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">头像:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="icon">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">联系方式:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="tel">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">性别:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="sex">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">地址:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="addr">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">注册日期:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="regdate">
							</div>
						</div>
						

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-20">
								<button class="btn btn-info btn-lg " 
									style="margin-left: 48px;" >确定</button>
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


	<footer class="bg-primary navbar-fixed-bottom">
		<p class="text-center text-white">版权所有&copy;ReadyGo小组</p>
	</footer>


	<script>
		$(function() {
			$('#myModal').modal({
				show : false,//设置模式窗关闭
				backdrop : 'static'
			});
		});

		function showModel() {
			$('#myModal').modal({
				keyboard : true,
				show : true,//设置模式窗关闭
				backdrop : 'static',
			});
		}
		//将modal的值置空
		function initUsersModel() {
			$('#cid').val("");
			$('#cname').val("");
			$('#cpwd').val("");
			$('#email').val("");
			$('#status').val("");
			$('#icon').val("");
			$('#tel').val("");
			$('#sex').val("");
			$('#addr').val("");
			$('#regdate').val("");
		}

		//显示指定id的Users
		function editModel(cid) {
			$('#myModalLabel').html("&nbsp;ReadyGo-Users编辑");
			initUsersModel();

			//赋值
			$.get("../../backuser/getUserById", {
				"cid" : cid
			}, function(data) {
				if (data) {
					$('#cid').val(data.cid);
					$('#cname').val(data.cname);
					$('#cpwd').val(data.cpwd);
					$('#email').val(data.email);
					$('#status').val(data.status);
					$('#icon').val(data.icon);
					$('#tel').val(data.tel);
					$('#sex').val(data.sex);
					$('#addr').val(data.addr);
					$('#regdate').val(data.regdate);
				}
			}, "json");
			showModel();
		}

		//确定修改
		function confirmEdit() {
			//区分修改还是增加
			var resultType = switchType();
			alert(resultType);
			if (resultType == "添加") {
				//添加操作
				//获取值
				var cname = $('#cname').val();
				var cpwd = $('#cpwd').val();
				var email = $('#email').val();
				var status = $('#status').val();
				var icon = $('#icon').val();
				var tel = $('#tel').val();
				var sex = $('#sex').val();
				var addr = $('#addr').val();

				//传值增加
				$.post("../../backuser/addUser", {
					"cname" : cname,
					"cpwd" : cpwd,
					"email" : email,
					"status" : status,
					"icon" : icon,
					"tel" : tel,
					"sex" : sex,
					"addr" : addr
				}, function(data) {
					if (data) {
						alert("成功添加");
						location.href="checkAllUsers.jsp";
					}
				}, "json");
				return false;
			} else {
				//修改操作
				//获取值
				var cid = $('#cid').val();
				var cname = $('#cname').val();
				var cpwd = $('#cpwd').val();
				var email = $('#email').val();
				var status = $('#status').val();
				var icon = $('#icon').val();
				var tel = $('#tel').val();
				var sex = $('#sex').val();
				var addr = $('#addr').val();

				//传值修改
				$.get("../../backuser/updateUser", {
					"cid" : cid,
					"cname" : cname,
					"cpwd" : cpwd,
					"email" : email,
					"status" : status,
					"icon" : icon,
					"tel" : tel,
					"sex" : sex,
					"addr" : addr
				}, function(data) {
					alert("修改///");
					if (data) {
						alert("修改成功");
						location.href="checkAllUsers.jsp";
					}
				}, "json");
				return false;
			}
		}
		//区分增加和修改
		function switchType() {
			var type = $('#myModalLabel').html();
			if (type.indexOf("添加") > 0) {
				return "添加";
			}
			return "修改";
		}

		//添加新的Users
		function addUser() {
			$('#myModalLabel').html("&nbsp;ReadyGo-Users添加");
			initUsersModel();
			showModel();
		}

		//删除指定Users
		function member_del(cid) {
			if (confirm("确定删除？" + cid)) {
				$.get("../../backuser/delUser", {
					"cid" : cid
				}, function(data) {
					if (data) {
						alert("删除成功!!!");
					}
				}, "json");
				$('#allUsers').bootstrapTable('refresh');
			}
		}

		//加载所有用户的数据
		$('#allUsers').bootstrapTable({
			method : 'get',
			url : '../../backuser/allUsers',
			height : $(window).height() - 200,
			cache : false,
			striped : true,
			pagination : true,
			dataType : "json",
			pageList : [ 5, 10, 20, 50 ],
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
				align : 'center',
			}, {
				field : 'cname',
				title : '姓名',
				align : 'center'
			}, {
				field : 'cpwd',
				title : '密码',
				align : 'center'
			}, {
				field : 'email',
				title : '邮箱',
				sortable : true,
				align : 'center'
			}, {
				field : 'icon',
				title : '头像',
				align : 'center'
			}, {
				field : 'tel',
				title : '手机',
				align : 'center'
			}, {
				field : 'sex',
				title : '性别',
				sortable : true,
				align : 'center'
			}, {
				field : 'addr',
				title : '地址',
				align : 'center'
			}, {
				field : 'status',
				title : '状态',
				align : 'center'
			}, {
				field : 'regdate',
				title : '注册日期',
				sortable : true,
				align : 'center'
			}, {
				field : 'operate',
				title : '操作',
				width : 100,
				align : 'center',
				valign : 'middle',
				formatter : function(value, row, index) {
					var edit = '<a onclick="editModel(\''
						+ row.cid 
						+ '\')">编辑</a> ';
					var del = '<a onclick="member_del(\''
							+ row.cid + '\')">删除</a> ';
					var str = edit + "&nbsp;" + del;
					return str;
				}
			}]

		}, "json");
	</script>
</body>

</html>