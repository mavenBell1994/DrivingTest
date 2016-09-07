<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<base href="/DrivingTest/">
<meta charset="UTF-8">
<title>【驾考宝典】</title>
<!--全真模拟的样式  -->
<link rel="stylesheet" href="css/completeSimulation.css" />

<link rel="stylesheet" id="bsCss">
<link href="css/public.css" rel="stylesheet" type="text/css">
<link href="css/top.css" rel="stylesheet" type="text/css">
<!--bootstrap的引入  -->
<script src="bootstrap-3.3.7/js/jquery.min.js"></script>
<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>

<!-- 跳过未做的题 样式 skip -->
<!--做错的题  样式error-->
</head>
<body class=" " id="body">
	<div id="simple-container" class="simple-container">
		<c:choose>
	<c:when test="${cname.cname==null}">
		<jsp:include page="/page/top.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="/page/top1.jsp"></jsp:include>	
	</c:otherwise>
</c:choose>
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
		<!-- 内容 -->
		<div class="jkbd-main-main " data-item="jkbd-main-main-container"
			data-simple-node-dom="jkbd-template-html-home-main">
			<div class="testContainer">
				<div class="test">
					<div class="info-up">
						<div class="infoup-left">
							<fieldset class="kaochang-info">
								<legend>理论考试</legend>
								<span>第01考台</span>

							</fieldset>
							<fieldset class="kaosheng-info">
								<legend>考生信息</legend>
								<div>
									<img alt="" src="images/diandian.png">
									<p class="name">
										考生姓名：<span class="nickname ellipsis">我是车神</span>
									</p>
									<p>考试题数：100题</p>
									<p>考试时间：45分钟</p>
									<p>合格标准：满分100分</p>
									<p class="ll">90及格</p>
								</div>
							</fieldset>

						</div>
						<div class="infoup-center">
							<fieldset class="question">
								<legend>考试题目</legend>
								<div class="problemContainer">

									<div class="problem">
										<div class="problem-title">
											<i>1.</i>
											<p class="problem-p">打开位置灯开关，（如图所示）亮起。</p>
										</div>
										<p>A、正确</p>
										<p>B、错误</p>
									</div>
									<div class="result">
										<div class="options">
											<label>请选择：</label>
											<button class="option-btn" type="button">A</button>
											<button class="option-btn" type="button">B</button>
										</div>
									</div>
								</div>
								<div class="viewImg">
									<img style="width: 160px; height: 160px;"
										src="images/diandian.png"> <span class="see">查看大图</span>
								</div>
							</fieldset>
						</div>
					</div>
					<div class="info-middle">
						<fieldset class="time-info">
							<legend>剩余时间</legend>
							<span data-item="left-time">00:00</span>
						</fieldset>
						<fieldset class="tip-container">
							<legend>提示信息</legend>
							<div class="judgeTest">判断题，请判断对错！</div>
						</fieldset>
						<div class="fun-btns">
							<button class="prev" type="button">上一题</button>
							<button class="next" type="button">下一题</button>
							<button class="submitTest" type="button">交卷</button>
						</div>
					</div>
					<div class="info-down">
						<fieldset class="">
							<legend>答题信息</legend>
							<div class="answerCard" style="">
								<ul class="answerCardUl">
									<li class="row0 col0 current">1</li>
									<li class="row0 ">2</li>
									<li class="row0 ">3</li>
									<li class="row0 ">4</li>
									<li class="row0 ">5</li>
									<li class="row0 ">6</li>
									<li class="row0 ">7</li>
									<li class="row0 ">8</li>
									<li class="row0 ">9</li>
									<li class="row0 ">10</li>
									<li class="row0 ">11</li>
									<li class="row0 ">12</li>
									<li class="row0 ">13</li>
									<li class="row0 ">14</li>
									<li class="row0 ">15</li>
									<li class="row0 ">16</li>
									<li class="row0 ">17</li>
									<li class="row0 ">18</li>
									<li class="row0 ">19</li>
									<li class="row0 ">20</li>
									<li class="row0 ">21</li>
									<li class="row0 ">22</li>
									<li class="row0 ">23</li>
									<li class="row0 ">24</li>
									<li class="row0 ">25</li>
									<li class=" col0">26</li>
									<li class=" ">27</li>
									<li class=" ">28</li>
									<li class=" ">29</li>
									<li class=" ">30</li>
									<li class="">31</li>
									<li class="">32</li>
									<li class=" ">33</li>
									<li class=" ">34</li>
									<li class=" ">35</li>
									<li class=" ">36</li>
									<li class=" ">37</li>
									<li class=" ">38</li>
									<li class=" ">39</li>
									<li class=" ">40</li>
									<li class=" ">41</li>
									<li class=" ">42</li>
									<li class=" ">43</li>
									<li class=" ">44</li>
									<li class=" ">45</li>
									<li class=" ">46</li>
									<li class=" ">47</li>
									<li class=" ">48</li>
									<li class=" ">49</li>
									<li class=" ">50</li>
									<li class="col0">51</li>
									<li class=" ">52</li>
									<li class=" ">53</li>
									<li class=" ">54</li>
									<li class=" ">55</li>
									<li class=" ">56</li>
									<li class=" ">57</li>
									<li class=" ">58</li>
									<li class=" ">59</li>
									<li class=" ">60</li>
									<li class=" ">61</li>
									<li class=" ">62</li>
									<li class=" ">63</li>
									<li class=" ">64</li>
									<li class=" ">65</li>
									<li class=" ">66</li>
									<li class=" ">67</li>
									<li class=" ">68</li>
									<li class=" ">69</li>
									<li class=" ">70</li>
									<li class=" ">71</li>
									<li class=" ">72</li>
									<li class=" ">73</li>
									<li class=" ">74</li>
									<li class=" ">75</li>
									<li class="col0">76</li>
									<li class=" ">77</li>
									<li class=" ">78</li>
									<li class=" ">79</li>
									<li class=" ">80</li>
									<li class=" ">81</li>
									<li class=" ">82</li>
									<li class=" ">83</li>
									<li class=" ">84</li>
									<li class=" ">85</li>
									<li class=" ">86</li>
									<li class=" ">87</li>
									<li class=" ">88</li>
									<li class=" ">89</li>
									<li class=" ">90</li>
									<li class=" ">91</li>
									<li class=" ">92</li>
									<li class=" ">93</li>
									<li class=" ">94</li>
									<li class=" ">95</li>
									<li class=" ">96</li>
									<li class=" ">97</li>
									<li class=" ">98</li>
									<li class=" ">99</li>
									<li class=" ">100</li>
								</ul>
							</div>
						</fieldset>
					</div>
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
	<script type="text/javascript" src="js/formlogin.js"></script>
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
					<form class="form-horizontal" role="form" action=""
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
	<script>
		function show() {
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
	</script>
</body>
</html>