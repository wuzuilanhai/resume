<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<title>My JSP 'resumeDetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/resume/def.css"
	type="text/css"></link>
</head>

<body>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/logo.png"
					width="132" height="50" alt="" />
			</div>
			<div class="buttontop" style="left:182;">
				<a href="Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/resume/resumeDetail/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a href="../职位页/Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/resume/resumeDetail/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a href="../个人中心/Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/resume/resumeDetail/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/resume3.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; float: left; width: 200; height: 16; right:60; top: 17px;text-align:right">
				<a href="#"> 企业管理</a>&nbsp;&nbsp;&nbsp;<a href="#">退出</a>
			</div>
			<div class="mask2"
				style="position:absolute;right:10;top:5;width:40;height:40;float:left">
				<img style="margin-top:10;"
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/brand5.png"
					alt="" width="40" height="20">
			</div>
		</div>
	</div>
	<div class="framemain" style="position:relative;z-index:99;">
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">个人信息</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill" style="float:left;padding-top:10.7;width:170">
				<img style="position:absolute;top:30;left:0;"
					src="${sessionScope.jobhunterUpload.uploadLocation}${sessionScope.jobhunterUpload.uploadName}"
					width="150" height="150" alt="" />
			</div>
			<div class="fill" style="float:left;padding-top:10.7">
				<h2>${sessionScope.jobhunter.jobhunterRealName}</h2>
				<p>所在地：${sessionScope.jobhunter.jobhunterAddress}</p>
				<p>最近就职于：${sessionScope.latestWorkExperience.companyName}</p>
				<p>就职职位：${sessionScope.latestWorkExperience.positionName}</p>
				<p>工作时长：${sessionScope.workTime }日</p>
			</div>
			<div style="position:absolute;right:30;top:70;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('download','','${pageContext.request.contextPath}/images/resume/resumeDetail/download2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/download.png"
					alt="" width="100" height="50" id="download"> </a>
			</div>
		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">基本资料</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill" style="padding-top:10.7;float:left">
				<p>性别：${sessionScope.jobhunter.jobhunterSex}</p>
				<p>
					生日：
					<fmt:formatDate value="${sessionScope.jobhunter.jobhunterBirthday}"
						pattern="yyyy-MM-dd" />
				</p>
				<p>手机：${sessionScope.jobhunter.jobhunterPhone}</p>
				<p>邮箱：${sessionScope.jobhunter.jobhunterEmail}</p>
			</div>
			<div class="fill" style="padding-top:10.7;float:left; ">
				<p>籍贯：${sessionScope.jobhunter.jobhunterNativePlace}</p>
				<p>婚姻状况：${sessionScope.jobhunter.jobhunterMaritalStatus}</p>
				<p>目前状态：${sessionScope.jobhunter.jobhuntEntranceStatus}</p>
			</div>

		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">职业意向</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill" style="padding-top:10.7;float:left">
				<p>
					期望行业：
					<c:if test="${sessionScope.careerIntention.industryId eq 1 }">互联网·IT</c:if>
					<c:if test="${sessionScope.careerIntention.industryId eq 2 }">金融业</c:if>
					<c:if test="${sessionScope.careerIntention.industryId eq 3 }">快销行业</c:if>
					<c:if test="${sessionScope.careerIntention.industryId eq 4 }">建筑业</c:if>
					<c:if test="${sessionScope.careerIntention.industryId eq 5 }">汽车·制造</c:if>
					<c:if test="${sessionScope.careerIntention.industryId eq 6 }">医疗·化工</c:if>
				</p>
				<p>期望职位：${sessionScope.positionName}</p>
			</div>
			<div class="fill" style="padding-top:10.7;float:left; ">
				<p>期望地点：${sessionScope.careerIntention.expectWorksite }</p>
				<p>期望月薪：${sessionScope.careerIntention.expectSalary }元</p>
			</div>
		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">工作经历</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<c:if test="${sessionScope.workExperiences!=null }">
				<c:forEach items="${sessionScope.workExperiences}"
					var="workExperience" varStatus="num">
					<div class="fill" style="padding-top:10.7;float:left">
						<p2>${workExperience.companyName }&nbsp;&nbsp;&nbsp; <fmt:formatDate
							value="${workExperience.startTime
										}"
							pattern="yyyy/MM/dd" /> - <fmt:formatDate
							value="${workExperience.endTime
										}"
							pattern="yyyy/MM/dd" /></p2>
						<p>公司名称：${workExperience.companyName}</p>
						<p>
							公司行业：
							<c:if test="${sessionScope.careerIntention.industryId eq 1 }">互联网·IT</c:if>
							<c:if test="${sessionScope.careerIntention.industryId eq 2 }">金融业</c:if>
							<c:if test="${sessionScope.careerIntention.industryId eq 3 }">快销行业</c:if>
							<c:if test="${sessionScope.careerIntention.industryId eq 4 }">建筑业</c:if>
							<c:if test="${sessionScope.careerIntention.industryId eq 5 }">汽车·制造</c:if>
							<c:if test="${sessionScope.careerIntention.industryId eq 6 }">医疗·化工</c:if>
						</p>
						<p>工作地点：${workExperience.worksite}</p>
						<p>职位名称：${workExperience.positionName}</p>
						<p>
							任职时间：
							<fmt:formatDate value="${workExperience.startTime}"
								pattern="yyyy/MM/dd" />
							-
							<fmt:formatDate value="${workExperience.endTime}"
								pattern="yyyy/MM/dd" />
						</p>
						<p>下属人数：${workExperience.subordinateNumber}人</p>
						<p>工作职责：${workExperience.duty}</p>
					</div>
				</c:forEach>
			</c:if>
		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">教育经历</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<c:if test="${sessionScope.educationExperiences!=null }">
				<c:forEach items="${sessionScope.educationExperiences}"
					var="educationExperience" varStatus="num1">
					<div class="fill" style="float:left;padding-top:10.7">
						<p2>${educationExperience.schoolName }&nbsp;&nbsp;&nbsp; <fmt:formatDate
							value="${educationExperience.startTime
										}"
							pattern="yyyy/MM/dd" /> - <fmt:formatDate
							value="${educationExperience.endTime
										}"
							pattern="yyyy/MM/dd" /></p2>
						<p>专业名称：${educationExperience.majorName}</p>
						<p>学历：${educationExperience.qualification}</p>
						<p>
							是否统招：
							<c:if test="${educationExperience.isUnify eq 1}">是</c:if>
							<c:if test="${educationExperience.isUnify eq 0}">否</c:if>
						</p>
					</div>
				</c:forEach>
			</c:if>
		</div>

		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">项目经验</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<c:if test="${sessionScope.projectExperiences!=null }">
				<c:forEach items="${sessionScope.projectExperiences}"
					var="projectExperience" varStatus="num2">
					<div class="fill" style="float:left;padding-top:10.7">
						<p2>${projectExperience.projectName }&nbsp;&nbsp;&nbsp; <fmt:formatDate
							value="${projectExperience.startTime
										}"
							pattern="yyyy/MM/dd" /> - <fmt:formatDate
							value="${projectExperience.endTime
										}"
							pattern="yyyy/MM/dd" /></p2>
						<p>公司名称：${projectExperience.companyName }</p>
						<p>项目名称：${projectExperience.projectName }</p>
						<p>项目职务：${projectExperience.projectPosition }</p>
						<p>项目描述：${projectExperience.projectDescription }</p>
						<p>项目职责：${projectExperience.projectResponsibility }</p>
						<p>项目业绩：${projectExperience.projectAchievement }</p>
					</div>
				</c:forEach>
			</c:if>
		</div>

		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">自我评价</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill"
				style="width:860;max-width:860;padding-top:10.7;float:left">
				<p>${sessionScope.jobhunter.jobhunterSelfAppraisal }</p>
			</div>
		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">附加信息</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/resumeDetail/line647.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill"
				style="width:860;max-width:860;padding-top:10.7;float:left">
				<p>${sessionScope.jobhunter.jobhunterExtraMessage }</p>
			</div>
		</div>
	</div>
	<div class="framebottom" style="height:150">
		<div
			style="position:absolute;top:25;left:25;width:900px;height:100px;float:left;word-spacing:10px">
			<p
				style="margin: 0; position: absolute; top: 0; left: 0;  font-size: 14px; font-family:微软雅黑;color: #316392; font-weight: ">常用链接：</p>
			<p style="margin: 0; position: absolute; top: 0; left: 100;  ">
				<a href="#">北京</a>&nbsp;<a href="#">上海</a>&nbsp;<a href="#">广州</a>&nbsp;<a
					href="#">深圳</a>&nbsp;<a href="#">南京</a>&nbsp;<a href="#">杭州</a>&nbsp;<a
					href="#">天津</a>&nbsp;<a href="#">青岛</a>&nbsp;<a href="#">成都</a>&nbsp;<a
					href="#">重庆</a>&nbsp;<a href="#">武汉</a>&nbsp;<a href="#">厦门</a>&nbsp;<a
					href="#">郑州</a>&nbsp;<a style="color:#316392" href="#">查看更多</a>
			</p>
			<p
				style="margin: 0; position: absolute; top:40; left: 0;  font-size: 14px; font-family:微软雅黑;color: #316392; font-weight:">热门职位：</p>
			<p
				style="text-align:left;margin: 0; position: absolute; top: 40; left: 100; ">
				<a href="#">翻译</a>&nbsp;<a href="#">保险</a>&nbsp;<a href="#">销售</a>&nbsp;<a
					href="#">金融</a>&nbsp;<a href="#">银行</a>&nbsp;<a href="#">数据分析</a>&nbsp;<a
					href="#">结构工程师</a>&nbsp;<a href="#">UI设计师</a>&nbsp;<a href="#">产品</a>&nbsp;<a
					href="#">人力资源</a>&nbsp;<a href="#">律师</a>&nbsp;<a href="#">营养师</a>&nbsp;<a
					href="#">活动策划</a>&nbsp;<a href="#">网络工程师</a>&nbsp;<a href="#">物业管理</a>&nbsp;<a
					href="#">包装设计</a>&nbsp;<a href="#">运营</a>&nbsp;<a href="#">技术总监</a>&nbsp;<a
					style="color:#316392" href="#">查看更多</a>
			</p>
		</div>
		<div>
			<img
				style="position:absolute;bottom:0;left:25;width:900;height:1;float:left"
				src="${pageContext.request.contextPath}/images/resume/resumeDetail/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/resume/resumeDetail/phone.png"
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
				src="${pageContext.request.contextPath}/images/resume/resumeDetail/line.png"
				width="900" height="1" alt="" />
		</div>
		<div style="padding-top:20;">
			<p style="font-size:10">Copyright©2016 zero.com All Rights
				Reserved.</p>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/resume/resumeDetail.js"></script>
</body>
</html>
