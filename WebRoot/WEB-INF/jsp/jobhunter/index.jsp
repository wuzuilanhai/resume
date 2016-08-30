<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href="${pageContext.request.contextPath}/css/jobhunterRegister/index.css"
	type="text/css"></link>
</head>

<body>
	<div style="z-index:101" id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/jobhunterRegister/index/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/top.png"
				alt="" width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>

	<div class="framehead" style="position:fixed;z-index:100;display:">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"> <img
					src="${pageContext.request.contextPath}/images/index/dhh/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/index/dhh/mainpage22.png',0)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/mainpage3.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>

			<div class="buttontop" style="left:282">
				<a href="${pageContext.request.contextPath}/job/findAllJobs.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/index/dhh/job22.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/job_b.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/showResume.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/index/dhh/resume22.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/resume.png"
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

		<div class="framemid" style="height:450;">
			<div class="banner" style="position:relative;">
				<ul class="banList" style="position: absolute;margin:0px">
					<li class="active" style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/banner1.png"
						alt="" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/banner2.png"
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
				value="输入职业关键字：如 销售总监"
				onmouseover="this.style.borderColor='#3d7d52'"
				onmouseout="this.style.borderColor=''"
				onFocus="if (value =='输入职业关键字：如 销售总监'){value =''}"
				onBlur="if (value ==''){value='输入职业关键字：如 销售总监'}"
				style="position:absolute;left:15;top:0;float:left;width:350px; height:50px;" />
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('search1','','${pageContext.request.contextPath}/images/jobhunterRegister/index/search2.png',1)"><img
				style="position:absolute;top:0;left:375;width:100px;height:50px;float:left;"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/search.png"
				alt="" width="100" height="50" id="search1"> </a>
			<div
				style="position:absolute;float:right;right:15;width:450;word-spacing:10px">
				<p>
					<p2>热门搜索：</p2>
					<br /> <a href="javascript:void(0)">Java</a>&nbsp;<a
						href="javascript:void(0)">产品经理</a>&nbsp;<a
						href="javascript:void(0)">室内设计师</a>&nbsp;<a
						href="javascript:void(0)">保险</a>&nbsp;<a href="javascript:void(0)">PHP</a>&nbsp;<a
						href="javascript:void(0)">UI设计师</a>&nbsp;<a
						href="javascript:void(0)">腾讯</a>&nbsp;<a href="javascript:void(0)">网易</a>
				</p>
			</div>
		</div>



		<div class="framemid">
			<div class="type" style="margin-left:15">
				<a href="javascript:void(0)"
					onclick="document.getElementById('1F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('internet','','${pageContext.request.contextPath}/images/jobhunterRegister/index/internet22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/internet.png"
					width="140" height="84" id="internet"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('2F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('finance','','${pageContext.request.contextPath}/images/jobhunterRegister/index/finance22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/finance.png"
					alt="" width="140" height="84" id="finance"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('3F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('consume','','${pageContext.request.contextPath}/images/jobhunterRegister/index/consume22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/consume.png"
					alt="" width="140" height="84" id="consume"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('4F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('construction','','${pageContext.request.contextPath}/images/jobhunterRegister/index/construction22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/construction.png"
					alt="" width="140" height="84" id="construction"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('5F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('car','','${pageContext.request.contextPath}/images/jobhunterRegister/index/car22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/car.png"
					alt="" width="140" height="84" id="car"> </a>
			</div>
			<div class="type">
				<a href="javascript:void(0)"
					onclick="document.getElementById('6F').scrollIntoView();"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('medical','','${pageContext.request.contextPath}/images/jobhunterRegister/index/medical22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/medical.png"
					alt="" width="140" height="84" id="medical"> </a>
			</div>
		</div>
		<div class="frameleft">
			<div class="div_left">
				<div class="fill_title_left">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">热门职位</h2>
					</div>
					<div style="position:absolute;top:50;left:0;width:615;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="615" height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms1 }" var="jobCustom"
					varStatus="num">
					<div class="fill_left"
						style="padding-top:10;padding-left:200;width:405;">
						<a href="javascript:void(0)"><img
							style="position:absolute;left:10;top:30;width:160;height:80;"
							src="${jobCustom.uploadLocation }${jobCustom.uploadName }" alt="" />
						</a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom.jobId}">${jobCustom.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom.jobId}">${jobCustom.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom.jobSalary}元<br />
							所在地：${jobCustom.companyLocation}<br />
							行业：${jobCustom.industryName}
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
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">热门企业</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:214;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="214" height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms2 }" var="jobCustom2"
					varStatus="num2">
					<div class="fill_right"
						style="padding-top:10.7;Soverflow:hidden;white-space:nowrap;text-overflow:ellipsis;">
						<p2> <a style="color:#3d7d52"
							href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom2.jobId}">${jobCustom2.companyName}</a>
						· <a style="color:#3d7d52"
							href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom2.jobId}">${jobCustom2.jobName}</a>
						</p2>
						<p>
							<a href="javascript:void(0)">${jobCustom2.companyLocation}</a> -
							<a href="javascript:void(0)">${jobCustom2.industryName}</a>
						</p>
					</div>

				</c:forEach>


				<div class="fill_right">
					<a href="${pageContext.request.contextPath}/job/findAllJobs.action ">
						<p style="color:3d7d52;text-align:right">查看更多</p> </a>
				</div>
			</div>
		</div>

		<div id="1F" id="1F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">互联网·IT</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a style="color:#3d7d52" href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter"> </a>
						<p style="margin-left:30">进入互联网·IT专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.jobCustoms3 }" var="jobCustom3"
					varStatus="num3">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom3.uploadLocation }${jobCustom3.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom3.jobId}">${jobCustom3.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom3.jobId}">${jobCustom3.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom3.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom3.industryName}</a> <br />地址：${jobCustom3.companyLocation}
							${jobCustom3.worksite}
						</p>
					</div>

				</c:forEach>
			</div>
		</div>

		<div name="2F" id="2F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">金融业</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter2','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter2"> </a>
						<p style="margin-left:30">进入金融业专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>
				<c:forEach items="${sessionScope.jobCustoms4 }" var="jobCustom4"
					varStatus="num4">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom4.uploadLocation }${jobCustom4.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom4.jobId}">${jobCustom4.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom4.jobId}">${jobCustom4.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom4.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom4.industryName}</a><br />
							地址：${jobCustom4.companyLocation} ${jobCustom4.worksite}
						</p>
					</div>

				</c:forEach>
			</div>
		</div>

		<div name="3F" id="3F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">消费品</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter3','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter3"> </a>
						<p style="margin-left:30">进入消费品专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms5 }" var="jobCustom5"
					varStatus="num5">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom5.uploadLocation }${jobCustom5.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom5.jobId}">${jobCustom5.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom5.jobId}">${jobCustom5.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom5.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom5.industryName}</a><br />
							地址：${jobCustom5.companyLocation} ${jobCustom5.worksite}
						</p>
					</div>

				</c:forEach>
			</div>
		</div>

		<div name="4F" id="4F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">建筑业</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter4','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter4"> </a>
						<p style="margin-left:30">进入建筑业专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms6 }" var="jobCustom6"
					varStatus="num6">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom6.uploadLocation }${jobCustom6.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom6.jobId}">${jobCustom6.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom6.jobId}">${jobCustom6.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom6.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom6.industryName}</a><br />
							地址：${jobCustom6.companyLocation} ${jobCustom6.worksite}
						</p>
					</div>

				</c:forEach>
			</div>
		</div>

		<div name="5F" id="5F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">汽车·制造</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter5','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter5"> </a>
						<p style="margin-left:30">进入汽车·制造专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms7 }" var="jobCustom7"
					varStatus="num7">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom7.uploadLocation }${jobCustom7.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom7.jobId}">${jobCustom7.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom7.jobId}">${jobCustom7.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom7.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom7.industryName}</a><br />
							地址：${jobCustom7.companyLocation} ${jobCustom7.worksite}
						</p>
					</div>

				</c:forEach>
			</div>
		</div>

		<div name="6F" id="6F" class="framemid">
			<div class="div_mid">
				<div class="fill_title_mid">
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">医疗·化工</h2>
					</div>
					<div style="position:absolute;top:10;width:150;height:30;right:0">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter6','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							style="position:absolute;top:3"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter6"> </a>
						<p style="margin-left:30">进入医疗·化工专区</p>
					</div>
					<div style="position:absolute;top:50;left:0;width:900;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
							width="900 " height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.jobCustoms8 }" var="jobCustom8"
					varStatus="num8">
					<div class="fill_mid" style="padding-top:10;">
						<a href="javascript:void(0)"><img
							style="position:absolute;right:0;top:30;width:160;height:80;"
							src="${jobCustom8.uploadLocation }${jobCustom8.uploadName }"
							alt="" /> </a>
						<h1>
							<a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${jobCustom8.jobId}">${jobCustom8.companyName}</a>
							· <a style="color:#3d7d52"
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom8.jobId}">${jobCustom8.jobName}</a>
						</h1>
						<p>
							月薪：${jobCustom8.jobSalary}元<br /> 行业：<a
								href="javascript:void(0)">${jobCustom8.industryName}</a><br />
							地址：${jobCustom8.companyLocation} ${jobCustom8.worksite}
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
				style="margin: 0; position: absolute; top: 0; left: 0;  font-size: 14px; font-family:微软雅黑;color: #3d7d52; font-weight: ">常用链接：</p>
			<p style="margin: 0; position: absolute; top: 0; left: 100;  ">
				<a href="javascript:void(0)">北京</a>&nbsp;<a
					href="javascript:void(0)">上海</a>&nbsp;<a href="javascript:void(0)">广州</a>&nbsp;<a
					href="javascript:void(0)">深圳</a>&nbsp;<a href="javascript:void(0)">南京</a>&nbsp;<a
					href="javascript:void(0)">杭州</a>&nbsp;<a href="javascript:void(0)">天津</a>&nbsp;<a
					href="javascript:void(0)">青岛</a>&nbsp;<a href="javascript:void(0)">成都</a>&nbsp;<a
					href="javascript:void(0)">重庆</a>&nbsp;<a href="javascript:void(0)">武汉</a>&nbsp;<a
					href="javascript:void(0)">厦门</a>&nbsp;<a href="javascript:void(0)">郑州</a>&nbsp;<a
					style="color:javascript:void(0)3d7d42" href="javascript:void(0)">查看更多</a>
			</p>
			<p
				style="margin: 0; position: absolute; top:40; left: 0;  font-size: 14px; font-family:微软雅黑;color: javascript:void(0)3d7d52; font-weight:">热门职位：</p>
			<p
				style="text-align:left;margin: 0; position: absolute; top: 40; left: 100; ">
				<a href="javascript:void(0)">翻译</a>&nbsp;<a
					href="javascript:void(0)">保险</a>&nbsp;<a href="javascript:void(0)">销售</a>&nbsp;<a
					href="javascript:void(0)">金融</a>&nbsp;<a href="javascript:void(0)">银行</a>&nbsp;<a
					href="javascript:void(0)">数据分析</a>&nbsp;<a
					href="javascript:void(0)">结构工程师</a>&nbsp;<a
					href="javascript:void(0)">UI设计师</a>&nbsp;<a
					href="javascript:void(0)">产品</a>&nbsp;<a href="javascript:void(0)">人力资源</a>&nbsp;<a
					href="javascript:void(0)">律师</a>&nbsp;<a href="javascript:void(0)">营养师</a>&nbsp;<a
					href="javascript:void(0)">活动策划</a>&nbsp;<a
					href="javascript:void(0)">网络工程师</a>&nbsp;<a
					href="javascript:void(0)">物业管理</a>&nbsp;<a
					href="javascript:void(0)">包装设计</a>&nbsp;<a
					href="javascript:void(0)">运营</a>&nbsp;<a href="javascript:void(0)">技术总监</a>&nbsp;<a
					style="color:javascript:void(0)3d7d42" href="javascript:void(0)">查看更多</a>
			</p>
		</div>
		<div>
			<img
				style="position:absolute;bottom:0;left:25;width:900;height:1;float:left"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/phone.png"
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
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
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
		src="${pageContext.request.contextPath}/js/jobhunterRegister/index.js"></script>
</body>
</html>
