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
									<li><a href="checkAdminSelf.jsp"><i class="icon-list"></i>查看当前管理员</a>
									</li>
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
						<li class="active">系统管理 - 表格</li>
					</ol>
					<a class="btn btn-primary" title="添加" onclick="addChart()"> <span
						class="glyphicon glyphicon-plus"></a> <br /> <br />
					<table id="allChart">

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
					<form class="form-horizontal" role="form">
						<div class="form-group" id="divQid">
							<label for="userName" class="col-sm-3 control-label">评论ID:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="comId" readonly="true">
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">用户ID:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cid">
							</div>
						</div>

						<div class="form-group">
							<label for="text" class="col-sm-3 control-label">问题ID:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="qid">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">评论时间:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="comDate">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">评论内容:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="comContent">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">备注:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="commentTemp">
							</div>
						</div>


						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-20">
								<button class="btn btn-info btn-lg " onclick="confirmEdit()"
									style="margin-left: 48px;">&nbsp;确&nbsp;定&nbsp;</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button class="btn btn-info btn-lg " style="margin-left: 50px;">&nbsp;取&nbsp;消&nbsp;</button>
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
		function initChartModel() {
			$('#comId').val("");
			$('#cid').val("");
			$('#qid').val("");
			$('#comDate').val("");
			$('#comContent').val("");
			$('#commentTemp').val("");
		}

		//显示指定id的Chart
		function editModel(comId) {
			$('#myModalLabel').html("&nbsp;ReadyGo-Chart编辑");
			initChartModel();

			//赋值
			$.get("../../backChartInfo/getComById", {
				"comId" : comId
			}, function(data) {
				if (data) {
					$('#comId').val(data.comId);
					$('#cid').val(data.cid);
					$('#qid').val(data.qid);
					$('#comDate').val(data.comDate);
					$('#comContent').val(data.comContent);
					$('#commentTemp').val(data.commentTemp);
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
				var cid = $('#cid').val();
				var qid = $('#qid').val();
				var comDate = $('#comDate').val();
				var comContent = $('#comContent').val();
				var commentTemp = $('#commentTemp').val();

				//传值增加
				$.get("../../backChartInfo/addChartInfo", {
					"cid" : cid,
					"qid" : qid,
					"comDate" : comDate,
					"comContent" : comContent,
					"commentTemp" : commentTemp
				}, function(data) {
					if (data) {
						alert("成功添加");
						$('#allChart').bootstrapTable('refresh');
					}
				}, "json");
			} else {
				//修改操作
				//获取值
				var comId = $('#comId').val();
				var cid = $('#cid').val();
				var qid = $('#qid').val();
				var comDate = $('#comDate').val();
				var comContent = $('#comContent').val();
				var commentTemp = $('#commentTemp').val();

				//传值修改
				$.get("../../backChartInfo/updateChartInfo", {
					"comId" : comId,
					"cid" : cid,
					"qid" : qid,
					"comDate" : comDate,
					"comContent" : comContent,
					"commentTemp" : commentTemp
				}, function(data) {
					alert("修改///");
					if (data) {
						alert("修改成功")
						$('#allChart').bootstrapTable('refresh');
					}
				}, "json");

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

		//添加新的Chart
		function addChart() {
			$('#myModalLabel').html("&nbsp;ReadyGo-Chart添加");
			initChartModel();
			showModel();
		}

		//删除指定Chart
		function member_del(comId) {
			if (confirm("确定删除？" + comId)) {
				$.get("../../backChartInfo/delChartInfo", {
					"comId" : comId
				}, function(data) {
					if (data) {
						alert("删除成功!!!");
						$('#allChart').bootstrapTable('refresh');
					}
				}, "json");
			}
		}

		//初始化表格数据
		$('#allChart').bootstrapTable(
				{
					method : 'get',
					url : '../../backChartInfo/allChart',
					height : $(window).height() - 200,
					cache : false,
					striped : true,
					pagination : true,
					dataType : "json",
					pageList : [ 1, 2, 5, 10 ],
					pageSize : 3,
					pageNumber : 1,
					search : true,
					sidePagination : 'client',
					showColumns : true,
					minimumCountColumns : 2,
					clickToSelect : true,
					showToggle : true,

					columns : [
							{
								field : '',
								valign : 'middle',
								checkbox : true
							},
							{
								field : 'comId',
								title : '评论ID',
								sortable : true,
								valign : 'middle',
								align : 'center'
							},
							{
								field : 'comId',
								title : '用户ID',
								valign : 'middle',
								sortable : true,
								align : 'center'
							},
							{
								field : 'qid',
								title : '题目ID',
								valign : 'middle',
								sortable : true,
								align : 'center'
							},
							{
								field : 'comDate',
								title : '评论时间',
								sortable : true,
								valign : 'middle',
								align : 'center'
							},
							{
								field : 'comContent',
								title : '评论内容',
								sortable : true,
								valign : 'middle',
								align : 'center'
							},
							{
								field : 'commentTemp',
								title : '备注',
								sortable : true,
								valign : 'middle',
								align : 'center'
							},
							{
								field : 'operate',
								title : '操作',
								width : 100,
								align : 'center',
								valign : 'middle',
								formatter : function(value, row, index) {
									var edit = '<a onclick="editModel(\''
										+ row.comId 
										+ '\')">编辑</a> ';
									var del = '<a onclick="member_del(\''
											+ row.comId + '\')">删除</a> ';
									var str = edit + "&nbsp;" + del;
									return str;
								}
							} ]

				}, "json");
	</script>
</body>

</html>