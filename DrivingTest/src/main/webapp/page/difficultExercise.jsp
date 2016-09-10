<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<base href="/DrivingTest/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>小车科目一难题练习</title>
<link rel="stylesheet" id="bsCss">
<!-- <link rel="alternate" media="only screen and (max-width: 640px)"
	href="http://m.jiakaobaodian.com/mnks/exercise/8-car-kemu1-hengyang.html"> -->
<link href="css/public.css" rel="stylesheet" type="text/css">
<link href="css/dialog.css" rel="stylesheet" type="text/css">
<link href="css/main.css" rel="stylesheet" type="text/css">
<link href="css/news.css" rel="stylesheet" type="text/css">
<link href="css/webjkbd.css" rel="stylesheet" type="text/css">
<link href="css/others.css" rel="stylesheet" type="text/css">
<link href="css/top.css" rel="stylesheet" type="text/css">

</head>
<body class=" ">
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
						src="images/logo_erji.png" class="no-bg"></a>
					<ul class="nav float-l float-l-ul cl" id="navUl">
						<li data-item="nav-home" class="li-h "><a
							href="http://www.jiakaobaodian.com/hengyang">首页</a></li>
						<li data-item="nav-mnks" class="current"><a
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
		<div class="jkbd-main-main erjiyemian"
			data-item="jkbd-main-main-container"
			data-simple-node-dom="jkbd-app-template-html-practice-home">
			<div class="for-oes hide" data-item="oes-container">
				<h1>衡阳2016年小车科目一难题练习-一切尽在驾考宝典，轻松考驾照！</h1>
				<h3>行车中遇到正在进行作业的道路养护车辆、工程作业车时要注意避让。</h3>
				<h3>下坡路制动失效后，在不得已的情况下，可用车身侧面擦撞山坡，迫使机动车减速停车。</h3>
				<h3>夜间驾驶机动车会车时，对方一直使用远光灯，以下做法正确的是什么？</h3>
				<h3>这个标志的作用是用以警告车辆驾驶人谨慎慢行，注意横向来车。</h3>
				<h3>通过无人看守的铁路道口时，没有看到火车到来可以加速通过。</h3>
				<h3>下列做法哪些可以有效避免驾驶疲劳？</h3>
				<h3>某日19时，杨某驾驶大客车，乘载57人（核载55人），连续行驶至次日凌晨1时，在金城江区境内050国道3008公里加110米处，因机动车左前胎爆裂，造成12人死亡、22人受伤的特大交通事故。杨某的主要违法行为是什么？</h3>
				<h3>机动车仪表板上（如图所示）亮表示什么？</h3>
				<h3>驾驶机动车怎样经过公路跨线桥？</h3>
				<h3>遇到这种情况的路口怎样通过？</h3>
				<h3>这个标志是何含义？</h3>
				<h3>右侧标志提醒前方是左侧傍山险路。</h3>
				<h3>这个标志的含义是警告前方有两个相邻的反向转弯道路。</h3>
				<h3>驾驶机动车在该处不影响行人正常通行的情况下可以掉头。</h3>
				<h3>抢救骨折伤员时注意什么？</h3>
			</div>
			<div class="breadcrumb-container wid-auto jkbd-width"
				data-item="breadcrumb-container">
				<strong class="hide">驾考宝典</strong> <label
					data-item="breadcrumb-label-container"> <a
					href="http://www.jiakaobaodian.com/mnks/car-hengyang.html">模拟考试</a><span
					class="gap">&gt;</span> <a
					href="http://www.jiakaobaodian.com/mnks/car-kemu1-hengyang.html">科目一</a><span
					class="gap">&gt;</span> <a class="mylink"  >难题练习</a>
				</label>
			</div>
			<div
				class="jkbd-page-lianxi inner jkbd-width wid-auto cl lianxi-type-difficult">
				<div class="lianxi-container news-left">
					<div class="shiti-container " data-item="shiti-container">
						<div class="shiti-item cl">
							<p class="shiti-content" data-item="shiti-content" >
								<b>难</b>
								<span id="quizTitle"><!-- 1/100. 对驾驶拼装机动车上路行驶的驾驶人，会受到下列哪种处罚？ --></span> 
							</p>
							<span class="favor-tag " data-action="login" onclick="favorSave()" id="favor-tag">收藏</span>
							<div class="shiti-wapper cl">
								<div class="shiti-item-left float-l">
									<div class="options-container " data-item="options-container" id="options-container">
										<!-- <p class="" data-answer="16">
											<i></i><span>A. 处15日以下拘留</span>
										</p>
										<p class="" data-answer="32">
											<i></i><span>B. 依法追究刑事责任</span>
										</p>
										<p class="" data-answer="128">
											<i></i><span>C. 吊销机动车行驶证</span>
										</p>
										<p class="dui " data-answer="64">
											<i></i><span>D. 处200以上2000元以下罚款</span>
										</p> -->
									</div>
								</div>
								<div class="shiti-item-right float-l" id="quizPics"></div>
							</div>
						</div>
					</div>
					<div class="tip-container" data-item="tip-container" id="qtype">
					<!-- 	<p class="weizuo">单选题，请选择你认为正确的答案！</p> -->
					</div>
					<div class="static-container" data-item="static-container" id="quizResult">
						<!-- 错误率<b>45%</b>做错人数<b>40782638</b> -->
					</div>
					<div class="tiku-jindu-container cl"
						data-item="tiku-jindu-container">
						<div class="wapper">
							<div class="zuocuo"></div>
							<div class="zuodui"></div>
							<b class="tips">科目一题库共1203题，已完成333题</b>
						</div>
					</div>
					<div class="shiti-buttons cl">
						<button class="li0 float-l" type="button" data-item="prev" onclick="javascript:showPre()">上一题</button>
						<button class="float-l" type="button" data-item="next" onclick="javascript:showNext()">下一题</button>
						<button class="datika grey-b zkdtk float-r" onclick="javascript:showCard()">展开答题卡</button>
						<button class="grey-b float-r" type="button" data-item="see-answer" onclick="seeDetail()">查看详解</button>
					</div>
					<div class="tongji-container cl" data-item="tongji-container">
						<label class="daduinext float-l"><input type="checkbox"
							checked="checked" data-item="daduinext" id="autoNext"><span>答对自动下一题</span></label> 
							<label class="x-dadui float-l" >答对：<span id="answerRight"></span></label> 
							<label class="x-dacuo float-l">答错：<span id="answerError"></span></label> 
							<label class="x-lv float-l">正确率：<span id="rightRate"></span></label>
							<label class="x-sync float-l" data-action="tips_sync">登录保存做题进度</label>
					</div>

					<div class="datika-container close" id="datika-container">
						<table class="datika" id="choseQuiz">
							<tbody>
								<tr>
									<td class="tr-first" data-id="802200">1</td>
									<td class="tr-first" data-id="808600">2</td>
									<td class="tr-first" data-id="820800">3</td>
									<td class="tr-first" data-id="826600">4</td>
									<td class="tr-first" data-id="828300">5</td>
									<td class="tr-first" data-id="829200">6</td>
									<td class="tr-first" data-id="830500">7</td>
									<td class="tr-first" data-id="831700">8</td>
									<td class="tr-first" data-id="1124200">9</td>
									<td class="tr-first" data-id="1156900">10</td>
									<td class="tr-first" data-id="1158200">11</td>
									<td class="tr-first" data-id="847500">12</td>
									<td class="tr-first" data-id="851300">13</td>
									<td class="tr-first" data-id="855900">14</td>
									<td class="tr-first" data-id="867200">15</td>
									<td class="tr-first" data-id="867500">16</td>
									<td class="tr-first" data-id="896700">17</td>
									<td class="tr-first" data-id="1160600">18</td>
									<td class="tr-first" data-id="801300">19</td>
									<td class="tr-first" data-id="806700">20</td>
								</tr>
								<tr>
									<td class="" data-id="806800">21</td>
									<td class="" data-id="808300">22</td>
									<td class="" data-id="808700">23</td>
									<td class="" data-id="808800">24</td>
									<td class="" data-id="810000">25</td>
									<td class="" data-id="810100">26</td>
									<td class="" data-id="812100">27</td>
									<td class="" data-id="813800">28</td>
									<td class="" data-id="814200">29</td>
									<td class="" data-id="815100">30</td>
									<td class="" data-id="815500">31</td>
									<td class="" data-id="820900">32</td>
									<td class="" data-id="821300">33</td>
									<td class="" data-id="821800">34</td>
									<td class="" data-id="822000">35</td>
									<td class="" data-id="822400">36</td>
									<td class="" data-id="824600">37</td>
									<td class="" data-id="824700">38</td>
									<td class="" data-id="824900">39</td>
									<td class="" data-id="825000">40</td>
								</tr>
								<tr>
									<td class="" data-id="825100">41</td>
									<td class="" data-id="825500">42</td>
									<td class="" data-id="826500">43</td>
									<td class="" data-id="826800">44</td>
									<td class="" data-id="827300">45</td>
									<td class="" data-id="827600">46</td>
									<td class="" data-id="827800">47</td>
									<td class="" data-id="827900">48</td>
									<td class="" data-id="828000">49</td>
									<td class="" data-id="828100">50</td>
									<td class="" data-id="832000">51</td>
									<td class="" data-id="832100">52</td>
									<td class="" data-id="832700">53</td>
									<td class="" data-id="833200">54</td>
									<td class="" data-id="833700">55</td>
									<td class="" data-id="834700">56</td>
									<td class="" data-id="835500">57</td>
									<td class="" data-id="1092300">58</td>
									<td class="" data-id="1092400">59</td>
									<td class="" data-id="1092500">60</td>
								</tr>
								<tr>
									<td class="" data-id="1093300">61</td>
									<td class="" data-id="1093900">62</td>
									<td class="" data-id="1119900">63</td>
									<td class="" data-id="1120300">64</td>
									<td class="" data-id="1121800">65</td>
									<td class="" data-id="1122400">66</td>
									<td class="" data-id="1122900">67</td>
									<td class="" data-id="1123300">68</td>
									<td class="" data-id="1124800">69</td>
									<td class="" data-id="1125300">70</td>
									<td class="" data-id="1125400">71</td>
									<td class="" data-id="1126300">72</td>
									<td class="" data-id="1127200">73</td>
									<td class="" data-id="1127500">74</td>
									<td class="" data-id="1128500">75</td>
									<td class="" data-id="1128700">76</td>
									<td class="" data-id="1155300">77</td>
									<td class="" data-id="1155600">78</td>
									<td class="" data-id="1155700">79</td>
									<td class="" data-id="1155800">80</td>
								</tr>
								<tr>
									<td class="tr-last" data-id="1155900">81</td>
									<td class="tr-last" data-id="1156100">82</td>
									<td class="tr-last" data-id="1158100">83</td>
									<td class="tr-last" data-id="839300">84</td>
									<td class="tr-last" data-id="839800">85</td>
									<td class="tr-last" data-id="840700">86</td>
									<td class="tr-last" data-id="841700">87</td>
									<td class="tr-last" data-id="842200">88</td>
									<td class="tr-last" data-id="844100">89</td>
									<td class="tr-last" data-id="844400">90</td>
									<td class="tr-last" data-id="844500">91</td>
									<td class="tr-last" data-id="845100">92</td>
									<td class="tr-last" data-id="845300">93</td>
									<td class="tr-last" data-id="846500">94</td>
									<td class="tr-last" data-id="848100">95</td>
									<td class="tr-last" data-id="848200">96</td>
									<td class="tr-last" data-id="848900">97</td>
									<td class="tr-last" data-id="849100">98</td>
									<td class="tr-last" data-id="849200">99</td>
									<td class="tr-last" data-id="850300">100</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div data-item="explain-fenxi-container"
						class="explain-fenxi-container close" id="analyseContainer">
						<div class="explain-container fenxi-container">
							<div class="title">
								<span class="name">试题详解</span>
								<button data-item="baocuo" type="button">我要报错</button>
							</div>
							<div class="ef-content">
								<p class="dengji cl">
									<span class="float-l">难度等级：</span><i class="star-gray"><i
										data-item="explain-star" class="star-leave star-5"></i></i>
								</p>
								<p data-item="explain-content" class="wapper">
								<p id="DiffQuizExplain" style="color: #b28850;font-size: 18px;">
									<!-- 《道路交通安全法》第一百条：<br>驾驶拼装的机动车或者已达到报废标准的机动车上道路行驶的，公安机关交通管理部门应当予以收缴，强制报废。<br>对驾驶前款所列机动车上道路行驶的驾驶人，处200元以上2000元以下罚款，并吊销机动车驾驶证（非行驶证）。 -->
								</p>
								</p>
							</div>
						</div>
						<div class="fenxi-container">
							<div class="title">
								<span class="name">我来分析</span>
								<button data-action="login_refresh" data-item="woyaofenxi"
									type="button" class="" onclick="WeAnalyse()">我要分析</button>
							</div>
							<div data-item="fenxi-content-container"
								class="fenxi-content-container ef-content">
								<ul data-item="list">
									<li class="li0"><img
										src="http://avatar.user.mucang.cn/201826/0/2e2a6e9b-2a48-4c4e-9533-db4c3e898ad4/original">
										<div class="item">
											<p class="header">
												<span title="快点拿到手吧！！" class="nickname">快点拿到手吧！！</span> <span
													class="jinhua">精华</span>
											</p>
											<p class="word-break">200以上！2000以下！吊销驾驶证，不是行驶证！！</p>
											<p class="date">2015-12-20</p>
										</div>
									</li>
									<li class=""><img
										src="http://q.qlogo.cn/qqapp/100289478/D49932715EC027D28C8AF6FA10800BE6/100">
										<div class="item">
											<p class="header">
												<span title="我这样不对" class="nickname">我这样不对</span> <span
													class="jinhua">精华</span>
											</p>
											<p class="word-break">题干上是行驶证，不是驾驶证</p>
											<p class="date">2015-12-23</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/n8N22hwOUfm3Rn6zA6M4lLM2XZEBGLaFGeGYcP23RUmcQ1oNtzsPiaUAIUP2lekkQup3xDg19RxtkdBaeGqpRWDGf4xu7QQLr/0">
										<div class="item">
											<p class="header">
												<span title="👿👿" class="nickname">👿👿</span>
											</p>
											<p class="word-break">又看错了😣</p>
											<p class="date">14:49</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/08/09/681f31c47ab948a0a4553da22d001692!100x100">
										<div class="item">
											<p class="header">
												<span title="狼吃肉狗吃屎" class="nickname">狼吃肉狗吃屎</span>
											</p>
											<p class="word-break">都是坑，文字坑</p>
											<p class="date">14:16</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/05/13/68e1e5bafb4c47a9ac0f8ee9cddf8d1b!100x100">
										<div class="item">
											<p class="header">
												<span title="harden13" class="nickname">harden13</span>
											</p>
											<p class="word-break">看错字了，要小心啊</p>
											<p class="date">14:10</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/09/14/c242911f96084dab99952a888a7a2e7a!100x100">
										<div class="item">
											<p class="header">
												<span title="雪穗" class="nickname">雪穗</span>
											</p>
											<p class="word-break">行驶证和驾驶证有什么不一样</p>
											<p class="date">14:08</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/DDB865BCCF51F4EBC2404230EFE19D41/100">
										<div class="item">
											<p class="header">
												<span title="遗忘一切-_-" class="nickname">遗忘一切-_-</span>
											</p>
											<p class="word-break">没有看清楚 唉</p>
											<p class="date">14:00</p>
										</div></li>
									<li class=""><img
										src="http://avatar.kakamobi.cn/user/avatar/3.jpg">
										<div class="item">
											<p class="header">
												<span title="大郡" class="nickname">大郡</span>
											</p>
											<p class="word-break">这题做五次错五次。死在这上面了。</p>
											<p class="date">13:24</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/4h0Uv4XOMvMo2WdIhbYRacrVE57qgK4edkGel8xAI8CdgeI9bLPbvnZRGmVYuM8xq3wOptr6hFhqvoIwPE2KZhXaITAQOA9Z/0">
										<div class="item">
											<p class="header">
												<span title="倾城倾下" class="nickname">倾城倾下</span>
											</p>
											<p class="word-break">驾驶证，不是行驶证</p>
											<p class="date">13:17</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/A766ADD67896AC3271E0D6A0B3F85B4D/100">
										<div class="item">
											<p class="header">
												<span title="💋&#12288;" class="nickname">💋&#12288;</span>
											</p>
											<p class="word-break">一定要看清楚题</p>
											<p class="date">12:54</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/94B4D1920EEC1131D8DF869A5FB25FBA/100">
										<div class="item">
											<p class="header">
												<span title="逍遥大叔" class="nickname">逍遥大叔</span>
											</p>
											<p class="word-break">这出题的人好贱啊，要看清选择答案！！！</p>
											<p class="date">12:50</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/1C70404BAABD109A9AF94D6498F24045/100">
										<div class="item">
											<p class="header">
												<span title="愚亽啯喥" class="nickname">愚亽啯喥</span>
											</p>
											<p class="word-break">全是套路😱😱😱</p>
											<p class="date">12:34</p>
										</div></li>
									<li class="li0"><img
										src="http://saturn.image.mucang.cn/201168/0/83d82434-73dd-458d-aa81-49c7ac471ee5/original">
										<div class="item">
											<p class="header">
												<span title="2016果果拿驾照" class="nickname">2016果果拿驾照</span>
											</p>
											<p class="word-break">咬文嚼字对驾车学车学规定有帮助吗？渣渣渣</p>
											<p class="date">12:27</p>
										</div></li>
									<li class=""><img
										src="http://saturn.image.mucang.cn/201168/0/83d82434-73dd-458d-aa81-49c7ac471ee5/original">
										<div class="item">
											<p class="header">
												<span title="用户7323467077" class="nickname">用户7323467077</span>
											</p>
											<p class="word-break">破题毁一生 看错</p>
											<p class="date">12:17</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/4h0Uv4XOMvNQbnH5ibZmG0DkehqOwbvjqDzvrSSAic60v98RIHh7oAOt5tmEPe7F6bpSJKuBDhODNwbbB8I6sj75zJRZYCAC7H/0">
										<div class="item">
											<p class="header">
												<span title="漃寞の笩誩亽" class="nickname">漃寞の笩誩亽</span>
											</p>
											<p class="word-break">懵逼了唉唉唉………</p>
											<p class="date">12:05</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/09/11/a25c9738f8c24824abaac30886d5a027!100x100">
										<div class="item">
											<p class="header">
												<span title="小公举" class="nickname">小公举</span>
											</p>
											<p class="word-break">看错了。。。。</p>
											<p class="date">11:58</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/662638E723B426230D6E9E31F00A0130/100">
										<div class="item">
											<p class="header">
												<span title="陌路" class="nickname">陌路</span>
											</p>
											<p class="word-break">太急了又掉坑里了……</p>
											<p class="date">11:35</p>
										</div></li>
									<li class=""><img
										src="http://q.qlogo.cn/qqapp/100289478/6B5D1E7E12A56066D9D2AD539301A727/100">
										<div class="item">
											<p class="header">
												<span title="恩凡。" class="nickname">恩凡。</span>
											</p>
											<p class="word-break">看错字，卧槽。</p>
											<p class="date">11:22</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/4h0Uv4XOMvMJ0eiclicictwTcicpZ8VNq98K5rWMbEKHYCcLticoHl7035mtSxCYYOw0IQzib9sGemdgLlBmbI6Xicib1A/0">
										<div class="item">
											<p class="header">
												<span title="张新桥大妹砸" class="nickname">张新桥大妹砸</span>
											</p>
											<p class="word-break">做3次错3次</p>
											<p class="date">10:45</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/axTNXYuSHWdV8zVStibt4ctXOFRVXKkKVxomRibJ2MdJicJIbq1jtKze29zgT6gOFDcfMciaLhMVOe54de0saPh2kKFkEfB7IqkZ/0">
										<div class="item">
											<p class="header">
												<span title="熟悉er陌生" class="nickname">熟悉er陌生</span>
											</p>
											<p class="word-break">又看错选错了，考试的时候一定要细心啊</p>
											<p class="date">10:43</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/axTNXYuSHWdV8zVStibt4cpCsKvuuAyjR2tTqdH0zXsbsibnPBHDn4vvJShAg3t102PqYz36AMYOTZvgt9IicnibvQDj2cS3PQ8ic/0">
										<div class="item">
											<p class="header">
												<span title="爱生活。" class="nickname">爱生活。</span>
											</p>
											<p class="word-break">卧槽，看错字了</p>
											<p class="date">10:20</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/n8N22hwOUfkzSeFuqZibyicUuSvaoVhbwibtb0p5zOM5L5lQU6AZQXm3fX1fC84UUgOlma8heKJ1zUvByibVNkFgMpLR1CUnHamR/0">
										<div class="item">
											<p class="header">
												<span title="勿忘我" class="nickname">勿忘我</span>
											</p>
											<p class="word-break">做三次错三次</p>
											<p class="date">09:28</p>
										</div></li>
									<li class="li0"><img
										src="http://q.qlogo.cn/qqapp/100289478/5041955FCC7DBEE3830D19ABED5765CA/100">
										<div class="item">
											<p class="header">
												<span title="或许丶不该遇见" class="nickname">或许丶不该遇见</span>
											</p>
											<p class="word-break">脑抽，看错了 以为是驾驶证</p>
											<p class="date">09:20</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/PiajxSqBRaEKnUKd19Oc7RP7Z1QelglS7miaLibZr6XEhW2nBv7GL3F0Th7TMr60E9NUbSQeFtGzxzZ2T2kMeCWoA/0">
										<div class="item">
											<p class="header">
												<span title="《森淼造型》" class="nickname">《森淼造型》</span>
											</p>
											<p class="word-break">七次错七次无语</p>
											<p class="date">08:36</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/09/08/aed200d55bbb42cbadc3c280a7a5c912.png!100x100">
										<div class="item">
											<p class="header">
												<span title="A༤唔爱华少、🇨🇳（总代）" class="nickname">A༤唔爱华少、🇨🇳（总代）</span>
											</p>
											<p class="word-break">表示有同感！ 都是套路</p>
											<p class="date">08:30</p>
										</div></li>
									<li class=""><img
										src="http://avatar.user.mucang.cn/user-avatar/2016/09/09/08/aed200d55bbb42cbadc3c280a7a5c912.png!100x100">
										<div class="item">
											<p class="header">
												<span title="A༤唔爱华少、🇨🇳（总代）" class="nickname">A༤唔爱华少、🇨🇳（总代）</span>
											</p>
											<p class="word-break">哈哈。 哈哈。 吊销.......毛啊。 文字编辑。
												我表示无语😓了。</p>
											<p class="date">08:30</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/n8N22hwOUfkzSeFuqZibyicYWunyG3sHpEIJq1gmYKBOPcibGu4PLOgl9xNvZnJRia3NKQPCeuhdXFDOxQ5jmnpHQS2Z43tBMzHic/0">
										<div class="item">
											<p class="header">
												<span title="敏儿" class="nickname">敏儿</span>
											</p>
											<p class="word-break">没看透题目手点错了，</p>
											<p class="date">08:22</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/n8N22hwOUfkzSeFuqZibyicYWunyG3sHpEIJq1gmYKBOPcibGu4PLOgl9xNvZnJRia3NKQPCeuhdXFDOxQ5jmnpHQS2Z43tBMzHic/0">
										<div class="item">
											<p class="header">
												<span title="敏儿" class="nickname">敏儿</span>
											</p>
											<p class="word-break">手快了，没看透题目点错了</p>
											<p class="date">08:21</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/4h0Uv4XOMvNMHQoWPRut5X0NWKLFEOCMFBmXyKbQFictOgicvKiaZOrzKdAfsLeZwyticNSTFfpT20ruxe8vHnAtqgyNzuicsWcYz/0">
										<div class="item">
											<p class="header">
												<span title="W（XY）Z" class="nickname">W（XY）Z</span>
											</p>
											<p class="word-break">连环坑！(=￣&nbsp;ρ￣=)&nbsp;..zzZZ</p>
											<p class="date">07:46</p>
										</div></li>
									<li class=""><img
										src="http://wx.qlogo.cn/mmopen/4h0Uv4XOMvNMHQoWPRut5X0NWKLFEOCMFBmXyKbQFictOgicvKiaZOrzKdAfsLeZwyticNSTFfpT20ruxe8vHnAtqgyNzuicsWcYz/0">
										<div class="item">
											<p class="header">
												<span title="W（XY）Z" class="nickname">W（XY）Z</span>
											</p>
											<p class="word-break">连环坑d(ŐдŐ๑)！</p>
											<p class="date">07:45</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/ACDE51387346320F2C47035F994118CB/100">
										<div class="item">
											<p class="header">
												<span title="💋深知我不好i" class="nickname">💋深知我不好i</span>
											</p>
											<p class="word-break">自己还能不能用点心了😂</p>
											<p class="date">07:09</p>
										</div></li>
									<li class=""><img
										src="http://qzapp.qlogo.cn/qzapp/100289478/ACDE51387346320F2C47035F994118CB/100">
										<div class="item">
											<p class="header">
												<span title="💋深知我不好i" class="nickname">💋深知我不好i</span>
											</p>
											<p class="word-break">每次都点错，不长急性，每次都是一眼扫过，要考试了，自己还能不能用点心了😂</p>
											<p class="date">07:08</p>
										</div></li>
								</ul>
								<button data-item="loadmore-dianping" type="button"
									class="more-btn loadmore disable" data-cursor="11166575"
									data-topic="802200">加载中...</button>
							</div>
						</div>
					</div>
					<div class="explain-fenxi-container close"
						data-item="explain-fenxi-container">
						<div class="explain-container fenxi-container">
							<div class="title">
								<span class="name">试题详解</span>
								<button type="button" data-item="baocuo">我要报错</button>
							</div>
							<div class="ef-content">
								<p class="dengji cl">
									<span class="float-l">难度等级：</span><i class="star-gray"><i
										class="star-leave star-5" data-item="explain-star"></i></i>
								</p>
								<p class="wapper" data-item="explain-content">
								<p>
									《道路交通安全法》第一百条：<br>驾驶拼装的机动车或者已达到报废标准的机动车上道路行驶的，公安机关交通管理部门应当予以收缴，强制报废。<br>对驾驶前款所列机动车上道路行驶的驾驶人，处200元以上2000元以下罚款，并吊销机动车驾驶证（非行驶证）。
								</p>
							</div>
						</div>
						<div class="fenxi-container">
							<div class="title">
								<span class="name">我来分析</span>
								<button class="" type="button" data-item="woyaofenxi"
									data-action="login_refresh">我要分析</button>
							</div>
							<div class="fenxi-content-container ef-content"
								data-item="fenxi-content-container">
								<ul data-item="list"></ul>
								<button class="more-btn" type="button"
									data-item="loadmore-dianping">加载更多</button>
							</div>
						</div>
					</div>
					<div class="shiti-mask-container" data-item="shiti-mask-container">
						<div class="shiti-mask-zz" data-item="mask-bg"></div>
						<div class="mask-img-content" data-item="mask-img-content">
							<div class="mask-close" data-item="mask-close"></div>
							<div class="mask-content" data-item="mask-content"></div>
						</div>
					</div>
				</div>
				<div class="news-right">
					<div class="news-right bt2"></div>
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
							_href="/feedback" class="a-link">意见反馈</a></li>
					</ul>
					<p>Copyright © &nbsp;&nbsp;ReadyGo</p>
				</div>
			</div>
		</div>
	</div>
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
	<!-- 我要分析 -->
	<div id="dialog-base-container" style="display: none;">
		<div data-item="dialog-6" class="dialog-wrap " style="">
			<div class="jkbd-dialog-backdrop"></div>
			<div style="width: 390px;" class="dialog-main nofotter"
				data-item="dialog-main">
				<span title="关闭" data-item="close" class="dialog_close" onclick="dialogClose()">×</span>
				<div class="body no-title" data-item="body" style="">
					<div class="dianping-comment-container">
						<h2>我要分析</h2>
						<div class="textarea-wapper">
							<textarea placeholder="快来和小伙伴分享一下想法吧！" rows="6" data-item="textarea" name="comContent" id="comContent" onkeyup="contentNum()"></textarea>
							<div data-item="font-limit" class="font-limit" id="contentNum">0/240</div>
						</div>
						<button data-item="submit" type="button" onclick="addComments(${cname.cid})">提交</button>
					</div>
				</div>
				<div class="footer btns0"></div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/formlogin.js"></script>
	<script type="text/javascript" src="js/jquery.cookie.js"> </script>
	<script type="text/javascript" src="js/difficultExercise.js"></script>
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

		/* 展开答题卡 */
		function showCard() {
			if ($("#datika-container").attr("class") == "datika-container close") {
				$("#datika-container").attr("class", "datika-container");
			} else {
				$("#datika-container").attr("class", "datika-container close");
		}
		}
	</script>
</body>

</html>