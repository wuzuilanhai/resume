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

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/companyRegister/index/def.css"
	type="text/css"></link>
</head>

<body>
	<div id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/companyRegister/index/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/companyRegister/index/top.png"
				alt="" width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/index/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/mainpage3.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a
					href="${pageContext.request.contextPath}/company/companyManage.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/resume/resumeDetail/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/findAllResumes.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/companyRegister/index/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="../求职者登录/Untitled-1.html">登录</a>/<a
					href="../求职者注册/Untitled-1.html">注册</a>
			</div>
			<div style="position:absolute;right:10;top:10;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('person','','${pageContext.request.contextPath}/images/companyRegister/index/person2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/person.jpg"
					alt="" width="80" height="30" id="person"> </a>
			</div>
		</div>
	</div>
	<div class="framemain" style="position:relative;z-index:99;">
		<div class="framemid" style="height:450;">
			<div class="banner" style="position:relative;">
				<ul class="banList" style="position: absolute;margin:0px">
					<li class="active" style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/companyRegister/index/banner1.png"
						alt="" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/companyRegister/index/banner2.png"
						alt="" />
					</li>
				</ul>
				<div class="fomW"
					style="position:absolute;bottom:20px;width:950px;height:20px;z-index:11">
					<div class="jsNav">
						<a href="javascript:;" class="trigger current"></a> <a
							href="javascript:;" class="trigger"></a>
					</div>
				</div>
			</div>
		</div>
		<div class="framemid" style="height:50;">
			<input class="form-control" name="textfield" type="text" id="search"
				value="输入职位、公司等关键字：如 设计总监"
				onmouseover="this.style.borderColor='#316392'"
				onmouseout="this.style.borderColor=''"
				onFocus="if (value =='输入职位、公司等关键字：如 设计总监'){value =''}"
				onBlur="if (value ==''){value='输入职位、公司等关键字：如 设计总监'}"
				style="position:absolute;left:15;top:0;float:left;width:350px; height:50px;" />
			<a href="#" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('search1','','${pageContext.request.contextPath}/images/companyRegister/index/search2.png',1)"><img
				style="position:absolute;top:0;left:375;width:100px;height:50px;float:left;"
				src="${pageContext.request.contextPath}/images/companyRegister/index/search.png"
				alt="" width="100" height="50" id="search1"> </a>
			<div
				style="position:absolute;float:right;right:15;width:450;word-spacing:10px">
				<p>
					<p2>热门搜索：</p2>
					<br /> <a href="#">Java</a>&nbsp;<a href="#">产品经理</a>&nbsp;<a
						href="#">室内设计师</a>&nbsp;<a href="#">保险</a>&nbsp;<a href="#">PHP</a>&nbsp;<a
						href="#">UI设计师</a>&nbsp;<a href="#">腾讯</a>&nbsp;<a href="#">网易</a>
				</p>
			</div>
		</div>
		<div class="framemid">
			<div class="type" style="margin-left:15">
				<a href="javascript:void(0)"
					onclick="document.getElementById('1F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('internet','','${pageContext.request.contextPath}/images/companyRegister/index/internet2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/internet.png"
					alt="" width="140" height="84" id="internet"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('2F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('finance','','${pageContext.request.contextPath}/images/companyRegister/index/finance2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/finance.png"
					alt="" width="140" height="84" id="finance"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('3F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('consume','','${pageContext.request.contextPath}/images/companyRegister/index/consume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/consume.png"
					alt="" width="140" height="84" id="consume"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('4F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('construction','','${pageContext.request.contextPath}/images/companyRegister/index/construction2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/construction.png"
					alt="" width="140" height="84" id="construction"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('5F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('car','','${pageContext.request.contextPath}/images/companyRegister/index/car2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/car.png"
					alt="" width="140" height="84" id="car"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('6F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('medical','','${pageContext.request.contextPath}/images/companyRegister/index/medical2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/index/medical.png"
					alt="" width="140" height="84" id="medical"> </a>
			</div>
		</div>
		<div class="frameleft">
			<div class="div_left">
				<div class="fill_title_left">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">热门简历</h2>
					</div>
					<div style="position:absolute;top:50;left:0;width:615;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="615" height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms1 }" var="resume"
					varStatus="num">
					<div class="fill_left"
						style="padding-top:10;padding-left:140;width:405;">
						<a href="#"><img style="position:absolute;left:10;top:23;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a style="color:#316392"
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}">${resume.jobhunterRealName
								}</a>
						</h1>
						<p>
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="frameright">
			<div class="div_right" style="position:relative;">
				<div class="fill_title_right">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">精英人才</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:214;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="214" height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms2 }" var="resume"
					varStatus="num2">
					<div class="fill_right"
						style="padding-top:10.7;Soverflow:hidden;white-space:nowrap;text-overflow:ellipsis;">
						<p2> <a style="color:#316392"
							href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}">${resume.jobhunterRealName
							}</a> </p2>
						<p>学历：${resume.jobhunterQualification }</p>
						<p>目前状态：${resume.jobhuntEntranceStatus }</p>
					</div>
				</c:forEach>
			</div>

		</div>
		<div id="1F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">互联网·IT</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter1','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter1"> </a>
						<p style="margin-left:30">搜索更多互联网·IT人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms3 }" var="resume"
					varStatus="num3">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="2F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">金融业</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter2','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter2"> </a>
						<p style="margin-left:30">搜索更金融业人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms4 }" var="resume"
					varStatus="num4">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="3F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">消费品</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter3','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter3"> </a>
						<p style="margin-left:30">搜索更消费品业人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms5 }" var="resume"
					varStatus="num5">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="4F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">建筑业</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter4','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter4"> </a>
						<p style="margin-left:30">搜索更多建筑业人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms6 }" var="resume"
					varStatus="num6">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="5F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">汽车·制造</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter5','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter5"> </a>
						<p style="margin-left:30">搜索更多汽车·制造人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms7 }" var="resume"
					varStatus="num7">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="6F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">医疗·化工</h2>
					</div>
					<div style="position:absolute;top:10;width:180;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter6','','${pageContext.request.contextPath}/images/companyRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/companyRegister/index/enter.png"
							alt="" width="20" height="20" id="enter6"> </a>
						<p style="margin-left:30">搜索更多医疗·化工人才</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.resumeCustoms8 }" var="resume"
					varStatus="num8">
					<div class="fill_mid" style="padding-top:10;">
						<a href="#"><img style="position:absolute;right:30;top:18;"
							src="${resume.uploadLocation }${resume.uploadName }" width="100"
							height="100" alt="" /> </a>
						<h1>
							<a
								href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"
								style="color:#316392">${resume.jobhunterRealName }</a>
						</h1>
						<p style="word-spacing:10px">
							学历：${resume.jobhunterQualification }<br />
							所在地：${resume.jobhunterAddress }<br />
							目前状态：${resume.jobhuntEntranceStatus }
						</p>
					</div>
				</c:forEach>
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
				src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/companyRegister/index/phone.png"
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
				src="${pageContext.request.contextPath}/images/companyRegister/index/line.png"
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
		src="${pageContext.request.contextPath}/js/jquery.banner.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/companyRegister/index.js"></script>
</body>
</html>
