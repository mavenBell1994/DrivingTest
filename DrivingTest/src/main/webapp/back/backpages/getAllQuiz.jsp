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
									<li><a href="checkRoport.jsp"><i class="icon-edit"></i>
											查看举报建议</a></li>

								</ul>
							</div>
						</div>
						<div class="panel panel-default menu-first">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="true" aria-controls="collapseThree"> <i
								class="icon-book icon-large"></i> 题库管理
							</a>

							<div id="collapseThree" class="panel-collapse collapse in">
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
					<a href="#" class=" btn btn-primary "> <span
						class="glyphicon glyphicon-search"></span>
					</a> <a href="#" class=" btn btn-primary "> <span
						class="glyphicon glyphicon-download"></span>
					</a> <a class="btn btn-primary" title="添加" onclick="addQuiz()"> <span
						class="glyphicon glyphicon-plus"></a> <br /> <br />
					<table id="getAllQuiz">

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
							style="color: navy; margin-left: 123px;">&nbsp;ReadyGo-Quiz编辑</span>
					</h3>
					<!-- 					<h4 class="modal-title" id="myModalLabel">模态框（Modal）标题</h4>
 -->
				</div>
				<div class="modal-body">
					<!-- 登陆表单 -->
					<form class="form-horizontal" role="form">
						<div class="form-group" id="divQid">
							<label for="userName" class="col-sm-3 control-label">QID:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="QID" readonly="true">
							</div>
						</div>


						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">错误总数:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="errTotal">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">图片路径:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="图片路径">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">题目类型:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="题目类型">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">章节ID:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="章节ID">
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">问题:</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="问题">
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">答案:</label>
							<div class="col-sm-8">
								<textarea rows="" cols="" id="答案" class="form-control"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">题目详解:</label>
							<div class="col-sm-8">
								<textarea rows="" cols="" id="题目详解" class="form-control"></textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-20">
								<button type="submit" class="btn btn-info btn-lg " onclick="confirmEdit()">确定修改</button>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<button type="submit" class="btn btn-info btn-lg ">取消编辑</button>
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
		
		function showModel(){
			$('#myModal').modal({
				keyboard : true,
				show : true,//设置模式窗关闭
				backdrop : 'static',
			});
		}
		//将modal的值置空
		function initQuizModel(){
			$('#QID').val();
			$('#问题').val();
			$('#答案').val();
			$('#章节ID').val();
			$('#图片路径').val();
			$('#题目类型').val();
			$('#题目详解').val();
			$('#errTotal').val();
		}
		
		//显示指定qid的quiz
		function editModel(qid) {
			initQuizModel();
			//赋值
			$.get("../../backQuizHandler/getQuizByQid", {
				"qid" : qid
			}, function(data) {
				if (data) {
					$('#QID').val(data.qid);
					$('#问题').val(data.question);
					$('#答案').val(data.answer);
					$('#章节ID').val(data.pid);
					$('#图片路径').val(data.pic);
					$('#题目类型').val(data.qtype);
					$('#题目详解').val(data.explain);
					$('#errTotal').val(data.errTotal);
				}
			}, "json");
			showModel();
		}
		//确定修改
		function confirmEdit(){
			//获取值
			var qid = $('#QID').val();
			var question = $('#问题').val();
			var answer = $('#答案').val();
			var pid = $('#章节ID').val();
			var pic = $('#图片路径').val();
			var qtype = $('#题目类型').val();
			var explain = $('#题目详解').val();
			var errTotal = $('#errTotal').val();
			alert(qid+" "+" errTotal:"+errTotal);
			//传值修改
			$.post("../../backQuizHandler/updateQuiz", {
				"qid":qid,"question":question,"answer":answer,
				"pid":pid,"pic":pic,"qtype":qtype,"explain":explain,
				"errTotal":errTotal
			}, function(data) {
				if (data) {
					alert("修改成功");
					$('#getAllQuiz').bootstrapTable('refresh');
				}
			}, "json");
		}
		
		
		//添加新的quiz
		function addQuiz(){
			initQuizModel();
			
			showModel();
		
		}
	
		//删除指定quiz
		function member_del(id) {
			if(  confirm("确定删除？"+id)  ){
				$.get("../../backQuizHandler/deleteQuiz", {
					"qid" : id
				}, function(data) {
					if (data) {
						alert("删除成功!!!");
					}
				}, "json");
				$('#getAllQuiz').bootstrapTable('refresh');
			}
		}
		//进来后显示所有管理员的信息,需要判定是sa								
		$('#getAllQuiz').bootstrapTable(
				{
					method : 'get',
					url : '../../backQuizHandler/allQuiz',
					cache : false,
					striped : true,
					pagination : true,
					dataType : "json",
					pageList : [ 1, 3, 5, 8, 10 ],
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
								checkbox : true
							},
							{
								field : 'qid',
								title : 'ID',
								sortable : true,
								align : 'center'
							},
							{
								field : 'question',
								title : '问题',
								align : 'center'
							},
							{
								field : 'answer',
								title : '答案',
								align : 'center'
							},
							{
								field : 'pid',
								title : '章节ID',
								sortable : true,
								align : 'center'
							},
							{
								field : 'pic',
								title : '图片',
								align : 'center'
							},
							{
								field : 'qtype',
								title : '题目类型',
								sortable : true,
								align : 'center'
							},
							{
								field : 'errTotal',
								title : '错误总数',
								sortable : true,
								align : 'center'
							},
							{
								field : 'explain',
								title : '题目详解',
								align : 'center',

							},
							{
								field : 'operate',
								title : '操作',
								width : 100,
								align : 'center',
								valign : 'middle',
								formatter : function(value, row, index) {
									/* 	var edit = '<a onclick="member_edit(\''+ row.qid + '\')">编辑</a> ';   */
									var edit = '<a onclick="editModel(\''
											+ row.qid + '\')">编辑</a> ';
									var del = '<a onclick="member_del(\''
											+ row.qid + '\')">删除</a> ';
									var str = edit + "&nbsp;" + del;
									return str;
								}
							} ]
				});

		
	</script>
</body>

</html>