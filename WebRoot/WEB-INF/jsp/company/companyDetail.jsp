<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'companyDetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/companyRegister/def.css"
	type="text/css"></link>
</head>

<body>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="${pageContext.request.contextPath}/images/companyRegister/detail/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/detail/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/detail/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a href="${pageContext.request.contextPath}/job/findAllJobs.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/companyRegister/detail/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/detail/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/showResume.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/companyRegister/detail/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/detail/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<c:if test="${sessionScope.jobhunter==null}">
				<div
					style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
					<a href="${pageContext.request.contextPath}/index.jsp">登录</a>/<a
						href="${pageContext.request.contextPath}/jobHunter/registerUI.action">注册</a>
				</div>
				<div style="position:absolute;right:10;top:10;">
					<a href="${pageContext.request.contextPath}/company/index.action"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/index/dhh/business2.png',1)"><img
						src="${pageContext.request.contextPath}/images/index/dhh/business.png"
						alt="" width="80" height="30" id="business"> </a>
				</div>
			</c:if>
			<c:if test="${sessionScope.jobhunter!=null}">
				<div
					style="position: absolute; float: left; width: 200; height: 16; right:63; top: 17px;text-align:right;">
					<a
						href="${pageContext.request.contextPath}/resume/showResume.action">${sessionScope.jobhunter.jobhunterName}</a>,<a
						href="javascript:void(0)" id="logoutBtn">注销</a>
				</div>
				<div class="mask2"
					style="padding-top:5;padding-bottom:5;position:absolute;right:10;width:40;height:40;float:left">
					<a href="javascript:void(0)"><img
						src="${sessionScope.jobhunterUpload.uploadLocation}${sessionScope.jobhunterUpload.uploadName}"
						alt="" width="40" height="40" id="business"> </a>
				</div>
			</c:if>
		</div>
	</div>
	<div class="framemain" style="position:relative;z-index:99;">
		<div class="framemid" style="position:relative;">
			<div class="div_mid" style="float:left;">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">企业详情</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/line647.png"
							width="900" height="1" alt="" />
					</div>
				</div>
				<div class="fill_mid"
					style="width:200;height:100;padding-top:10.7;float:left">
					<img style="position: absolute;  left: 0;top:20;"
						src="${jobCustom.uploadLocation }${jobCustom.uploadName }"
						width="200" height="100" alt="" />
				</div>
				<div
					style="width:660;height:100;padding-top:10.7;float:right;margin-right:30;">
					<h2>${sessionScope.jobCustom.companyName }</h2>
					<p>· ${sessionScope.jobCustom.industryName }</p>
					<p>· ${sessionScope.jobCustom.worksite }</p>
				</div>
			</div>
		</div>
		<div class="frameleft" style="position:relative;">
			<div class="div_left">
				<div class="fill_title_left">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">企业介绍</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:615;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/line647.png"
							width="615" height="1" alt="" />
					</div>
				</div>
				<div class="fill_left" style="padding-top:10.7">
					<h1>企业简介：</h1>
					<p>${sessionScope.jobCustom.companyDescription }</p>
				</div>

			</div>
			<div class="div_left">
				<div class="fill_title_left">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:100;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">招聘职位</h2>
					</div>
					<p style="margin:0;position:absolute;top:14;right:10;">
						<a href="javascript:void(0)"
							style="font-family:微软雅黑;color: #3d7d52;">查看更多</a>
					</p>
					<div
						style="position:absolute;top:50;left:-5;width:615;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/line647.png"
							width="615" height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.threeLatestJobs }"
					var="threeLatestJob" varStatus="num">
					<div class="fill_left">
						<h1>
							<a
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${threeLatestJob.jobId}">${threeLatestJob.companyName}</a>
							· <a href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${threeLatestJob.jobId}">${threeLatestJob.jobName}</a>
						</h1>
						<p>
							月薪：${threeLatestJob.jobSalary}元<br />
							所在地：${threeLatestJob.companyLocation}<br />
							行业：${threeLatestJob.industryName}<br />
							地址：${threeLatestJob.worksite}
						</p>
						<img style="position:absolute;right:0;top:31;float:right;"
							src="${threeLatestJob.uploadLocation }${threeLatestJob.uploadName }"
							width="160" height="80" alt="" />
					</div>
				</c:forEach>
				<!-- <div class="fill_left"
					style="margin-top:20;width:100%;text-align:center;">
					<p>
						<a href="#">&lt;&lt;</a>&nbsp;&nbsp;<a href="#">1</a> <a href="#">2</a>
						<a href="#">3</a> <a href="#">4</a> <a href="#">5</a>&nbsp;&nbsp;<a
							href="#">&gt;&gt;</a>
					</p>
				</div> -->
			</div>
		</div>
		<div class="frameright" style="position:relative;">
			<div class="div_right" style="position:relative;">
				<div class="fill_title_right">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">基本信息</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:214;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/line182.png"
							width="214" height="1" alt="" />
					</div>
				</div>
				<div class="fill_right" style="padding-top:10.7">
					<p>
						企业：${sessionScope.jobCustom.companyName }<br />
						行业：${sessionScope.jobCustom.industryName }<br />
						地址：${sessionScope.jobCustom.worksite }
					</p>
				</div>
				<div class="fill_right" style="padding-top:10.7;height:160">
					<img style="position: absolute;  left: 32;top: 0;"
						src="${pageContext.request.contextPath}/images/companyRegister/detail/map.png"
						width="150" height="160" alt="" />
				</div>
			</div>

			<div class="div_right" style="position:relative;">
				<div class="fill_title_right">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">搜索更多</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:214;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/detail/line182.png"
							width="214" height="1" alt="" />
					</div>
				</div>
				<div class="fill_right" style="height:80">
					<input class="form-control" name="textfield" type="text"
						id="search" value="输入搜索关键字"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						onFocus="if (value =='输入搜索关键字'){value =''}"
						onBlur="if (value ==''){value='输入搜索关键字'}"
						style="position:absolute;left:0;top:10;float:left;width:204px; height:30px;" />
					<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('search3','','${pageContext.request.contextPath}/images/companyRegister/detail/search2.png',0)"><img
						style="position:absolute;bottom:0;right:0;"
						src="${pageContext.request.contextPath}/images/companyRegister/detail/search.png"
						alt="" width="60" height="40" id="search3"> </a>
				</div>
				<a href="${pageContext.request.contextPath}/job/findAllJobs.action">
					<p
						style="position:absolute;color:3d7d52;text-align:left;left:30;top:115">高级搜索</p>
				</a>
			</div>
		</div>
	</div>
	<div class="framebottom" style="height:150">
		<div
			style="position:absolute;top:25;left:25;width:900px;height:100px;float:left;word-spacing:10px">
			<p
				style="margin: 0; position: absolute; top: 0; left: 0;  font-size: 14px; font-family:微软雅黑;color: #3d7d52; font-weight: ">常用链接：</p>
			<p style="margin: 0; position: absolute; top: 0; left: 100;  ">
				<a href="#">北京</a>&nbsp;<a href="#">上海</a>&nbsp;<a href="#">广州</a>&nbsp;<a
					href="#">深圳</a>&nbsp;<a href="#">南京</a>&nbsp;<a href="#">杭州</a>&nbsp;<a
					href="#">天津</a>&nbsp;<a href="#">青岛</a>&nbsp;<a href="#">成都</a>&nbsp;<a
					href="#">重庆</a>&nbsp;<a href="#">武汉</a>&nbsp;<a href="#">厦门</a>&nbsp;<a
					href="#">郑州</a>&nbsp;<a style="color:#3d7d42" href="#">查看更多</a>
			</p>
			<p
				style="margin: 0; position: absolute; top:40; left: 0;  font-size: 14px; font-family:微软雅黑;color: #3d7d52; font-weight:">热门职位：</p>
			<p
				style="text-align:left;margin: 0; position: absolute; top: 40; left: 100; ">
				<a href="#">翻译</a>&nbsp;<a href="#">保险</a>&nbsp;<a href="#">销售</a>&nbsp;<a
					href="#">金融</a>&nbsp;<a href="#">银行</a>&nbsp;<a href="#">数据分析</a>&nbsp;<a
					href="#">结构工程师</a>&nbsp;<a href="#">UI设计师</a>&nbsp;<a href="#">产品</a>&nbsp;<a
					href="#">人力资源</a>&nbsp;<a href="#">律师</a>&nbsp;<a href="#">营养师</a>&nbsp;<a
					href="#">活动策划</a>&nbsp;<a href="#">网络工程师</a>&nbsp;<a href="#">物业管理</a>&nbsp;<a
					href="#">包装设计</a>&nbsp;<a href="#">运营</a>&nbsp;<a href="#">技术总监</a>&nbsp;<a
					style="color:#3d7d42" href="#">查看更多</a>
			</p>
		</div>
		<div>
			<img
				style="position:absolute;bottom:0;left:25;width:900;height:1;float:left"
				src="${pageContext.request.contextPath}/images/companyRegister/detail/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/companyRegister/detail/phone.png"
				width="50" height="50" alt="" />
			<p style="position:absolute;bottom:40;width:190;font-size:12;">
				服务热线<br /> 400-6838-789<br /> 工作日 9:00-19:00
			</p>
		</div>
		<div class="fill_bottom" style="left:190px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">简介</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="a">职来网简介</a><br /> <a href="b">产品服务</a><br /> <a
						href="c">创新优势</a><br /> <a href="c">联系我们</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:380px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">栏目</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="a">职位大全</a><br /> <a href="b">招聘职位</a><br /> <a href="c">企业名录</a><br />
					<a href="d">城市列表</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:570px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">导航</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="a">网站地图</a><br /> <a href="b">企业入口</a><br /> <a href="c">求职者入口</a><br />
					<a href="c">宣传页</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:760px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">帮助</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="a">使用帮助</a><br /> <a href="b">常见问题</a><br /> <a href="e">意见反馈</a><br />
					<a href="c">版权/免责声明</a><br />
				</p>
			</div>
		</div>
	</div>
	<div class="framebottom" style="height:100">
		<div>
			<img
				style="position:absolute;top:0;left:25;width:900;height:1;float:left"
				src="${pageContext.request.contextPath}/images/companyRegister/detail/line.png"
				width="900" height="1" alt="" />
		</div>
		<div style="padding-top:20;">
			<p style="font-size:10;height:50;">Copyright©2016 zero.com All
				Rights Reserved.</p>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/companyRegister/companyRegister.js"></script>
</body>
</html>
