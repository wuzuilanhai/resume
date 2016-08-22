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

<title>My JSP 'companyManage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/companyRegister/default.css"
	type="text/css"></link>
</head>

<body>
	<div id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/companyRegister/manage/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/companyRegister/manage/top.png"
				alt="" width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/logo.png"
					width="132" height="50" alt="" />
			</div>
			<div class="buttontop" style="left:182;">
				<a href="Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/manage/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a href="../职位页/Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/companyRegister/manage/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/job3.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div
				style="position: absolute; float: left; width: 200; height: 16; right:10; top: 17px;">
				<a href="#"> 企业管理</a>&nbsp;&nbsp;&nbsp;<a href="#">退出</a>
			</div>
			<div class="mask2"
				style="position:absolute;right:10;top:5;width:40;height:40;float:left">
				<img style="margin-top:10;"
					src="${pageContext.request.contextPath}/images/companyRegister/manage/brand5.png"
					alt="" width="40" height="20">
			</div>
		</div>
	</div>
	<div class="framemain" style="position:relative;z-index:99;">
		<div class="frameleft" style="position:fixed;float:left">
			<div
				style="position:absolute;left:0;top:21;width:232;height:330;float:left">
				<img style="position:absolute;left:35;top:50;float:left"
					src="${pageContext.request.contextPath}/images/companyRegister/manage/brand5.png"
					width="160" height="80" alt="" />
				<div
					style="position:absolute;right:0;top:180;width:232;height:150;float:left">
					<p
						style="position:absolute;right:30;top:0;width:232;height:20;text-align:right;">
						东软科技有限公司<br /> 互联网·IT<br /> 广州市天河区揽月路8号东...<br /> 广东 - 广州<br />
						neusoft@neusoft.com<br />
					</p>
				</div>
			</div>
			<div
				style="position:absolute;right:46;top:41;width:140;height:140;float:left">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('revise','','${pageContext.request.contextPath}/images/companyRegister/manage/1.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/2.png"
					alt="" width="140" height="140" id="revise"> </a>
			</div>
			<div>
				<div id="left1"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:true">
					<a id="showFrameRight1" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('jobmanage','','${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage3.png"
						alt="" width="232" height="50" id="jobmanage"> </a><a
						id="showFrameRight2" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('resumemanage','','${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage.png"
						alt="" width="232" height="50" id="resumemanage"> </a><a
						id="showFrameRight3" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('business_info','','${pageContext.request.contextPath}/images/companyRegister/manage/business_info2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/business_info.png"
						alt="" width="232" height="50" id="business_info"> </a><a
						id="showFrameRight4" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('setting','','${pageContext.request.contextPath}/images/companyRegister/manage/setting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/setting.png"
						alt="" width="232" height="50" id="setting"> </a>
				</div>
				<div id="left2"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:none">
					<a id="showFrameRight11" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('jobmanage11','','${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage.png"
						alt="" width="232" height="50" id="jobmanage11"> </a><a
						id="showFrameRight22" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('resumemanage22','','${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage3.png"
						alt="" width="232" height="50" id="resumemanage22"> </a><a
						id="showFrameRight33" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('business_info33,'','${pageContext.request.contextPath}/images/companyRegister/manage/business_info2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/business_info.png"
						alt="" width="232" height="50" id="business_info33"> </a><a
						id="showFrameRight44" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('setting44','','${pageContext.request.contextPath}/images/companyRegister/manage/setting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/setting.png"
						alt="" width="232" height="50" id="setting44"> </a>
				</div>
				<div id="left3"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:none">
					<a id="showFrameRight111" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('jobmanage111','','${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage.png"
						alt="" width="232" height="50" id="jobmanage111"> </a><a
						id="showFrameRight222" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('resumemanage222','','${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage.png"
						alt="" width="232" height="50" id="resumemanage222"> </a><a
						id="showFrameRight333" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('business_info333','','${pageContext.request.contextPath}/images/companyRegister/manage/business_info2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/business_info3.png"
						alt="" width="232" height="50" id="business_info333"> </a><a
						id="showFrameRight444" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('setting444','','${pageContext.request.contextPath}/images/companyRegister/manage/setting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/setting.png"
						alt="" width="232" height="50" id="setting444"> </a>
				</div>
				<div id="left4"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:none">
					<a id="showFrameRight1111" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('jobmanage1111','','${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/jobmanage.png"
						alt="" width="232" height="50" id="jobmanage1111"> </a><a
						id="showFrameRight2222" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('resumemanage2222','','${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/resumemanage.png"
						alt="" width="232" height="50" id="resumemanage2222"> </a><a
						id="showFrameRight3333" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('business_info3333','','${pageContext.request.contextPath}/images/companyRegister/manage/business_info2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/business_info.png"
						alt="" width="232" height="50" id="business_info3333"> </a><a
						id="showFrameRight4444" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('setting4444','','${pageContext.request.contextPath}/images/companyRegister/manage/setting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/companyRegister/manage/setting3.png"
						alt="" width="232" height="50" id="setting4444"> </a>
				</div>
			</div>
		</div>

		<div>
			<div class="frameright" id="frameright1"
				style="position:relative;float:right;display:true">
				<div id="screen" class="div_left"
					style="margin-top:40;position:relative;height:auto;width:697">
					<div class="fill_title_left">
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">条件筛选</h2>
						</div>
						<div style="position:absolute;top:50;left:0;width:637;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>
					<div style="margin-top:15;position:relative;width:697px;height:80;">
						<a id="searchJobBtn" href="javascript:void(0)"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('search','','${pageContext.request.contextPath}/images/companyRegister/manage/search2.png',0)"><img
							style="position:absolute;right:70;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/search.png"
							alt="" width="100" height="50" id="search"> </a>
						<p
							style="position:absolute;top:5;left:30;width:70px;height:20px;font-size: 14px;">职位名称：</p>
						<form id="searchJobForm"
							action="${pageContext.request.contextPath}/job/searchJob.action"
							method="post">
							<input class="form-control" name="job.jobName" type="text"
								id="queryJobName" placeHolder="填写职位名称"
								value="${requestScope.queryJobName }"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''"
								style="position:absolute;left:120;top:5;width:150px; height:30px;" />
							<p
								style="position:absolute;top:45;left:30;width:70px;height:20px;font-size: 14px;">发布日期：</p>
							<select id="time" type="text" class="form-control" name="time"
								style="position:absolute;left:120;top:45;width:150px; height:30px;">
								<option value=4
									<c:if test="${requestScope.time eq 4 }">selected</c:if>>不限</option>
								<option value=1
									<c:if test="${requestScope.time eq 1 }">selected</c:if>>一天内</option>
								<option value=2
									<c:if test="${requestScope.time eq 2 }">selected</c:if>>一周内</option>
								<option value=3
									<c:if test="${requestScope.time eq 3 }">selected</c:if>>一月内</option>
							</select>
						</form>
						<p id="clear"
							style="display:block;position:absolute;top:50;right:60;width:100px;height:20px;">
							<a href="javascript:void(0)" id="clearBtn">清空搜索条件</a>
						</p>
					</div>
				</div>
				<div class="div_left"
					style="margin-left:93.5;margin-top:40;position:relative;height:auto;width:697">
					<div class="fill_title_left" style="margin-left:-93.5;">
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">职位管理</h2>
						</div>
						<a id="new" onClick="newjob();" style="pointer:cursor"
							href="javscript:void(0)"><h1
								style="margin:0;position:absolute;top:20;right:15;">发布新职位</h1> </a>
						<!--<div style="position:absolute;top:5;right:-130;width:192;height:30;"> <a onClick="newjob();" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('new','','${pageContext.request.contextPath}/images/companyRegister/manage/new2.png',0)"><img src="${pageContext.request.contextPath}/images/companyRegister/manage/new.png" alt="" width="60" height="40" id="new"></a> </div>-->

						<div style="position:absolute;top:50;left:0;width:637;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>
					<div id="title1"
						style="DISPLAY:none;margin-top:10;position:relative;width:450;height:50;">
						<p2 style="margin:0;position:absolute;top:13;left:30;">新建职位</p2>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(1)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-1','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
										alt="" width="30" height="30" id="fold1-1">
								</div> </a>
						</div>
					</div>
					<div id="LM1" class="jobdetail" style="DISPLAY:none;">
						<form id="addJobForm"
							action="${pageContext.request.contextPath}/job/addJob.action"
							method="post">
							<div class="fill" style="top:10">
								<p>职位名称：</p>
								<input class="form-control" name="jobName" type="text"
									id="jobName" placeHolder="填写职位名称"
									onmouseover="this.style.borderColor='#316392'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobNameTip"
									style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:60">
								<p>工作地址：</p>
								<input class="form-control" name="worksite" type="text"
									id="worksite" placeHolder="填写工作地址"
									onmouseover="this.style.borderColor='#316392'"
									onmouseout="this.style.borderColor=''" style="" />
								<div id="worksiteTip"
									style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:110">
								<p>行业分类：</p>
								<select id="profession" type="text" class="form-control"
									name="industryId" style="left:100;width:90px;">
									<option value=1>互联网·IT</option>
									<option value=2>金融业</option>
									<option value=3>快销行业</option>
									<option value=4>建筑业</option>
									<option value=5>汽车·制造</option>
									<option value=6>医疗·化工</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>职位月薪：</p>
								<input class="form-control" name="jobSalary" type="text"
									id="jobSalary" placeHolder="填写月薪（元）"
									onmouseover="this.style.borderColor='#316392'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:90px; height:30px;" />
								<div id="jobSalaryTip"
									style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:210">
								<p>投递邮箱：</p>
								<input class="form-control" name="jobEmail" type="text"
									id="jobEmail" placeHolder="填写简历接收邮箱地址"
									onmouseover="this.style.borderColor='#316392'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobEmailTip"
									style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:260">
								<p>职位描述：</p>
								<textarea class="form-control" name="jobDescription" type="text"
									id="jobDescription"
									onmouseover="this.style.borderColor='#316392'"
									placeHolder="描述职位详情（限制1000字）"
									onmouseout="this.style.borderColor=''"
									style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;"></textarea>
							</div>
							<div class="fill" style="top:380">
								<p>职位要求：</p>
								<textarea class="form-control" name="jobAcquire" type="text"
									id="jobAcquire" onmouseover="this.style.borderColor='#316392'"
									onmouseout="this.style.borderColor=''"
									placeHolder="描述职位要求（限制1000字）"
									style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;"></textarea>
							</div>
						</form>
						<div class="fill" style="padding-top:10;padding-left:100;top:500">
							<a id="addJobBtn" href="javascript:void(0)"
								onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('save1','','${pageContext.request.contextPath}/images/companyRegister/manage/save2.png',0)"><img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/save.png"
								alt="" width="60" height="40" id="save1"> </a> <a
								onClick="cancelnew();" style="pointer:cursor"
								href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('cancel','','${pageContext.request.contextPath}/images/companyRegister/manage/cancel2.png',0)"><img
								style="margin-left:75;"
								src="${pageContext.request.contextPath}/images/companyRegister/manage/cancel.png"
								alt="" width="60" height="40" id="cancel"> </a>
						</div>
					</div>
					<c:forEach items="${sessionScope.jobCustoms }" var="jobCustom"
						varStatus="num">
						<div id="title${num.count+1 }"
							style="margin-top:10;position:relative;width:450;height:50;">
							<p2 style="margin:0;position:absolute;top:13;left:30;">${jobCustom.jobName
							}</p2>
							<div
								style="position:absolute;top:50;left:25;width:400;height:1;float:left">
								<img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
									width="400" height="1" alt="" />
							</div>
							<div onClick="javascript:ShowFLT(${num.count+1 })"
								href="javascript:void(null)">
								<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('fold${num.count+1 }-1','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
									<div
										style="position:absolute;top:10;right:20;width:30;height:30;float:left">
										<img
											src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
											alt="" width="30" height="30" id="fold${num.count+1 }-1">
									</div> </a>
							</div>
						</div>
						<div id="LM${num.count+1 }" class="jobdetail"
							style="DISPLAY:block;">
							<form id="updateJobForm${num.count+1 }"
								action="${pageContext.request.contextPath}/job/updateJob.action"
								method="post">
								<input type="hidden" value="${jobCustom.jobId }" name="jobId" />
								<div class="fill" style="top:10">
									<p>职位名称：</p>
									<input class="form-control" name="jobName" type="text"
										id="jobName${num.count+1 }" value="${jobCustom.jobName }"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="jobNameTip${num.count+1 }"
										style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:60">
									<p>工作地址：</p>
									<input class="form-control" name="worksite" type="text"
										id="worksite${num.count+1 }" value="${jobCustom.worksite }"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''" style="" />
									<div id="worksiteTip${num.count+1 }"
										style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:110">
									<p>行业分类：</p>
									<select id="industryId${num.count+1 }" type="text"
										class="form-control" name="industryId"
										style="left:100;width:90px;">
										<option value=1
											<c:if test="${jobCustom.industryName=='互联网·IT'}">selected</c:if>>互联网·IT</option>
										<option value=2
											<c:if test="${jobCustom.industryName=='金融业'}">selected</c:if>>金融业</option>
										<option value=3
											<c:if test="${jobCustom.industryName=='快销行业'}">selected</c:if>>快销行业</option>
										<option value=4
											<c:if test="${jobCustom.industryName=='建筑业'}">selected</c:if>>建筑业</option>
										<option value=5
											<c:if test="${jobCustom.industryName=='汽车·制造'}">selected</c:if>>汽车·制造</option>
										<option value=6
											<c:if test="${jobCustom.industryName=='医疗·化工'}">selected</c:if>>医疗·化工</option>
									</select>
								</div>
								<div class="fill" style="top:160">
									<p>职位月薪：</p>
									<input class="form-control" name="jobSalary" type="text"
										id="jobSalary${num.count+1 }" value="${jobCustom.jobSalary}"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:90px; height:30px;" />
									<div id="jobSalaryTip${num.count+1 }"
										style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:210">
									<p>投递邮箱：</p>
									<input class="form-control" name="jobEmail" type="text"
										id="jobEmail${num.count+1 }" value="${jobCustom.jobEmail}"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="jobEmailTip${num.count+1 }"
										style="position:absolute;left:320;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:260">
									<p>职位描述：</p>
									<textarea class="form-control" name="jobDescription"
										type="text" id="jobDescription${num.count+1 }"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''"
										style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;">
${jobCustom.jobDescription }</textarea>
								</div>
								<div class="fill" style="top:380">
									<p>职位要求：</p>
									<textarea class="form-control" name="jobAcquire" type="text"
										id="jobAcquire${num.count+1 }"
										onmouseover="this.style.borderColor='#316392'"
										onmouseout="this.style.borderColor=''"
										style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;">
${jobCustom.jobAcquire }</textarea>
								</div>
							</form>
							<div class="fill" style="padding-top:10;padding-left:100;top:500">
								<a id="updateJob${num.count+1 }" href="javascript:void(0)"
									onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('save${num.count+1 }','','${pageContext.request.contextPath}/images/companyRegister/manage/save2.png',0)"><img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/save.png"
									alt="" width="60" height="40" id="save${num.count+1 }"> </a>
								<a
									href="${pageContext.request.contextPath}/job/deleteJobByJobId.action?jobId=${jobCustom.jobId }"
									onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('delete${num.count+1 }','','${pageContext.request.contextPath}/images/companyRegister/manage/delete2.png',0)"><img
									style="margin-left:75;"
									src="${pageContext.request.contextPath}/images/companyRegister/manage/delete.png"
									alt="" width="60" height="40" id="delete${num.count+1 }">
								</a>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="frameright" id="frameright2"
				style="position:relative;float:right;display:none">
				<div class="div_left"
					style="margin-top:40;position:relative;height:auto;width:697">
					<div class="fill_title_left">
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">条件筛选</h2>
						</div>
						<div style="position:absolute;top:50;left:0;width:637;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>
					<div
						style="margin-top:15;position:relative;width:697px;height:320;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('search','','${pageContext.request.contextPath}/images/companyRegister/manage/search2.png',0)"><img
							style="position:absolute;right:70;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/search.png"
							alt="" width="100" height="50" id="search"> </a>
						<p
							style="position:absolute;top:5;left:30;width:70px;height:20px;font-size: 14px;">应聘职位：</p>
						<select id="jobselect" type="text" class="form-control"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:120;top:5;width:150px; height:30px;">
							<option>不限</option>
							<option>PHP工程师</option>
							<option>Java工程师</option>
						</select>
						<p
							style="position:absolute;top:45;left:30;width:70px;height:20px;font-size: 14px;">姓名：</p>
						<input class="form-control" name="textfield" type="text" id="name"
							value="填写求职者姓名" onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写求职者姓名'){value =''}"
							onBlur="if (value ==''){value='填写求职者姓名'}"
							style="position:absolute;left:120;top:45;width:150px; height:30px;" />
						<p
							style="position:absolute;top:85;left:30;width:70px;height:20px;font-size: 14px;">目前就职：</p>
						<input class="form-control" name="textfield" type="text"
							id="jobname" value="填写目前就职岗位名称"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写目前就职岗位名称'){value =''}"
							onBlur="if (value ==''){value='填写目前就职岗位名称'}"
							style="position:absolute;left:120;top:85;width:150px; height:30px;" />
						<p
							style="position:absolute;top:125;left:30;width:70px;height:20px;font-size: 14px;">就职公司：</p>
						<input class="form-control" name="textfield" type="text"
							id="company" value="填写目前就职公司名称"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写目前就职公司名称'){value =''}"
							onBlur="if (value ==''){value='填写目前就职公司名称'}"
							style="position:absolute;left:120;top:125;width:150px; height:30px;" />
						<p
							style="position:absolute;top:165;left:30;width:70px;height:20px;font-size: 14px;">性别：</p>
						<select id="sex" type="text" class="form-control"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:120;top:165;width:150px; height:30px;">
							<option>不限</option>
							<option>男</option>
							<option>女</option>
						</select>
						<p
							style="position:absolute;top:205;left:30;width:70px;height:20px;font-size: 14px;">学历：</p>
						<select id="education" type="text" class="form-control"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:120;top:205;width:150px; height:30px;">
							<option>不限</option>
							<option>博士</option>
							<option>硕士</option>
							<option>本科</option>
						</select> <input type="checkbox"
							style="position:absolute;top:210;left:280;width:14px;height:14px;" />
						<p
							style="position:absolute;top:210;left:300;width:70px;height:20px;font-size: 12px;">及以上</p>
						<p
							style="position:absolute;top:245;left:30;width:70px;height:20px;font-size: 14px;">年龄：</p>
						<input class="form-control" name="textfield" type="text" id="age"
							value="填写年龄下限" onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写年龄下限'){value =''}"
							onBlur="if (value ==''){value='填写年龄下限'}"
							style="position:absolute;left:120;top:245;width:150px; height:30px;" />
						<input class="form-control" name="textfield" type="text" id="age2"
							value="填写年龄上限" onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写年龄上限'){value =''}"
							onBlur="if (value ==''){value='填写年龄上限'}"
							style="position:absolute;left:280;top:245;width:150px; height:30px;" />
						<p
							style="position:absolute;top:285;left:30;width:70px;height:20px;font-size: 14px;">工作年限：</p>
						<input class="form-control" name="textfield" type="text"
							id="workage" value="填写工作年限下限"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写工作年限下限'){value =''}"
							onBlur="if (value ==''){value='填写工作年限下限'}"
							style="position:absolute;left:120;top:285;width:150px; height:30px;" />
						<input class="form-control" name="textfield" type="text"
							id="workage2" value="填写工作年限上限"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写工作年限上限'){value =''}"
							onBlur="if (value ==''){value='填写工作年限上限'}"
							style="position:absolute;left:280;top:285;width:150px; height:30px;" />
						<p id="clear"
							style="display:block;position:absolute;top:50;right:60;width:100px;height:20px;">
							<a>清空搜索条件</a>
						</p>
					</div>
				</div>
				<div class="div_left"
					style="position:relative;height:auto;width:697">
					<div class="fill_title_left">
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">简历管理</h2>
						</div>
						<div style="position:absolute;top:50;left:0;width:637;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby2.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby2.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby2.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left">
						<h1>杨颖 23岁</h1>
						<h1 class="text_operation">操作</h1>
						<a href=" "><p class="text_delete">删除</p> </a> <a href=" "><p
								class="text_viewdetail">查看简历详情</p> </a>
						<p>
							应聘职位：项目经理<br /> 所在地：广东·广州<br /> 现职：搜狐娱乐有限公司 - 项目总监<br /> 学历：本科
							工作年限：3年
						</p>
						<img style="position:absolute;right:0;top:20;float:right;"
							src="${pageContext.request.contextPath}/images/companyRegister/manage/baby.jpg"
							width="100" height="100" alt="" />
					</div>
					<div class="fill_left"
						style="text-align:center;margin-top:50;margin-bottom:30;">
						<h1>查看更多简历</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="frameright" id="frameright3"
			style="position:relative;float:right;display:none">
			<div class="div_left"
				style="margin-left:93.5;margin-top:40;position:relative;height:auto;width:697">
				<div class="fill_title_left" style="margin-left:-93.5;">
					<div id="section-1"
						style="position:relative;width:0;height:50;float:left;"></div>
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">企业信息</h2>
					</div>
					<div style="position:absolute;top:50;left:0;width:637;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
							width="637" height="1" alt="" />
					</div>
				</div>

				<div style="margin-top:10;position:relative;width:450;height:50;">
					<p
						style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #316392;">修改信息</p>
					<div
						style="position:absolute;top:50;left:25;width:400;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
							width="400" height="1" alt="" />
					</div>
					<div onClick="javascript:ShowFLT(1)" href="javascript:void(null)">
						<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('fold1-1','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
							<div
								style="position:absolute;top:10;right:20;width:30;height:30;float:left">
								<img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
									alt="" width="30" height="30" id="fold1-1">
							</div> </a>
					</div>
				</div>
				<div id="LM1" class="business_info" style="DISPLAY:block;">
					<div class="fill" style="top:10">
						<p>公司名称：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_old" value="东软科技有限公司"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写原密码'){value =''}"
							onBlur="if (value ==''){value='填写原密码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div class="fill" style="top:60">
						<p>所在地：</p>
						<select id="province3" type="text" class="form-control"
							style="left:100;width:90px;">
							<option>广东省</option>
							<option>北京市</option>
							<option>上海市</option>
						</select> <select id="city3" type="text" class="form-control"
							style="left:210;width:90px;">
							<option>广州市</option>
							<option>北京市</option>
							<option>上海市</option>
						</select>
					</div>
					<div class="fill" style="top:110">
						<p>行业分类：</p>
						<select id="profession3" type="text" class="form-control"
							style="left:100;width:90px;">
							<option>互联网/IT</option>
							<option>北京市</option>
							<option>上海市</option>
						</select> <select id="type3" type="text" class="form-control"
							style="left:210;width:90px;">
							<option>前端开发</option>
							<option>北京市</option>
							<option>上海市</option>
						</select>
					</div>
					<div class="fill" style="top:160">
						<p>联系人：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_new" value="杨颖"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写原密码'){value =''}"
							onBlur="if (value ==''){value='填写原密码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div id="section-2"
						style="position:relative;width:0;height:50;float:left;"></div>
					<div class="fill" style="top:210">
						<p>性别：</p>
						<table id="sex3"
							style="position:absolute;left:100;top:12;float:left;width:200;font-size:12;">
							<tr>
								<td><input type="radio" name="RadioGroup1"
									id="RadioGroup3_0"> 男</td>
								<td><input type="radio" name="RadioGroup1"
									id="RadioGroup3_1"> 女</td>
							</tr>
						</table>
					</div>
					<div class="fill" style="top:260">
						<p>手机号：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_new2" value="13232******"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写联系人手机'){value =''}"
							onBlur="if (value ==''){value='填写联系人手机'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div class="fill" style="top:310">
						<p>企业简介：</p>
						<textarea class="form-control" name="textfield" type="text"
							id="jobdetail3" onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='描述职位详情（限制1000字）'){value =''}"
							onBlur="if (value ==''){value='描述职位详情（限制1000字）'}"
							style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;">1、专业院校美术、艺术设计、网页设计等相关专业本科以上学历，三年以上UI工作经验；
2、有良好的美术功底、优秀的视觉设计能力，及较强的细节处理能力；
3、熟练掌握相关设计软件（如PS、CDR、AI、FW等）；
4、充满创意与活力，具有颠覆传统的理念；
5、能充分管理个人以及团队时间，有良好的统筹意识；
6、具有良好的提案能力、领导能力和团队管理能力。</textarea>
					</div>
				</div>
				<div
					style="margin-top:10;position:relative;width:450;height:150;float:left">
					<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('save','','${pageContext.request.contextPath}/images/companyRegister/manage/savebig2.png',0)"><img
						style="position:absolute;top:9;left:30;float:left;"
						src="${pageContext.request.contextPath}/images/companyRegister/manage/savebig.png"
						alt="" width="202" height="82" id="save"> </a> <a href="#"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('cancel','','${pageContext.request.contextPath}/images/companyRegister/manage/cancelbig2.png',0)"><img
						style="position:absolute;top:9;right:30;float:left;"
						src="${pageContext.request.contextPath}/images/companyRegister/manage/cancelbig.png"
						alt="" width="202" height="82" id="cancel1"> </a>
				</div>
			</div>
		</div>

		<div class="frameright" id="frameright4"
			style="position:relative;float:right;display:none">
			<div class="div_left"
				style="margin-left:93.5;margin-top:40;position:relative;height:auto;width:697">
				<div class="fill_title_left" style="margin-left:-93.5;">
					<div id="section-1"
						style="position:relative;width:0;height:50;float:left;"></div>
					<div style="position:absolute;top:10;width:8;height:30;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div style="position:absolute;top:10;left:10;width:192;height:30;">
						<h2 style="margin:0;position:absolute;top:4;left:15;">账号设置</h2>
					</div>
					<div style="position:absolute;top:50;left:0;width:637;height:1;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line647.png"
							width="637" height="1" alt="" />
					</div>
				</div>

				<div style="margin-top:10;position:relative;width:450;height:50;">
					<p
						style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #316392;">修改密码</p>
					<div
						style="position:absolute;top:50;left:25;width:400;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
							width="400" height="1" alt="" />
					</div>
					<div onClick="javascript:ShowFLT(1)" href="javascript:void(null)">
						<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('fold1-1','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
							<div
								style="position:absolute;top:10;right:20;width:30;height:30;float:left">
								<img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
									alt="" width="30" height="30" id="fold1-1">
							</div> </a>
					</div>
				</div>
				<div id="LM41" class="password" style="DISPLAY:block;">
					<div class="fill" style="top:10">
						<p>原密码：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_old" value="******"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写原密码'){value =''}"
							onBlur="if (value ==''){value='填写原密码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div class="fill" style="top:60">
						<p>新密码：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_new" value="******"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写原密码'){value =''}"
							onBlur="if (value ==''){value='填写原密码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div id="section-2"
						style="position:relative;width:0;height:50;float:left;"></div>
					<div class="fill" style="top:110">
						<p>新密码2：</p>
						<input class="form-control" name="textfield" type="text"
							id="password_new2" value="******"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='再次填写原密码'){value =''}"
							onBlur="if (value ==''){value='再次填写原密码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
				</div>

				<div style="margin-top:10;position:relative;width:450;height:50;">
					<p
						style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #316392;">修改密保</p>
					<div
						style="position:absolute;top:50;left:25;width:400;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
							width="400" height="1" alt="" />
					</div>
					<div onClick="javascript:ShowFLT(41)" href="javascript:void(null)">
						<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('fold1-2','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
							<div
								style="position:absolute;top:10;right:20;width:30;height:30;float:left">
								<img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
									alt="" width="30" height="30" id="fold1-2">
							</div> </a>
					</div>
				</div>
				<div id="LM42" class="security" style="DISPLAY:block">
					<div class="fill" style="top:10">
						<p>密保手机：</p>
						<input class="form-control" name="textfield" type="text"
							id="phone" value="*******2451"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写联系电话号码'){value =''}"
							onBlur="if (value ==''){value='填写联系电话号码'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
					<div id="section-3"
						style="position:relative;width:0;height:50;float:left;"></div>
					<div class="fill" style="top:60">
						<p>密保邮箱：</p>
						<input class="form-control" name="textfield" type="text"
							id="email" value="a**********@gmail.com"
							onmouseover="this.style.borderColor='#316392'"
							onmouseout="this.style.borderColor=''"
							onFocus="if (value =='填写邮箱地址'){value =''}"
							onBlur="if (value ==''){value='填写邮箱地址'}"
							style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
				</div>
				<div style="margin-top:10;position:relative;width:450;height:50;">
					<p
						style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #316392;">修改头像</p>
					<div
						style="position:absolute;top:50;left:25;width:400;height:1;float:left">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/manage/line400.png"
							width="400" height="1" alt="" />
					</div>
					<div onClick="javascript:ShowFLT(42)" href="javascript:void(null)">
						<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('fold1-3','','${pageContext.request.contextPath}/images/companyRegister/manage/fold2-hover.png',0)">
							<div
								style="position:absolute;top:10;right:20;width:30;height:30;float:left">
								<img
									src="${pageContext.request.contextPath}/images/companyRegister/manage/fold2.png"
									alt="" width="30" height="30" id="fold1-3">
							</div> </a>
					</div>
				</div>
				<div id="LM43" class="icon" style="DISPLAY:block">
					<div class="fill" style="top:10">
						<p>修改头像：</p>
						<input class="form-control" name="icon" type="file" id="icon"
							style="position:absolute;padding-top:4;left:100;top:10;float:left;width:200px; height:30px;" />
					</div>
				</div>
				<div
					style="margin-top:10;position:relative;width:450;height:150;float:left">
					<a href="#" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('save','','${pageContext.request.contextPath}/images/companyRegister/manage/savebig2.png',0)"><img
						style="position:absolute;top:9;left:30;float:left;"
						src="${pageContext.request.contextPath}/images/companyRegister/manage/savebig.png"
						alt="" width="202" height="82" id="save"> </a> <a href="#"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('cancel','','${pageContext.request.contextPath}/images/companyRegister/manage/cancelbig2.png',0)"><img
						style="position:absolute;top:9;right:30;float:left;"
						src="${pageContext.request.contextPath}/images/companyRegister/manage/cancelbig.png"
						alt="" width="202" height="82" id="cancel"> </a>
				</div>
			</div>
		</div>

	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/companyRegister/companyManage.js"></script>
</body>
</html>
