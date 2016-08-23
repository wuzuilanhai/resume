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

<title>My JSP 'myResume.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/resume/bootstrap.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/resume/default3.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/resume/default2.css"
	type="text/css"></link>
</head>

<body data-spy="scroll" data-target="#myScrollspy">

	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="${pageContext.request.contextPath}/images/resume/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/resume/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/mainpage.png"
					alt="" width="100" height="50" id="mainpage" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a href="${pageContext.request.contextPath}/job/findAllJobs.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/resume/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/job.png"
					alt="" width="100" height="50" id="job" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a href="javscript:void(0)" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/resume/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/resume3.png"
					alt="" width="100" height="50" id="resume" /> </a>
			</div>
			<div
				style="position: absolute; float: left; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="../求职者登录/Untitled-1.html">登录</a>/<a
					href="../求职者注册/Untitled-1.html">注册</a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="../企业首页/Untitled-3.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/resume/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/business.png"
					alt="" width="80" height="30" id="business" /> </a>
			</div>
		</div>
	</div>
	<div class="framemain" style="position:relative;z-index:99;">
		<div class="frameleft" style="position:fixed;float:left">
			<div class="mask"
				style="position:absolute;left:0;top:21;width:232;height:330;float:left">
				<img style="position:absolute;left:46;top:20;float:left"
					id="headImg"
					src="${sessionScope.jobhunterUpload.uploadLocation}${sessionScope.jobhunterUpload.uploadName}"
					width="140" height="140" alt="" />
				<div
					style="position:absolute;right:0;top:180;width:232;height:150;float:left">
					<p
						style="position:absolute;right:30;top:0;width:232;height:20;text-align:right;">
						${sessionScope.jobhunter.jobhunterRealName}<br />
						${sessionScope.jobhunter.jobhunterNativePlace}<br />
						${sessionScope.latestWorkExperience.positionName}<br />
						${sessionScope.latestWorkExperience.companyName}<br />
						工作${sessionScope.workTime }日
					</p>
				</div>
			</div>
			<div
				style="position:absolute;right:46;top:41;width:140;height:140;float:left">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('revise','','${pageContext.request.contextPath}/images/resume/1.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/2.png" alt=""
					width="140" height="140" id="revise"> </a>
			</div>
			<div>
				<div id="left1"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:true">
					<a id="showFrameRight1" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('myresume','','${pageContext.request.contextPath}/images/resume/myresume2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/myresume3.png"
						alt="" width="232" height="50" id="myresume"> </a> <a
						id="showFrameRight2" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('sendrecord','','${pageContext.request.contextPath}/images/resume/sendrecord2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/sendrecord.png"
						alt="" width="232" height="50" id="sendrecord"> </a> <a
						id="showFrameRight3" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('usersetting','','${pageContext.request.contextPath}/images/resume/usersetting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/usersetting.png"
						alt="" width="232" height="50" id="usersetting"> </a>
				</div>

				<div id="left2"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:none">
					<a id="showFrameRight11" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('myresume11','','${pageContext.request.contextPath}/images/resume/myresume2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/myresume.png"
						alt="" width="232" height="50" id="myresume11"> </a> <a
						id="showFrameRight22" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('sendrecord22','','${pageContext.request.contextPath}/images/resume/sendrecord2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/sendrecord3.png"
						alt="" width="232" height="50" id="sendrecord22"> </a> <a
						id="showFrameRight33" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('usersetting33','','${pageContext.request.contextPath}/images/resume/usersetting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/usersetting.png"
						alt="" width="232" height="50" id="usersetting33"> </a>
				</div>

				<div id="left3"
					style="position:absolute;left:0;top:360;width:232;height:150;float:left;display:none">
					<a id="showFrameRight111" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('myresume111','','${pageContext.request.contextPath}/images/resume/myresume2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/myresume.png"
						alt="" width="232" height="50" id="myresume111"> </a> <a
						id="showFrameRight222" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('sendrecord222','','${pageContext.request.contextPath}/images/resume/sendrecord2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/sendrecord.png"
						alt="" width="232" height="50" id="sendrecord222"> </a> <a
						id="showFrameRight333" href="javascript:void(0)"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('usersetting333','','${pageContext.request.contextPath}/images/resume/usersetting2.png',0)"><img
						src="${pageContext.request.contextPath}/images/resume/usersetting3.png"
						alt="" width="232" height="50" id="usersetting333"> </a>
				</div>

			</div>
		</div>
		<div>
			<div class="frameright" id="frameright1"
				style="position:relative;float:right;display:true">
				<div class="col-xs-9"
					style="margin-left:93.5;margin-top:40;position:relative;">
					<div
						style="z-index:1000;position:fixed;margin-top:100;top:0;right:180;width:90;height:500;float:left">
						<div class="row">
							<div class="col-xs-3" id="myScrollspy">
								<ul class="nav nav-tabs nav-stacked" data-spy="affix"
									data-offset-top="125">
									<li class="active"><a href="#section-1"
										onclick="document.getElementById('section-1').scrollIntoView();return false;">个人信息</a>
									</li>
									<li><a href="#section-2"
										onclick="document.getElementById('section-2').scrollIntoView();return false;">基本资料</a>
									</li>
									<li><a href="#section-3"
										onclick="document.getElementById('section-3').scrollIntoView();return false;">职业意向</a>
									</li>
									<li><a href="#section-4"
										onclick="document.getElementById('section-4').scrollIntoView();return false;">工作经历</a>
									</li>
									<li><a href="#section-5"
										onclick="document.getElementById('section-5').scrollIntoView();return false;">教育经历</a>
									</li>
									<li><a href="#section-6"
										onclick="document.getElementById('section-6').scrollIntoView();return false;">项目经验</a>
									</li>
									<li><a href="#section-7"
										onclick="document.getElementById('section-7').scrollIntoView();return false;">自我评价</a>
									</li>
									<li><a href="#section-8"
										onclick="document.getElementById('section-8').scrollIntoView();return false;">附加信息</a>
									</li>
									<li><a href="#section-9"
										onclick="document.getElementById('section-9').scrollIntoView();return false;">保存</a>
									</li>
								</ul>
							</div>
						</div>

					</div>
					<div class="fill_title_left" style="margin-left:-93.5;">
						<div id="section-1"
							style="position:relative;width:0;height:50;float:left;"></div>
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/resume/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">我的简历</h2>
						</div>
						<div style="position:absolute;top:50;left:0;width:6e7;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/resume/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>

					<div style="margin-top:50;position:relative;width:450;height:50;">
						<div id="section-1" style="position:relative;height:50"></div>
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							个人信息</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(1)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-1','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-1">
								</div> </a>
						</div>
					</div>

					<form id="form1"
						action="${pageContext.request.contextPath}/jobHunter/updateJobhunter.action"
						method="post">
						<div id="LM1" class="personalinfo" style="DISPLAY:block;">
							<div class="fill" style="top:10">
								<p>姓名：</p>
								<input class="form-control" name="jobhunter.jobhunterRealName"
									type="text" id=""
									value="${sessionScope.jobhunter.jobhunterRealName}"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobhunterRealName"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:60">
								<p>性别：</p>
								<table id="sex"
									style="position:absolute;left:100;top:12;float:left;width:200;font-size:12;">
									<tr>
										<td><input type="radio" name="jobhunter.jobhunterSex"
											id="jobhunterSex1" value="男"
											<c:if test="${sessionScope.jobhunter.jobhunterSex=='男'}">checked</c:if>>
											男</td>
										<td><input type="radio" name="jobhunter.jobhunterSex"
											id="jobhunterSex2" value="女"
											<c:if test="${sessionScope.jobhunter.jobhunterSex=='女'}">checked</c:if>>
											女</td>
									</tr>
								</table>
							</div>
							<div class="fill" style="top:110">
								<p>就职公司：</p>
								<input class="form-control" name="textfield" type="text"
									value="${sessionScope.latestWorkExperience.companyName }"
									disabled="disabled" id=" company"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''" style=" color: #989898;" />
							</div>
							<div class="fill" style="top:160">
								<p>行业分类：</p>
								<select id="industryId" name="industryId" class="form-control"
									disabled="disabled"
									style="left:100;width:90px; color: #989898;">
									<option value=1
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 1 }">selected</c:if>>互联网·IT</option>
									<option value=2
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 2 }">selected</c:if>>金融业</option>
									<option value=3
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 3 }">selected</c:if>>快销行业</option>
									<option value=4
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 4 }">selected</c:if>>建筑业</option>
									<option value=5
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 5 }">selected</c:if>>汽车·制造</option>
									<option value=6
										<c:if test="${sessionScope.latestWorkExperience.companyIndustryId eq 6 }">selected</c:if>>医疗·化工</option>
								</select>
							</div>
							<div class="fill" style="top:210">
								<p>就职岗位：</p>
								<input class="form-control" name="textfield" type="text"
									disabled="disabled" id="jobname"
									value="${sessionScope.latestWorkExperience.positionName }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
							</div>
							<div class="fill" style="top:260">
								<p>就职时间：</p>
								<select id="year" type="text" class="form-control"
									disabled="disabled"
									style="left:100;width:90px; color: #989898;">
									<option value=2016
										<c:if test="${startYear eq 2016 }">selected</c:if>>2016年</option>
									<option value=2015
										<c:if test="${startYear eq 2015 }">selected</c:if>>2015年</option>
									<option value=2014
										<c:if test="${startYear eq 2014 }">selected</c:if>>2014年</option>
									<option value=2013
										<c:if test="${startYear eq 2013 }">selected</c:if>>2013年</option>
									<option value=2012
										<c:if test="${startYear eq 2012 }">selected</c:if>>2012年</option>
									<option value=2011
										<c:if test="${startYear eq 2011 }">selected</c:if>>2011年</option>
									<option value=2010
										<c:if test="${startYear eq 2010 }">selected</c:if>>2010年</option>
								</select> <select id="month" type="text" class="form-control"
									disabled="disabled"
									style="left:210;width:90px; color: #989898;">
									<option value=1
										<c:if test="${startMonth=='01' }">selected</c:if>>1月</option>
									<option value=2
										<c:if test="${startMonth=='02' }">selected</c:if>>2月</option>
									<option value=3
										<c:if test="${startMonth=='03' }">selected</c:if>>3月</option>
									<option value=4
										<c:if test="${startMonth=='04' }">selected</c:if>>4月</option>
									<option value=5
										<c:if test="${startMonth=='05' }">selected</c:if>>5月</option>
									<option value=6
										<c:if test="${startMonth=='06' }">selected</c:if>>6月</option>
									<option value=7
										<c:if test="${startMonth=='07' }">selected</c:if>>7月</option>
									<option value=8
										<c:if test="${startMonth=='08' }">selected</c:if>>8月</option>
									<option value=9
										<c:if test="${startMonth=='09' }">selected</c:if>>9月</option>
									<option value=10
										<c:if test="${startMonth=='10' }">selected</c:if>>10月</option>
									<option value=11
										<c:if test="${startMonth=='11' }">selected</c:if>>11月</option>
									<option value=12
										<c:if test="${startMonth=='12' }">selected</c:if>>12月</option>
								</select>
							</div>
							<div class="fill" style="top:310">
								<p>详细地址：</p>
								<input class="form-control" name="jobhunter.jobhunterAddress"
									type="text" id="jobhunterAddress"
									value="${sessionScope.jobhunter.jobhunterAddress }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px; font-family:微软雅黑;font-size: 12px;" />
							</div>
							<div class="fill" style="padding-top:10;top:360">
								<a id="updateJobhunter1" href="javascript:void(0)"
									style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
									<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
							</div>
						</div>
					</form>
					<div id="section-2" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							基本资料</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(2)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-2','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-2">
								</div> </a>
						</div>
					</div>
					<form id="form2"
						action="${pageContext.request.contextPath}/jobHunter/updateJobhunter.action"
						method="post">
						<div id="LM2" class="basicinfo" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>联系电话：</p>
								<input class="form-control" name="jobhunter.jobhunterPhone"
									type="text" id="phone"
									value="${sessionScope.jobhunter.jobhunterPhone }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobhunterPhoneTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:60">
								<p>邮箱：</p>
								<input class="form-control" name="jobhunter.jobhunterEmail"
									type="text" id="email"
									value="${sessionScope.jobhunter.jobhunterEmail }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobhunterEmailTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:110">
								<p>籍贯：</p>
								<select id="province2" type="text" class="form-control"
									name="jobhunterProvince" style="left:100;width:90px;">
									<option value=广东省
										<c:if test="${fn:substring(sessionScope.jobhunter.jobhunterNativePlace,0,3)=='广东省'}">selected</c:if>>广东省</option>
									<option value=河北省
										<c:if test="${fn:substring(sessionScope.jobhunter.jobhunterNativePlace,0,3)=='河北省'}">selected</c:if>>河北省</option>
								</select> <select id="city2" type="text" class="form-control"
									name="jobhunterCity" style="left:210;width:90px;">
									<option value=北京市
										<c:if test="${fn:substring(sessionScope.jobhunter.jobhunterNativePlace,3,6)=='北京市'}">selected</c:if>>北京市</option>
									<option value=上海市
										<c:if test="${fn:substring(sessionScope.jobhunter.jobhunterNativePlace,3,6)=='上海市'}">selected</c:if>>上海市</option>
									<option value=广州市
										<c:if test="${fn:substring(sessionScope.jobhunter.jobhunterNativePlace,3,6)=='广州市'}">selected</c:if>>广州市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>婚姻状况：</p>
								<table id="marriage"
									style="position:absolute;left:100;top:12;float:left;width:200;font-size:12;">
									<tr>
										<td><label> <input type="radio"
												name="jobhunter.jobhunterMaritalStatus" value="已婚"
												id="RadioGroup1_0"
												<c:if test="${sessionScope.jobhunter.jobhunterMaritalStatus=='已婚' }">checked</c:if>>
												已婚</label></td>
										<td><label> <input type="radio"
												name="jobhunter.jobhunterMaritalStatus" value="未婚"
												id="RadioGroup1_1"
												<c:if test="${sessionScope.jobhunter.jobhunterMaritalStatus=='未婚' }">checked</c:if>>
												未婚</label></td>
										<td><label> <input type="radio"
												name="jobhunter.jobhunterMaritalStatus" value="不显示"
												id="RadioGroup1_2"
												<c:if test="${sessionScope.jobhunter.jobhunterMaritalStatus=='不显示' }">checked</c:if>>
												保密</label></td>
									</tr>
								</table>
							</div>
							<div class="fill" style="top:210">
								<p>出生年月：</p>
								<select id="year1" type="text" class="form-control"
									name="jobhunterYear" style="left:100;width:90px;">
									<option value=1990
										<c:if test="${sessionScope.year eq 1990 }">selected</c:if>>1990</option>
									<option value=1991
										<c:if test="${sessionScope.year eq 1991 }">selected</c:if>>1991</option>
									<option value=1992
										<c:if test="${sessionScope.year eq 1992 }">selected</c:if>>1992</option>
									<option value=1993
										<c:if test="${sessionScope.year eq 1993 }">selected</c:if>>1993</option>
									<option value=1994
										<c:if test="${sessionScope.year eq 1994 }">selected</c:if>>1994</option>
									<option value=1995
										<c:if test="${sessionScope.year eq 1995 }">selected</c:if>>1995</option>
									<option value=1996
										<c:if test="${sessionScope.year eq 1996 }">selected</c:if>>1996</option>
									<option value=1997
										<c:if test="${sessionScope.year eq 1997 }">selected</c:if>>1997</option>
									<option value=1998
										<c:if test="${sessionScope.year eq 1998 }">selected</c:if>>1998</option>
									<option value=1999
										<c:if test="${sessionScope.year eq 1999 }">selected</c:if>>1999</option>
								</select> <select id="month1" type="text" class="form-control"
									name="jobhunterMonth" style="left:210;width:90px;">
									<option value=1
										<c:if test="${sessionScope.month eq 1 }">selected</c:if>>1月</option>
									<option value=2
										<c:if test="${sessionScope.month eq 2 }">selected</c:if>>2月</option>
									<option value=3
										<c:if test="${sessionScope.month eq 3 }">selected</c:if>>3月</option>
									<option value=4
										<c:if test="${sessionScope.month eq 4 }">selected</c:if>>4月</option>
									<option value=5
										<c:if test="${sessionScope.month eq 5 }">selected</c:if>>5月</option>
									<option value=6
										<c:if test="${sessionScope.month eq 6 }">selected</c:if>>6月</option>
									<option value=7
										<c:if test="${sessionScope.month eq 7 }">selected</c:if>>7月</option>
									<option value=8
										<c:if test="${sessionScope.month eq 8 }">selected</c:if>>8月</option>
									<option value=9
										<c:if test="${sessionScope.month eq 9 }">selected</c:if>>9月</option>
									<option value=10
										<c:if test="${sessionScope.month eq 10 }">selected</c:if>>10月</option>
									<option value=11
										<c:if test="${sessionScope.month eq 11 }">selected</c:if>>11月</option>
									<option value=12
										<c:if test="${sessionScope.month eq 12 }">selected</c:if>>12月</option>
								</select>
							</div>
							<div class="fill" style="top:260">
								<p>就职状态：</p>
								<table id="workstate"
									style="position:absolute;left:100;top:12;float:left;width:200;font-size:12;">
									<tr>
										<td style="height:30px;"><input type="radio"
											name="jobhunter.jobhuntEntranceStatus" value="在职，看看新机会"
											id="RadioGroup3_0"
											<c:if test="${sessionScope.jobhunter.jobhuntEntranceStatus=='在职，看看新机会' }">checked</c:if>>
											在职，看看新机会</td>
									</tr>
									<tr>
										<td style="height:30px;"><input type="radio"
											name="jobhunter.jobhuntEntranceStatus" value="在职，暂无跳槽打算"
											id="RadioGroup3_1"
											<c:if test="${sessionScope.jobhunter.jobhuntEntranceStatus=='在职，暂无跳槽打算' }">checked</c:if>>
											在职，暂无跳槽打算</td>
									</tr>
									<tr>
										<td style="height:30px;"><input type="radio"
											name="jobhunter.jobhuntEntranceStatus" value="在职，急寻新工作"
											id="RadioGroup3_2"
											<c:if test="${sessionScope.jobhunter.jobhuntEntranceStatus=='在职，急寻新工作' }">checked</c:if>>
											在职，急寻新工作</td>
									</tr>
									<tr>
										<td style="height:30px;"><input type="radio"
											name="jobhunter.jobhuntEntranceStatus" value="离职，正在找工作"
											<c:if test="${sessionScope.jobhunter.jobhuntEntranceStatus=='离职，正在找工作' }">checked</c:if>
											id="RadioGroup3_3"> 离职，正在找工作</td>
									</tr>
								</table>
							</div>
							<div class="fill" style="padding-top:10;top:400">
								<a id="updateJobhunter2" href="javascript:void(0)"
									style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
									<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
							</div>
						</div>
					</form>
					<div id="section-3" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							职业意向</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(3)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-3','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-3">
								</div> </a>
						</div>
					</div>
					<form id="form3"
						action="${pageContext.request.contextPath}/careerIntention/operateCareerIntention.action"
						method="post">
						<div id="LM3" class="careerintention" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>期望职业：</p>
								<select id="industryId" name="industryId" class="form-control"
									style="left:100;width:90px;">
									<option value=1
										<c:if test="${sessionScope.careerIntention.industryId eq 1 }">selected</c:if>>互联网·IT</option>
									<option value=2
										<c:if test="${sessionScope.careerIntention.industryId eq 2 }">selected</c:if>>金融业</option>
									<option value=3
										<c:if test="${sessionScope.careerIntention.industryId eq 3 }">selected</c:if>>快销行业</option>
									<option value=4
										<c:if test="${sessionScope.careerIntention.industryId eq 4 }">selected</c:if>>建筑业</option>
									<option value=5
										<c:if test="${sessionScope.careerIntention.industryId eq 5 }">selected</c:if>>汽车·制造</option>
									<option value=6
										<c:if test="${sessionScope.careerIntention.industryId eq 6 }">selected</c:if>>医疗·化工</option>
								</select> <select id="positionId" name="positionId" class="form-control"
									style="left:210;width:90px;">
									<c:forEach items="${sessionScope.positions }" var="position">
										<option value="${position.positionId}"
											<c:if
												test="${sessionScope.careerIntention.positionId==position.positionId}">selected</c:if>>${position.positionName
											}</option>
									</c:forEach>
								</select>
							</div>
							<div class="fill" style="top:60">
								<p>期望地点：</p>
								<input class="form-control" name="expectWorksite" type="text"
									value="${sessionScope.careerIntention.expectWorksite }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:150px; height:30px;" />
								<div id="expectWorksiteTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:110">
								<p>期望月薪：</p>
								<input class="form-control" name="expectSalary" type="text"
									id="expectSalary"
									value="${sessionScope.careerIntention.expectSalary }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:150px; height:30px;" />
								<input type="checkbox" name="isDiscuss" id="isDiscuss"
									value="${sessionScope.careerIntention.isDiscuss}"
									style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;"
									<c:if test="${sessionScope.careerIntention.isDiscuss eq 1 }">checked</c:if> />
								<p
									style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">显示为面议</p>
								<div id="expectSalaryTip"
									style="position:absolute;left:360;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:160">
								<p>目前月薪：</p>
								<input class="form-control" name="currentSalary" type="text"
									id="currentSalary"
									value="${sessionScope.careerIntention.currentSalary}"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:150px; height:30px;" />
								<input type="checkbox" name="isShow" id="isShow"
									value="${sessionScope.careerIntention.isShow}"
									style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;"
									<c:if test="${sessionScope.careerIntention.isShow eq 1 }">checked</c:if> />
								<p
									style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">显示为保密</p>
								<div id="currentSalaryTip"
									style="position:absolute;left:360;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="padding-top:10;top:210">
								<a id="updateCareerIntention" href="javascript:void(0)"
									style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
									<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
							</div>
						</div>
					</form>
					<div id="section-4" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							工作经历</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(4)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-4','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-4">
								</div> </a>
						</div>
					</div>
					<div id="LM4" class="workexperience"
						style="DISPLAY:block;margin-top:10;">
						<c:if test="${sessionScope.workExperiences!=null }">
							<c:forEach items="${sessionScope.workExperiences}"
								var="workExperience" varStatus="num">
								<c:set value="${num.count }" var="num_count"></c:set>
								<div class="fill2">
									<p>
										${workExperience.companyName }&nbsp;&nbsp;&nbsp;
										<fmt:formatDate
											value="${workExperience.startTime
										}"
											pattern="yyyy/MM/dd" />
										-
										<fmt:formatDate value="${workExperience.endTime
										}"
											pattern="yyyy/MM/dd" />
									</p>

									<div onClick="javascript:ShowFLT(${num.count+8})"
										href="javascript:void(null)">
										<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('fold2-1','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
											<div
												style="position:absolute;top:0;right:0;width:30;height:30;">
												<img
													src="${pageContext.request.contextPath}/images/resume/fold2.png"
													alt="" width="30" height="30" id="fold2-1">
											</div> </a>
									</div>
								</div>
								<form id="workExperience${workExperience.wexperienceId}"
									method="post">
									<input name="workExperienceId" type="hidden"
										value="${workExperience.wexperienceId}" />
									<div id="LM${num.count+8}"
										style="DISPLAY:<c:if test="${num.count gt 1 }">none</c:if>;position:relative;left:-25;width:400;height:530;">
										<div class="fill" style="top:10">
											<p>公司名称：</p>
											<input class="form-control" name="workExperience.companyName"
												type="text" value="${workExperience.companyName}"
												id="workExperienceCompanyName${workExperience.wexperienceId}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="workExperienceCompanyNameTip${workExperience.wexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:60">
											<p>公司行业：</p>
											<select id="companyIndustryId${num.count+8}"
												name="workExperience.companyIndustryId" class="form-control"
												style="left:100;width:90px;">
												<option value=1
													<c:if test="${workExperience.companyIndustryId eq 1 }">selected</c:if>>互联网·IT</option>
												<option value=2
													<c:if test="${workExperience.companyIndustryId eq 2 }">selected</c:if>>金融业</option>
												<option value=3
													<c:if test="${workExperience.companyIndustryId eq 3 }">selected</c:if>>快销行业</option>
												<option value=4
													<c:if test="${workExperience.companyIndustryId eq 4 }">selected</c:if>>建筑业</option>
												<option value=5
													<c:if test="${workExperience.companyIndustryId eq 5 }">selected</c:if>>汽车·制造</option>
												<option value=6
													<c:if test="${workExperience.companyIndustryId eq 6 }">selected</c:if>>医疗·化工</option>
											</select>
										</div>
										<div class="fill" style="top:110">
											<p>工作地点：</p>
											<input class="form-control" name="workExperience.worksite"
												type="text" value="${workExperience.worksite}"
												id="workExperienceWorksite${workExperience.wexperienceId}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="workExperienceWorksiteTip${workExperience.wexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:160">
											<p>职位名称：</p>
											<input class="form-control"
												name="workExperience.positionName" type="text"
												id="workExperiencePositionName${workExperience.wexperienceId}"
												value="${workExperience.positionName}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="workExperiencePositionNameTip${workExperience.wexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:210">
											<p>
												任职时间：
												<fmt:formatDate value="${workExperience.startTime}"
													pattern="yyyy" var="startYear1" />
												<fmt:formatDate value="${workExperience.startTime}"
													pattern="MM" var="startMonth1" />
											</p>
											<select id="startYear${num.count+8}" type="text"
												name="startYear" class="form-control"
												style="left:100;width:90px;">
												<option value=2016
													<c:if test="${startYear1 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${startYear1 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${startYear1 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${startYear1 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${startYear1 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${startYear1 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${startYear1 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="startMonth${num.count+8}" type="text"
												name="startMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${startMonth1=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${startMonth1=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${startMonth1=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${startMonth1=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${startMonth1=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${startMonth1=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${startMonth1=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${startMonth1=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${startMonth1=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${startMonth1=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${startMonth1=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${startMonth1=='12' }">selected</c:if>>12月</option>
											</select>
										</div>
										<div class="fill" style="top:260">
											<p>
												离职时间：
												<fmt:formatDate value="${workExperience.endTime}"
													pattern="yyyy" var="endYear1" />
												<fmt:formatDate value="${workExperience.endTime}"
													pattern="MM" var="endMonth1" />
											</p>
											<select id="endYear${num.count+8}" type="text" name="endYear"
												class="form-control" style="left:100;width:90px;">
												<option value=2016
													<c:if test="${endYear1 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${endYear1 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${endYear1 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${endYear1 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${endYear1 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${endYear1 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${endYear1 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="endMonth${num.count+8}" type="text"
												name="endMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${endMonth1=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${endMonth1=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${endMonth1=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${endMonth1=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${endMonth1=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${endMonth1=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${endMonth1=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${endMonth1=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${endMonth1=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${endMonth1=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${endMonth1=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${endMonth1=='12' }">selected</c:if>>12月</option>
											</select>
										</div>
										<div class="fill" style="top:310">
											<p>下属人数：</p>
											<input class="form-control"
												name="workExperience.subordinateNumber" type="text"
												id="subordinateNumber${workExperience.wexperienceId}"
												value="${workExperience.subordinateNumber}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
										</div>
										<div class="fill" style="top:360">
											<p>工作职责：</p>
											<textarea class="form-control" name="workExperience.duty"
												type="text" id="duty${workExperience.wexperienceId}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">${workExperience.duty}</textarea>
										</div>
										<div class="fill" style="padding-top:10;top:480">
											<a id="updateWorkExperience${workExperience.wexperienceId}"
												href="javascript:void(0)">
												<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a> <a
												href="${pageContext.request.contextPath}/workExperience/deleteWorkExperienceById.action?wexperienceId=${workExperience.wexperienceId}">
												<h1 style="margin:0;position:absolute;left:150;">删除</h1> </a>
										</div>
									</div>
								</form>
							</c:forEach>
						</c:if>

						<div class="fill2" id="createWorkExperienceDiv">
							<p>创建新工作经历</p>
							<div style="position:absolute;top:0;right:30;width:30;height:30;">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">
									<a id="addWorkExperience" href="javascript:void(0)"
										style="color:#3d7d52;font-size:14;text-decoration: none;">新建</a>
								</p>
							</div>
						</div>
						<div id="hiddenDivForAdd"
							style="DISPLAY:none;position:relative;left:-25;width:400;height:500;">
							<form id="addWorkExperienceForm"
								action="${pageContext.request.contextPath}/workExperience/addWorkExperience.action"
								method="post">
								<div class="fill" style="top:10">
									<p>公司名称：</p>
									<input class="form-control" name="workExperience.companyName"
										type="text" id="companyName"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="companyNameTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:60">
									<p>公司行业：</p>
									<select id="companyIndustryId"
										name="workExperience.companyIndustryId" class="form-control"
										style="left:100;width:90px;">
										<option value=1>互联网·IT</option>
										<option value=2>金融业</option>
										<option value=3>快销行业</option>
										<option value=4>建筑业</option>
										<option value=5>汽车·制造</option>
										<option value=6>医疗·化工</option>
									</select>
								</div>
								<div class="fill" style="top:110">
									<p>工作地点：</p>
									<input class="form-control" name="workExperience.worksite"
										type="text" id="worksite"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="worksiteTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:160">
									<p>职位名称：</p>
									<input class="form-control" name="workExperience.positionName"
										type="text" id="positionName"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="positionNameTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:210">
									<p>任职时间：</p>
									<select name="startYear" type="text" class="form-control"
										style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select name="startMonth" type="text" class="form-control"
										style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:260">
									<p>离职时间：</p>
									<select name="endYear" type="text" class="form-control"
										style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select name="endMonth" type="
									text"
										class="form-control" style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:310">
									<p>下属人数：</p>
									<input class="form-control"
										name="workExperience.subordinateNumber" type="text"
										id="subordinateNumber"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="subordinateNumberTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:360">
									<p>工作职责：</p>
									<textarea class="form-control" name="workExperience.duty"
										type="text" id="duty"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 8px;"></textarea>
								</div>
								<div class="fill" style="padding-top:10;top:480">
									<a id="addWorkExperienceBtn" href="javascript:void(0)"
										style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
										<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
								</div>
							</form>
						</div>
					</div>
					<div id="section-5" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							教育经历</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(5)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-5','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-5">
								</div> </a>
						</div>
					</div>
					<div id="LM5" class="educationexperience"
						style="DISPLAY:block;margin-top:10;">
						<c:if test="${sessionScope.educationExperiences!=null }">
							<c:forEach items="${sessionScope.educationExperiences}"
								var="educationExperience" varStatus="num1">
								<c:set value="${num1.count }" var="num1_count"></c:set>
								<div class="fill2">
									<p>
										${educationExperience.schoolName }&nbsp;&nbsp;&nbsp;
										<fmt:formatDate
											value="${educationExperience.startTime
										}"
											pattern="yyyy/MM/dd" />
										-
										<fmt:formatDate
											value="${educationExperience.endTime
										}"
											pattern="yyyy/MM/dd" />
									</p>
									<div
										style="position:absolute;top:0;right:30;width:30;height:30;float:left">

									</div>
									<div onClick="javascript:ShowFLT(${num_count+num1.count+8 })"
										href="javascript:void(null)">
										<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('fold3-1','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
											<div
												style="position:absolute;top:0;right:0;width:30;height:30;float:left">
												<img
													src="${pageContext.request.contextPath}/images/resume/fold2.png"
													alt="" width="30" height="30" id="fold3-1">
											</div> </a>
									</div>
								</div>
								<form
									id="educationExperience${educationExperience.eexperienceId}"
									action="${pageContext.request.contextPath}/educationExperience/updateEducationExperience.action"
									method="post">
									<input name="educationExperienceId" type="hidden"
										value="${educationExperience.eexperienceId}" />
									<div id="LM${num_count+num1.count+8 }"
										style="DISPLAY:<c:if test="${num1.count gt 1 }">none</c:if>;position:relative;left:-25;width:400;height:310;">
										<div class="fill" style="top:10">
											<p>学校名称：</p>
											<input class="form-control"
												id="educationExperienceSchoolName${educationExperience.eexperienceId}"
												name="educationExperience.schoolName" type="text"
												value="${educationExperience.schoolName }"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="educationExperienceSchoolNameTip${educationExperience.eexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:60">
											<p>专业名称：</p>
											<input class="form-control"
												id="educationExperienceMajorName${educationExperience.eexperienceId}"
												name="educationExperience.majorName" type="text"
												value="${educationExperience.majorName}"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="educationExperienceMajorNameTip${educationExperience.eexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:110">
											<p>
												就读时间：
												<fmt:formatDate value="${educationExperience.startTime}"
													pattern="yyyy" var="startYear2" />
												<fmt:formatDate value="${educationExperience.startTime}"
													pattern="MM" var="startMonth2" />
											</p>
											<select id="startYear${num_count+num1.count+8 }" type="text"
												name="startYear" class="form-control"
												style="left:100;width:90px;">
												<option value=2016
													<c:if test="${startYear2 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${startYear2 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${startYear2 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${startYear2 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${startYear2 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${startYear2 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${startYear2 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="startMonth${num_count+num1.count+8 }"
												type="text" name="startMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${startMonth2=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${startMonth2=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${startMonth2=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${startMonth2=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${startMonth2=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${startMonth2=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${startMonth2=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${startMonth2=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${startMonth2=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${startMonth2=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${startMonth2=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${startMonth2=='12' }">selected</c:if>>12月</option>
											</select>
										</div>
										<div class="fill" style="top:160">
											<p>
												离校时间：
												<fmt:formatDate value="${educationExperience.endTime}"
													pattern="yyyy" var="endYear2" />
												<fmt:formatDate value="${educationExperience.endTime}"
													pattern="MM" var="endMonth2" />
											</p>
											<select id="endYear${num_count+num1.count+8 }" type="text"
												name="endYear" class="form-control"
												style="left:100;width:90px;">
												<option value=2016
													<c:if test="${endYear2 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${endYear2 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${endYear2 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${endYear2 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${endYear2 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${endYear2 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${endYear2 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="endMonth${num_count+num1.count+8 }" type="text"
												name="endMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${endMonth2=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${endMonth2=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${endMonth2=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${endMonth2=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${endMonth2=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${endMonth2=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${endMonth2=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${endMonth2=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${endMonth2=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${endMonth2=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${endMonth2=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${endMonth2=='12' }">selected</c:if>>12月</option>
											</select>
										</div>
										<div class="fill" style="top:210">
											<p>学历程度：</p>
											<select id="qualification" type="text" class="form-control"
												name="educationExperience.qualification"
												style="left:100;width:150px;">
												<option value="高中以下"
													<c:if test="${educationExperience.qualification=='高中以下'}">selected</c:if>>高中以下</option>
												<option value="高中"
													<c:if test="${educationExperience.qualification=='高中'}">selected</c:if>>高中</option>
												<option value="本科"
													<c:if test="${educationExperience.qualification=='本科'}">selected</c:if>>本科</option>
												<option value="硕士"
													<c:if test="${educationExperience.qualification=='硕士'}">selected</c:if>>硕士</option>
												<option value="博士"
													<c:if test="${educationExperience.qualification=='博士'}">selected</c:if>>博士</option>
											</select> <input type="checkbox" name="educationExperience.isUnify"
												value="${educationExperience.isUnify}"
												id="isUnify${educationExperience.eexperienceId }"
												<c:if test="${educationExperience.isUnify eq 1}">checked</c:if>
												style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;" />
											<p
												style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">是否统招</p>
										</div>
										<div class="fill" style="padding-top:10;top:260">
											<a
												id="updateEducationExperience${educationExperience.eexperienceId}"
												href="javascript:void(0)">
												<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a> <a
												href="${pageContext.request.contextPath}/educationExperience/deleteEducationExperienceById.action?eexperienceId=${educationExperience.eexperienceId}">
												<h1 style="margin:0;position:absolute;left:150;">删除</h1> </a>
										</div>
									</div>
								</form>
							</c:forEach>
						</c:if>
						<div class="fill2" id="createEducationExperienceDiv">
							<p>创建新教育经历</p>
							<div style="position:absolute;top:0;right:30;width:30;height:30;">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">
									<a id="addEducationExperience" href="javascript:void(0)"
										style="color:#3d7d52;font-size:14;text-decoration: none;">新建</a>
								</p>
							</div>
						</div>
						<div id="hiddenDivForEducationExperience"
							style="DISPLAY:none;position:relative;left:-25;width:400;height:280;">
							<form id="addEducationExperienceForm"
								action="${pageContext.request.contextPath}/educationExperience/addEducationExperience.action"
								method="post">
								<div class="fill" style="top:10">
									<p>学校名称：</p>
									<input class="form-control"
										name="educationExperience.schoolName" type="text"
										id="schoolName" onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="schoolNameTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:60">
									<p>专业名称：</p>
									<input class="form-control"
										name="educationExperience.majorName" type="text"
										id="majorName" onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="majorNameTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:110">
									<p>就读时间：</p>
									<select id="startYear" type="text" name="startYear"
										class="form-control" style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select id="startMonth" type="text" name="startMonth"
										class="form-control" style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:160">
									<p>离校时间：</p>
									<select id="endYear" type="text" name="endYear"
										class="form-control" style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select id="endMonth${num_count+num1.count+8 }" type="text"
										name="endMonth" class="form-control"
										style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:210">
									<p>学历程度：</p>
									<select id="qualification" type="text" class="form-control"
										name="educationExperience.qualification"
										style="left:100;width:150px;">
										<option value="高中以下">高中以下</option>
										<option value="高中">高中</option>
										<option value="本科">本科</option>
										<option value="硕士">硕士</option>
										<option value="博士">博士</option>
									</select> <input type="checkbox" name="educationExperience.isUnify"
										id="isUnify"
										style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;" />
									<p
										style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">是否统招</p>
								</div>
								<div class="fill" style="padding-top:10;top:260">
									<a id="addEducationExperienceBtn" href="javascript:void(0)"
										style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
										<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
								</div>

							</form>
						</div>
					</div>
					<div id="section-6" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							项目经验</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(6)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-6','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-6">
								</div> </a>
						</div>
					</div>
					<div id="LM6" class="projectexperience"
						style="DISPLAY:block;margin-top:10;">
						<c:if test="${sessionScope.projectExperiences!=null }">
							<c:forEach items="${sessionScope.projectExperiences}"
								var="projectExperience" varStatus="num2">
								<div class="fill2">
									<p>
										${projectExperience.projectName }&nbsp;&nbsp;&nbsp;
										<fmt:formatDate
											value="${projectExperience.startTime
										}"
											pattern="yyyy/MM/dd" />
										-
										<fmt:formatDate
											value="${projectExperience.endTime
										}"
											pattern="yyyy/MM/dd" />
									</p>

									<div
										onClick="javascript:ShowFLT(${num_count+num1_count+num2.count+8 })"
										href="javascript:void(null)">
										<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
											onMouseOver="MM_swapImage('fold2-1','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
											<div
												style="position:absolute;top:0;right:0;width:30;height:30;">
												<img
													src="${pageContext.request.contextPath}/images/resume/fold2.png"
													alt="" width="30" height="30" id="fold2-1">
											</div> </a>
									</div>
								</div>
								<form id="projectExperience${projectExperience.pexperienceId}"
									action="${pageContext.request.contextPath}/projectExperience/updateProjectExperience.action"
									method="post">
									<input name="projectExperienceId" type="hidden"
										value="${projectExperience.pexperienceId}" />
									<div id="LM${num_count+num1_count+num2.count+8 }"
										style="DISPLAY:<c:if test="${num2.count gt 1 }">none</c:if>;position:relative;left:-25;width:400;height:620;">
										<div class="fill" style="top:10">
											<p>项目名称：</p>
											<input class="form-control"
												id="projectExperienceProjectName${projectExperience.pexperienceId}"
												name="projectExperience.projectName" type="text"
												value="${projectExperience.projectName }"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="projectExperienceProjectNameTip${projectExperience.pexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:60">
											<p>公司名称：</p>
											<input class="form-control"
												id="projectExperienceCompanyName${projectExperience.pexperienceId}"
												name="projectExperience.companyName" type="text"
												value="${projectExperience.companyName }"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
											<div
												id="projectExperienceCompanyNameTip${projectExperience.pexperienceId}"
												style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
										</div>
										<div class="fill" style="top:110">
											<p>
												开始时间：
												<fmt:formatDate value="${projectExperience.startTime}"
													pattern="yyyy" var="startYear3" />
												<fmt:formatDate value="${projectExperience.startTime}"
													pattern="MM" var="startMonth3" />
											</p>
											<select id="startYear${num_count+num1.count+8 }" type="text"
												name="startYear" class="form-control"
												style="left:100;width:90px;">
												<option value=2016
													<c:if test="${startYear3 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${startYear3 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${startYear3 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${startYear3 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${startYear3 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${startYear3 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${startYear3 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="startMonth${num_count+num1.count+8 }"
												type="text" name="startMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${startMonth3=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${startMonth3=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${startMonth3=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${startMonth3=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${startMonth3=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${startMonth3=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${startMonth3=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${startMonth3=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${startMonth3=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${startMonth3=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${startMonth3=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${startMonth3=='12' }">selected</c:if>>12月</option>
											</select> </select>
										</div>
										<div class="fill" style="top:160">
											<p>
												结束时间：
												<fmt:formatDate value="${projectExperience.endTime}"
													pattern="yyyy" var="endYear3" />
												<fmt:formatDate value="${projectExperience.endTime}"
													pattern="MM" var="endMonth3" />
											</p>
											<select id="endYear${num_count+num1.count+8 }" type="text"
												name="endYear" class="form-control"
												style="left:100;width:90px;">
												<option value=2016
													<c:if test="${endYear3 eq 2016 }">selected</c:if>>2016年</option>
												<option value=2015
													<c:if test="${endYear3 eq 2015 }">selected</c:if>>2015年</option>
												<option value=2014
													<c:if test="${endYear3 eq 2014 }">selected</c:if>>2014年</option>
												<option value=2013
													<c:if test="${endYear3 eq 2013 }">selected</c:if>>2013年</option>
												<option value=2012
													<c:if test="${endYear3 eq 2012 }">selected</c:if>>2012年</option>
												<option value=2011
													<c:if test="${endYear3 eq 2011 }">selected</c:if>>2011年</option>
												<option value=2010
													<c:if test="${endYear3 eq 2010 }">selected</c:if>>2010年</option>
											</select> <select id="endMonth${num_count+num1.count+8 }" type="text"
												name="endMonth" class="form-control"
												style="left:210;width:90px;">
												<option value=1
													<c:if test="${endMonth3=='01' }">selected</c:if>>1月</option>
												<option value=2
													<c:if test="${endMonth3=='02' }">selected</c:if>>2月</option>
												<option value=3
													<c:if test="${endMonth3=='03' }">selected</c:if>>3月</option>
												<option value=4
													<c:if test="${endMonth3=='04' }">selected</c:if>>4月</option>
												<option value=5
													<c:if test="${endMonth3=='05' }">selected</c:if>>5月</option>
												<option value=6
													<c:if test="${endMonth3=='06' }">selected</c:if>>6月</option>
												<option value=7
													<c:if test="${endMonth3=='07' }">selected</c:if>>7月</option>
												<option value=8
													<c:if test="${endMonth3=='08' }">selected</c:if>>8月</option>
												<option value=9
													<c:if test="${endMonth3=='09' }">selected</c:if>>9月</option>
												<option value=10
													<c:if test="${endMonth3=='10' }">selected</c:if>>10月</option>
												<option value=11
													<c:if test="${endMonth3=='11' }">selected</c:if>>11月</option>
												<option value=12
													<c:if test="${endMonth3=='12' }">selected</c:if>>12月</option>
											</select>
										</div>
										<div class="fill" style="top:210">
											<p>项目描述：</p>
											<textarea class="form-control"
												name="projectExperience.projectDescription" type="text"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">${projectExperience.projectDescription }</textarea>
										</div>
										<div class="fill" style="top:330">
											<p>项目职责：</p>
											<textarea class="form-control"
												name="projectExperience.projectResponsibility" type="text"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">${projectExperience.projectResponsibility }</textarea>
										</div>
										<div class="fill" style="top:450">
											<p>项目业绩：</p>
											<textarea class="form-control"
												name="projectExperience.projectAchievement" type="text"
												onmouseover="this.style.borderColor='#3d7d52'"
												onmouseout="this.style.borderColor=''"
												style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">${projectExperience.projectAchievement }</textarea>
										</div>
										<div class="fill" style="padding-top:10;top:570">
											<a
												id="updateProjectExperience${projectExperience.pexperienceId}"
												href="javascript:void(0)">
												<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a> <a
												href="${pageContext.request.contextPath}/projectExperience/deleteProjectExperienceById.action?pexperienceId=${projectExperience.pexperienceId}">
												<h1 style="margin:0;position:absolute;left:150;">删除</h1> </a>
										</div>
									</div>
								</form>
							</c:forEach>
						</c:if>
						<div class="fill2">
							<p>创建新项目经验</p>
							<div
								style="position:absolute;top:0;right:30;width:30;height:30;float:left">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">
									<a id="addProjectExperience" href="javascript:void(0)"
										style="color:#3d7d52;font-size:14;text-decoration: none;">新建</a>
								</p>
							</div>
						</div>
						<div id="hiddenDivForProjectExperience"
							style="DISPLAY:none;position:relative;left:-25;width:400;height:580;">
							<form id="addProjectExperienceForm"
								action="${pageContext.request.contextPath}/projectExperience/addProjectExperience.action"
								method="post">
								<div class="fill" style="top:10">
									<p>项目名称：</p>
									<input class="form-control"
										name="projectExperience.projectName" type="text"
										id="projectName"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="projectNameTip"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:60">
									<p>公司名称：</p>
									<input class="form-control"
										name="projectExperience.companyName" type="text"
										id="companyName1"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									<div id="companyNameTip1"
										style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
								</div>
								<div class="fill" style="top:110">
									<p>开始时间：</p>
									<select id="startYear${num_count+num1.count+8 }" type="text"
										name="startYear" class="form-control"
										style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select id="startMonth${num_count+num1.count+8 }" type="text"
										name="startMonth" class="form-control"
										style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:160">
									<p>结束时间：</p>
									<select id="endYear${num_count+num1.count+8 }" type="text"
										name="endYear" class="form-control"
										style="left:100;width:90px;">
										<option value=2016>2016年</option>
										<option value=2015>2015年</option>
										<option value=2014>2014年</option>
										<option value=2013>2013年</option>
										<option value=2012>2012年</option>
										<option value=2011>2011年</option>
										<option value=2010>2010年</option>
									</select> <select id="endMonth${num_count+num1.count+8 }" type="text"
										name="endMonth" class="form-control"
										style="left:210;width:90px;">
										<option value=1>1月</option>
										<option value=2>2月</option>
										<option value=3>3月</option>
										<option value=4>4月</option>
										<option value=5>5月</option>
										<option value=6>6月</option>
										<option value=7>7月</option>
										<option value=8>8月</option>
										<option value=9>9月</option>
										<option value=10>10月</option>
										<option value=11>11月</option>
										<option value=12>12月</option>
									</select>
								</div>
								<div class="fill" style="top:210">
									<p>项目描述：</p>
									<textarea class="form-control"
										name="projectExperience.projectDescription" type="text"
										id="projectdescription"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;"></textarea>
								</div>
								<div class="fill" style="top:330">
									<p>项目职责：</p>
									<textarea class="form-control"
										name="projectExperience.projectResponsibility" type="text"
										id="projectduty"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;"></textarea>
								</div>
								<div class="fill" style="top:450">
									<p>项目业绩：</p>
									<textarea class="form-control"
										name="projectExperience.projectAchievement" type="text"
										id="projectachievement"
										onmouseover="this.style.borderColor='#3d7d52'"
										onmouseout="this.style.borderColor=''"
										style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;"></textarea>
								</div>
								<div class="fill" style="padding-top:10;top:570">
									<a href="javascript:void(0)" id="addProjectExperienceBtn">
										<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
								</div>
							</form>
						</div>
					</div>
					<div id="section-7" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">自我评价</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(7)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-7','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-7">
								</div> </a>
						</div>
					</div>
					<form id="selfappraisalForm"
						action="${pageContext.request.contextPath}/jobHunter/updateJobhunter.action"
						method="post">
						<div id="LM7" class="selfappraisal" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>自我评价：</p>
								<textarea class="form-control"
									name="jobhunter.jobhunterSelfAppraisal" type="text"
									id="selfappraisal"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;">${sessionScope.jobhunter.jobhunterSelfAppraisal }</textarea>
							</div>
							<div class="fill" style="padding-top:10;top:130">
								<a href="javascript:void(0)" id="updateJobhunter_selfappraisal">
									<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
							</div>
						</div>
					</form>
					<div id="section-8" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">附加信息</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(8)" href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-8','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-8">
								</div> </a>
						</div>
					</div>
					<form id="jobhunterExtraMessageForm"
						action="${pageContext.request.contextPath}/jobHunter/updateJobhunter.action"
						method="post">
						<div id="LM8" class="extramessage" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>附加信息：</p>
								<textarea class="form-control"
									name="jobhunter.jobhunterExtraMessage" type="text"
									id="jobhunterExtraMessage"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="text-align:left;position: absolute; left: 100; top: 10;width: 230px; height: 100px; resize: none; padding-top: 7px;">${sessionScope.jobhunter.jobhunterExtraMessage }</textarea>
							</div>
							<div class="fill" style="padding-top:10;top:130">
								<a href=" javascript:void(0)"
									id="updateJobhunter_jobhunterExtraMessage">
									<h1 style="margin:0;position:absolute;left:100;">保存</h1> </a>
							</div>
						</div>
					</form>
					<div id="section-9" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:150;float:left">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('save','','${pageContext.request.contextPath}/images/resume/save2.png',0)"><img
							style="position:absolute;top:9;left:30;float:left;"
							src="${pageContext.request.contextPath}/images/resume/save.png"
							alt="" width="202" height="82" id="save"> </a> <a href="#"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('cancel','','${pageContext.request.contextPath}/images/resume/cancel2.png',0)"><img
							style="position:absolute;top:9;right:30;float:left;"
							src="${pageContext.request.contextPath}/images/resume/cancel.png"
							alt="" width="202" height="82" id="cancel"> </a>
					</div>
				</div>
			</div>

			<div class="frameright" id="frameright2"
				style="position:relative;float:right;display:none">
				<div class="div_left"
					style="margin-top:40;position:relative;height:auto;width:697">
					<div class="fill_title_left">
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/resume/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">投递记录</h2>
						</div>
						<div style="position:absolute;top:50;left:-5;width:647;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/resume/line647.png"
								width="647" height="1" alt="" />
						</div>
					</div>
					<c:forEach items="${sessionScope.resumeCustom.jobCustoms }"
						var="jobCustom">
						<div class="fill_left" id="resumeJobDiv${jobCustom.jobId}">
							<h1>${jobCustom.companyName } · ${jobCustom.jobName}</h1>
							<h1 class="text_operation">操作</h1>
							<a id="deleteResumeJobByJobIdBtn${jobCustom.jobId}"
								href="javascript:void(0) "><p class="text_delete">删除</p> </a> <a
								href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${jobCustom.jobId}"><p
									class="text_viewdetail">查看职位详情</p> </a>
							<p>
								月薪：${jobCustom.jobSalary}元<br />
								所在地：${jobCustom.companyLocation}<br />
								行业：${jobCustom.industryName}<br /> 投递时间：
								<fmt:formatDate value="${jobCustom.submitTime }"
									pattern="yyyy/MM/dd" />
							</p>
							<img style="position:absolute;right:0;top:31;float:right;"
								src="${pageContext.request.contextPath}/images/resume/brand2.jpg"
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

			<div class="frameright" id="frameright3"
				style="position:relative;float:right;display:none">
				<div class="div_left"
					style="margin-left:93.5;margin-top:40;position:relative;height:auto;width:697">
					<div class="fill_title_left" style="margin-left:-93.5;">
						<div id="section-1"
							style="position:relative;width:0;height:50;float:left;"></div>
						<div style="position:absolute;top:10;width:8;height:30;">
							<img
								src="${pageContext.request.contextPath}/images/resume/titlehead.png"
								width="8" height="30" alt="" />
						</div>
						<div style="position:absolute;top:10;left:10;width:192;height:30;">
							<h2 style="margin:0;position:absolute;top:4;left:15;">账号设置</h2>
						</div>
						<div style="position:absolute;top:50;left:0;width:637;height:1;">
							<img
								src="${pageContext.request.contextPath}/images/resume/line647.png"
								width="637" height="1" alt="" />
						</div>
					</div>
					<div style="margin-top:10;position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">修改密码</p>
						<div
							style="position:absolute;top:50;left:25;width:400;height:1;float:left">
							<img
								src="${pageContext.request.contextPath}/images/resume/line400.png"
								width="400" height="1" alt="" />
						</div>
						<div onClick="javascript:ShowFLT(10000)"
							href="javascript:void(null)">
							<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
								onMouseOver="MM_swapImage('fold1-11','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
								<div
									style="position:absolute;top:10;right:20;width:30;height:30;float:left">
									<img
										src="${pageContext.request.contextPath}/images/resume/fold2.png"
										alt="" width="30" height="30" id="fold1-11">
								</div> </a>
						</div>
					</div>
					<form id="updateAccountMsg" method="post"
						enctype="multipart/form-data"
						action="${pageContext.request.contextPath }/jobHunter/updateAccountMsg.action">
						<div id="LM10000" class="password" style="DISPLAY:block;">
							<div class="fill" style="top:10">
								<p>原密码：</p>
								<input type="hidden"
									value="${sessionScope.jobhunter.jobhunterPassword }"
									id="passwordValue" /> <input class="form-control"
									name="jobhunterPasswordOld" type="password" id="password_old"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobhunterPasswordOldTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div class="fill" style="top:60">
								<p>新密码：</p>
								<input class="form-control" name="jobhunterPassword"
									type="password" id="password_new"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="password_newTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div id="section-2"
								style="position:relative;width:0;height:50;float:left;"></div>
							<div class="fill" style="top:110">
								<p>确认密码：</p>
								<input class="form-control" name="jobhunterPasswordNewConfirm"
									type="password" id="password_new2"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="jobhunterPasswordNewConfirmTip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
						</div>
						<div style="margin-top:10;position:relative;width:450;height:50;">
							<p
								style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">修改密保</p>
							<div
								style="position:absolute;top:50;left:25;width:400;height:1;float:left">
								<img
									src="${pageContext.request.contextPath}/images/resume/line400.png"
									width="400" height="1" alt="" />
							</div>
							<div onClick="javascript:ShowFLT(20000)"
								href="javascript:void(null)">
								<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('fold1-22','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
									<div
										style="position:absolute;top:10;right:20;width:30;height:30;float:left">
										<img
											src="${pageContext.request.contextPath}/images/resume/fold2.png"
											alt="" width="30" height="30" id="fold1-22">
									</div> </a>
							</div>
						</div>
						<div id="LM20000" class="security" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>密保手机：</p>
								<input class="form-control" name="jobhunterPhone" type="text"
									id="phone1" value="${sessionScope.jobhunter.jobhunterPhone }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="phone1Tip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
							<div id="section-3"
								style="position:relative;width:0;height:50;float:left;"></div>
							<div class="fill" style="top:60">
								<p>密保邮箱：</p>
								<input class="form-control" name="jobhunterEmail" type="text"
									id="email1" value="${sessionScope.jobhunter.jobhunterEmail }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
								<div id="email1Tip"
									style="position:absolute;left:330;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
							</div>
						</div>
						<div style="margin-top:10;position:relative;width:450;height:50;">
							<p
								style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">修改头像</p>
							<div
								style="position:absolute;top:50;left:25;width:400;height:1;float:left">
								<img
									src="${pageContext.request.contextPath}/images/resume/line400.png"
									width="400" height="1" alt="" />
							</div>
							<div onClick="javascript:ShowFLT(30000)"
								href="javascript:void(null)">
								<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('fold1-33','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
									<div
										style="position:absolute;top:10;right:20;width:30;height:30;float:left">
										<img
											src="${pageContext.request.contextPath}/images/resume/fold2.png"
											alt="" width="30" height="30" id="fold1-33">
									</div> </a>
							</div>
						</div>
						<div id="LM30000" class="icon" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>修改头像：</p>
								<input class="form-control" name="uploadPic" type="file"
									id="icon"
									style="position:absolute;padding-top:4;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
						</div>
					</form>
					<div
						style="margin-top:10;position:relative;width:450;height:150;float:left">
						<a id="updateAccountMsgBtn" href="javascript:void(0)"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('save111','','${pageContext.request.contextPath}/images/resume/save2.png',0)"><img
							style="position:absolute;top:9;left:30;float:left;"
							src="${pageContext.request.contextPath}/images/resume/save.png"
							alt="" width="202" height="82" id="save111"> </a> <a
							href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('cancel111','','${pageContext.request.contextPath}/images/resume/cancel2.png',0)"><img
							style="position:absolute;top:9;right:30;float:left;"
							src="${pageContext.request.contextPath}/images/resume/cancel.png"
							alt="" width="202" height="82" id="cancel111"> </a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.rotate.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/resume/myResume.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/md5.js"></script>
</body>
</html>
