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

<title>简历首站</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index/index.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index/drag.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/index/drag2.css"
	type="text/css"></link>
</head>

<body>
	<div class="framehead" style="position:fixed;z-index:100;display:"
		id="framehead1">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="javascrpt:void(0)"> <img
					src="${pageContext.request.contextPath}/images/index/dhh/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/index/dhh/mainpage22.png',0)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/mainpage.png"
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
				<c:if test="${sessionScope.company==null}">
					<div
						style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
						<a href="javascript:void(0)">登录</a>/<a
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
				<c:if test="${sessionScope.company!=null}">
					<div
						style="position: absolute; float: left; width: 200; height: 16; right:63; top: 17px;text-align:right;">
						<a
							href="${pageContext.request.contextPath}/company/companyManage.action">${sessionScope.company.companyName}</a>,<a
							href="javascript:void(0)" id="logoutBtnForCompany1">注销</a>
					</div>
					<div
						style="padding-top:5;padding-bottom:5;position:absolute;right:10;width:40;height:40;float:left">
						<a href="javascript:void(0)"><img style="margin-top:10;"
							src="${sessionScope.jobhunterUploadForCompany.uploadLocation}${sessionScope.jobhunterUploadForCompany.uploadName}"
							alt="" width="40" height="20" id="business"> </a>
					</div>
				</c:if>
			</c:if>
			<c:if test="${sessionScope.jobhunter!=null}">
				<div
					style="position: absolute; float: left; width: 200; height: 16; right:63; top: 17px;text-align:right;">
					<a
						href="${pageContext.request.contextPath}/resume/showResume.action">${sessionScope.jobhunter.jobhunterName}</a>,<a
						href="javascript:void(0)" id="logoutBtn1">注销</a>
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

	<div class="framehead" style="position:fixed;z-index:100;display:NONE"
		id="framehead2">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="javascrpt:void(0)"> <img
					src="${pageContext.request.contextPath}/images/index/dhh/logo_b.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a href="${pageContext.request.contextPath}/company/index.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage2','','${pageContext.request.contextPath}/images/index/dhh/mainpage2_b.png',0)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/mainpage_b.png"
					alt="" width="100" height="50" id="mainpage2"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a
					href="${pageContext.request.contextPath}/company/companyManage.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job2','','${pageContext.request.contextPath}/images/index/dhh/job2_b.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/job_b.png"
					alt="" width="100" height="50" id="job2"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/findAllResumes.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume2','','${pageContext.request.contextPath}/images/index/dhh/resume2_b.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/resume_b.png"
					alt="" width="100" height="50" id="resume2"> </a>
			</div>
			<c:if test="${sessionScope.jobhunter==null}">
				<c:if test="${sessionScope.company==null}">
					<div
						style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
						<a href="javascript:void(0)">登录</a>/<a
							href="${pageContext.request.contextPath}/company/registerUI.action">注册</a>
					</div>
					<div style="position:absolute;right:10;top:10;">
						<a href="${pageContext.request.contextPath}/company/index.action"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/index/dhh/business2.png',1)"><img
							src="${pageContext.request.contextPath}/images/index/dhh/business.png"
							alt="" width="80" height="30" id="business"> </a>
					</div>
				</c:if>
				<c:if test="${sessionScope.company!=null}">
					<div
						style="position: absolute; float: left; width: 200; height: 16; right:63; top: 17px;text-align:right;">
						<a
							href="${pageContext.request.contextPath}/company/companyManage.action">${sessionScope.company.companyName}</a>,<a
							href="javascript:void(0)" id="logoutBtnForCompany2">注销</a>
					</div>
					<div
						style="padding-top:5;padding-bottom:5;position:absolute;right:10;width:40;height:40;float:left">
						<a href="javascript:void(0)"><img style="margin-top:10;"
							src="${sessionScope.jobhunterUploadForCompany.uploadLocation}${sessionScope.jobhunterUploadForCompany.uploadName}"
							alt="" width="40" height="20" id="business"> </a>
					</div>
				</c:if>
			</c:if>
			<c:if test="${sessionScope.jobhunter!=null}">
				<div
					style="position: absolute; float: left; width: 200; height: 16; right:63; top: 17px;text-align:right;">
					<a
						href="${pageContext.request.contextPath}/resume/showResume.action">${sessionScope.jobhunter.jobhunterName}</a>,<a
						href="javascript:void(0)" id="logoutBtn2">注销</a>
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
		<div class="framemid " style="position:relative;display: true"
			id="framemid_hunter">
			<div class="banner" style="position:relative;padding:0;">
				<ul class="banList" style="position: absolute;margin:0px">
					<li class="active"
						style="position: absolute; left: 0; top: 0;padding:0px"><img
						src="${pageContext.request.contextPath}/images/index/banner1.png" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/index/banner2.png" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/index/banner3.png" />
					</li>
				</ul>

				<div class="fomW"
					style="position:absolute;bottom:20px;width:950px;height:20px;z-index:11">
					<div class="jsNav">
						<a href="javascript:;" class="trigger current"></a> <a
							href="javascript:;" class="trigger"></a> <a href="javascript:;"
							class="trigger"></a>
					</div>
				</div>
			</div>

			<div id="div_login_hunter"
				style="z-index:10;position:absolute;float:left;width:150px;height:50px;top:25px;right:175px;">

				<img
					src="${pageContext.request.contextPath}/images/index/hunter_login.png"
					alt="" width="150" height="50" id="hunter_login">
			</div>
			<div id="div_login_business"
				style="z-index:10;position:absolute;float:left;width:150px;height:50px;top:25px;right:25px;">
				<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business_login','','${pageContext.request.contextPath}/images/index/business_login2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/business_login.png"
					alt="" width="150" height="50" id="business_login"> </a>
			</div>
			<div
				style="z-index:10;position:absolute;float:left;width:300px;height:350px;bottom:25px;right:25px;">
				<img style="filter:alpha(Opacity=60);opacity:0.6;float:left;"
					src="${pageContext.request.contextPath}/images/index/loginframe.png"
					width="300" height="350" alt="" />
				<div class="textstyle"
					style="position: absolute; float: left; width: 80px; height: 20px; top:40px; left: 50px;color:white ">
					登录个人账号</div>
				<form id="form1"
					action="${pageContext.request.contextPath}/jobHunter/findJobHunterLogin.action"
					method="post">
					<div
						style="position: absolute; float: left; width: 300px; height: 25px; top:70px; left: 0px;">
						<input class="form-control" name="jobhunterName" type="text"
							id="textfield" onmouseover="this.style.borderColor='#3d7d52'"
							onmouseout="this.style.borderColor=''" placeHolder="用户名"
							style="position: absolute; float: left;top:0px; left: 50px;width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #6b6b6b;" />
						<div style="position:absolute;top:26;left:55;"
							id="jobhunterNameTip"></div>
					</div>

					<div
						style="position: absolute; float: left; width: 300px; height: 25px; top:115px; left:0px;">
						<input class="form-control" name="jobhunterPassword"
							type="password" id="textfield"
							onmouseover="this.style.borderColor='#3d7d52'"
							onmouseout="this.style.borderColor=''" placeHolder="密码"
							style="position: absolute; float: left;top:0px; left: 50px;width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #6b6b6b;" />
						<div style="position:absolute;top:26;left:55;"
							id="jobhunterPasswordTip"></div>
					</div>

					<div id="drag"
						style="position: absolute; float: left; width: 200px;top:160px;left: 50px;"></div>


					<div id="findJobHunterBtn"
						style="position: absolute; float: left; width: 200px; height: 30px; top:210px; left: 50px;">
						<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/index/login2.png',1)"><img
							src="${pageContext.request.contextPath}/images/index/login.png"
							alt="" width="200" height="30" id="login"> </a>
					</div>
				</form>
				<div class="textstyle"
					style="position: absolute; float: left; width: 100px; height: 20px; top:250px; left: 50px;color:white">
					其他登录方式：</div>
				<div
					style="position: absolute; float: left; width: 165px; height: 20px; top:275px; left: 67.5px;">
					<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('qq2','','${pageContext.request.contextPath}/images/index/QQ2.png',1)"><img
						style="position:absolute;left:0px;"
						src="${pageContext.request.contextPath}/images/index/QQ.png"
						alt="" width="25" height="25" id="qq2"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('sina2','','${pageContext.request.contextPath}/images/index/sina2.png',1)"><img
						style="position:absolute;left:35px;"
						src="${pageContext.request.contextPath}/images/index/sina.png"
						alt="" width="25" height="25" id="sina2"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('facebook2','','${pageContext.request.contextPath}/images/index/facebook2.png',1)"><img
						style="position:absolute;left:70px;"
						src="${pageContext.request.contextPath}/images/index/facebook.png"
						alt="" width="25" height="25" id="facebook2"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('weixin2','','${pageContext.request.contextPath}/images/index/weixin2.png',1)"><img
						style="position:absolute;left:105px;"
						src="${pageContext.request.contextPath}/images/index/weixin.png"
						alt="" width="25" height="25" id="weixin2"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('renren2','','${pageContext.request.contextPath}/images/index/renren2.png',1)"><img
						style="position:absolute;left:140px;"
						src="${pageContext.request.contextPath}/images/index/renren.png"
						alt="" width="25" height="25" id="renren2"> </a>
				</div>
			</div>
		</div>

		<div class="framemid " style="position:relative;display: none"
			id="framemid_business">
			<div class="banner" style="position:relative;padding:0;">
				<ul class="banList" style="position: absolute;margin:0px">
					<li class="active"
						style="position: absolute; left: 0; top: 0;padding:0px"><img
						src="${pageContext.request.contextPath}/images/index/banner4.png" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/index/banner5.png" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/index/banner6.png" />
					</li>
					<li style="position: absolute; left: 0; top: 0;"><img
						src="${pageContext.request.contextPath}/images/index/banner7.png" />
					</li>
				</ul>

				<div class="fomW"
					style="position:absolute;bottom:20px;width:950px;height:20px;z-index:11">
					<div class="jsNav">
						<a href="javascript:;" class="trigger current"></a> <a
							href="javascript:;" class="trigger"></a> <a href="javascript:;"
							class="trigger"></a> <a href="javascript:;" class="trigger"></a>
					</div>
				</div>
			</div>

			<div id="div_login_hunter"
				style="z-index:10;position:absolute;float:left;width:150px;height:50px;top:25px;right:175px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('hunter_login2','','${pageContext.request.contextPath}/images/index/dhh/hunter_login2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/hunter_login.png"
					alt="" width="150" height="50" id="hunter_login2"> </a>
			</div>
			<div id="div_login_business"
				style="z-index:10;position:absolute;float:left;width:150px;height:50px;top:25px;right:25px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business_login','','${pageContext.request.contextPath}/images/index/dhh/business_login2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/dhh/business_login.png"
					alt="" width="150" height="50" id="business_login"> </a>
			</div>

			<div
				style="z-index:10;position:absolute;float:left;width:300px;height:350px;bottom:25px;right:25px;">
				<img style="filter:alpha(Opacity=60);opacity:0.6;float:left;"
					src="${pageContext.request.contextPath}/images/index/dhh/loginframe.png"
					width="300" height="350" alt="" />
				<div class="textstyle"
					style="position: absolute; float: left; width: 80px; height: 20px; top:40px; left: 50px;color:white ">
					登录企业账号</div>
				<form id="form2"
					action="${pageContext.request.contextPath}/company/findCompanyLogin.action"
					method="post">
					<div
						style="position: absolute; float: left; width: 300px; height: 25px; top:70px; left: 0px;">
						<input class="form-control" name="companyLoginName" type="text"
							id="companyLoginName"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''" placeHolder="用户名"
							style="position: absolute; float: left;top:0;  left:50;width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #6b6b6b;" />
						<div style="position:absolute;top:26;left:55;"
							id="companyLoginNameTip"></div>
					</div>
					<div
						style="position: absolute; float: left; width: 300px; height: 25px; top:115px; left: 0px;">
						<input class="form-control" name="companyPassword" type="password"
							id="companyPassword"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''" placeHolder="密码"
							style="position: absolute; float: left;top:0; left:50;width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #6b6b6b;" />
						<div style="position:absolute;top:26;left:55;"
							id="companyPasswordTip"></div>
					</div>
					<div id="drag2"
						style="position: absolute; float: left; width: 200px;top:160px;left: 50px;"></div>

					<div id="findCompanyBtn"
						style="position: absolute; float: left; width: 200px; height: 30px; top:210px; left: 50px;">
						<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/index/dhh/login2.png',1)"><img
							src="${pageContext.request.contextPath}/images/index/dhh/login.png"
							alt="" width="200" height="30" id="login"> </a>
					</div>
				</form>
				<div class="textstyle"
					style="position: absolute; float: left; width: 100px; height: 20px; top:250px; left: 50px;color:white">
					其他登录方式：</div>
				<div
					style="position: absolute; float: left; width: 165px; height: 20px; top:275px; left: 67.5px;">
					<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('qq','','${pageContext.request.contextPath}/images/index/dhh/QQ2.png',1)"><img
						style="position:absolute;left:0px;"
						src="${pageContext.request.contextPath}/images/index/dhh/QQ.png"
						alt="" width="25" height="25" id="qq"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('sina','','${pageContext.request.contextPath}/images/index/dhh/sina2.png',1)"><img
						style="position:absolute;left:35px;"
						src="${pageContext.request.contextPath}/images/index/dhh/sina.png"
						alt="" width="25" height="25" id="sina"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('facebook','','${pageContext.request.contextPath}/images/index/dhh/facebook2.png',1)"><img
						style="position:absolute;left:70px;"
						src="${pageContext.request.contextPath}/images/index/dhh/facebook.png"
						alt="" width="25" height="25" id="facebook"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('weixin','','${pageContext.request.contextPath}/images/index/dhh/weixin2.png',1)"><img
						style="position:absolute;left:105px;"
						src="${pageContext.request.contextPath}/images/index/dhh/weixin.png"
						alt="" width="25" height="25" id="weixin"> </a> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('renren','','${pageContext.request.contextPath}/images/index/dhh/renren2.png',1)"><img
						style="position:absolute;left:140px;"
						src="${pageContext.request.contextPath}/images/index/dhh/renren.png"
						alt="" width="25" height="25" id="renren"> </a>
				</div>
			</div>
		</div>
	</div>
	<div class="framebottom" id="framebottom1">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/index/dhh/phone_j.png"
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

	<div class="framebottom" id="framebottom2" style="display:none">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/index/dhh/phone_b.png"
				width="50" height="50" alt="" />
			<p style="position:absolute;bottom:40;width:190;font-size:12;">
				服务热线<br /> 400-6838-789<br /> 工作日 9:00-19:00
			</p>
		</div>
		<div class="fill_bottom" style="left:190px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h3 style="font-size:14">简介</h3>
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
				<h3 style="font-size:14">栏目</h3>
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
				<h3 style="font-size:14">导航</h3>
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
				<h3 style="font-size:14">帮助</h3>
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
				src="${pageContext.request.contextPath}/images/index/dhh/line.png"
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
		src="${pageContext.request.contextPath}/js/index/index.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/index/drag.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/index/drag2.js"></script>
	<script>
		$('#drag').drag();
		$('#drag2').drag2();
	</script>
</body>
</html>
