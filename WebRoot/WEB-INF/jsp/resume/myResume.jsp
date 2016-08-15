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
	href="${pageContext.request.contextPath}/css/resume/default.css"
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
					src="${pageContext.request.contextPath}/images/resume/baby2.jpg"
					width="140" height="140" alt="" />

				<div
					style="position:absolute;right:0;top:180;width:232;height:150;float:left">
					<p class="text_b"
						style="position:absolute;right:30;top:0;width:232;height:20;float:left">${sessionScope.jobhunter.jobhunterName
						}</p>
					<p class="text_c"
						style="position:absolute;right:30;top:30;width:232;height:20;float:left">${sessionScope.jobhunter.jobhunterNativePlace
						}</p>
					<p class="text_c"
						style="position:absolute;right:30;top:55;width:232;height:20;float:left">${sessionScope.latestWorkExperience.positionName
						}</p>
					<p class="text_c"
						style="position:absolute;right:30;top:80;width:232;height:20;float:left">${sessionScope.latestWorkExperience.companyName
						}</p>
					<p class="text_c"
						style="position:absolute;right:30;top:105;width:232;height:20;float:left">
						工作${sessionScope.workTime }天</p>
				</div>
			</div>
			<div
				style="position:absolute;right:46;top:41;width:140;height:140;float:left">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('revise','','${pageContext.request.contextPath}/images/resume/1.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/2.png" alt=""
					width="140" height="140" id="revise"> </a>
			</div>
			<div
				style="position:absolute;left:0;top:360;width:232;height:150;float:left">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('myresume','','${pageContext.request.contextPath}/images/resume/myresume2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/myresume3.png"
					alt="" width="232" height="50" id="myresume"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('personalinfo','','${pageContext.request.contextPath}/images/resume/personalinfo2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/personalinfo.png"
					alt="" width="232" height="50" id="personalinfo"> </a> <a
					href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('usersetting','','${pageContext.request.contextPath}/images/resume/usersetting2.png',0)"><img
					src="${pageContext.request.contextPath}/images/resume/usersetting.png"
					alt="" width="232" height="50" id="usersetting"> </a>
			</div>
		</div>
		<div class="frameright" style="position:relative;float:right">
			<div class="col-xs-9" style="position:relative;float:left;">
				<div
					style="position: fixed; top: 0; left: 0; width: 100%; height: 50; float: left; box-shadow: 1px 0px 2px #E1E1E1; z-index: 10; background-color: #FFFFFF;">
					<div
						style="position:absolute;top:10;left:30;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/resume/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div class="myresume">
						<p>我的简历</p>
					</div>
				</div>
				<div
					style="position:fixed;margin-top:100;top:0;right:100;width:140;height:500;float:left">

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

				<div
					style="position:absolute;top:50;left:140;width:450;height:500;z-index:9">
					<div id="section-1" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							<a id="updateJobhunter1" href="javascript:void(0)"
								style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">个人信息</a>
						</p>
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
									disabled="disabled" id=" company" value="东软科技有限公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''" style="" />
							</div>
							<div class="fill" style="top:160">
								<p>行业分类：</p>
								<select id="industryId" name="industryId" class="form-control"
									disabled="disabled" style="left:100;width:90px;">
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
									disabled="disabled" style="left:100;width:90px;">
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
									disabled="disabled" style="left:210;width:90px;">
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
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
							</div>
						</div>
					</form>
					<div id="section-2" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							<a id="updateJobhunter2" href="javascript:void(0)"
								style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">基本资料</a>
						</p>
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
						</div>
					</form>
					<div id="section-3" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							<a id="updateCareerIntention" href="javascript:void(0)"
								style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">职业意向
							</a>
						</p>
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
						</div>
					</form>
					<div id="section-4" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">
							<a id="addWorkExperienceBtn" href="javascript:void(0)"
								style="text-decoration: none;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">工作经历
							</a>
						</p>
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
									<div
										style="position:absolute;top:0;right:30;width:30;height:30;">
										<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">删除</p>
									</div>
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
								<div id="LM${num.count+8}"
									style="DISPLAY:<c:if test="${num.count gt 1 }">none</c:if>;position:relative;left:-25;width:400;height:500;">
									<div class="fill" style="top:10">
										<p>公司名称：</p>
										<input class="form-control" name="companyName" type="text"
											value="${workExperience.companyName}" id="companyname"
											onmouseover="this.style.borderColor='#3d7d52'"
											onmouseout="this.style.borderColor=''"
											style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									</div>
									<div class="fill" style="top:60">
										<p>公司行业：</p>
										<select id="companyIndustryId${num.count+8}"
											name="companyIndustryId" class="form-control"
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
										<input class="form-control" name="companyName" type="text"
											value="${workExperience.worksite}"
											id="worksite${num.count+8}"
											onmouseover="this.style.borderColor='#3d7d52'"
											onmouseout="this.style.borderColor=''"
											style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									</div>
									<div class="fill" style="top:160">
										<p>职位名称：</p>
										<input class="form-control" name="positionName" type="text"
											id="positionName${num.count+8}"
											value="${workExperience.positionName}"
											onmouseover="this.style.borderColor='#3d7d52'"
											onmouseout="this.style.borderColor=''"
											style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
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
											class="form-control" style="left:100;width:90px;">
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
											class="form-control" style="left:210;width:90px;">
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
										<select id="endYear${num.count+8}" type="text"
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
											class="form-control" style="left:210;width:90px;">
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
										<input class="form-control" name="subordinateNumber"
											type="text" id="subordinateNumber${num.count+8}"
											value="${workExperience.subordinateNumber}"
											onmouseover="this.style.borderColor='#3d7d52'"
											onmouseout="this.style.borderColor=''"
											style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
									</div>
									<div class="fill" style="top:360">
										<p>工作职责：</p>
										<textarea class="form-control" name="duty" type="text"
											id="duty${num.count+8}"
											onmouseover="this.style.borderColor='#3d7d52'"
											onmouseout="this.style.borderColor=''"
											style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">${workExperience.duty}</textarea>
									</div>
								</div>
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
							</form>
						</div>
					</div>
					<div id="section-5" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">教育经历</p>
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
					<div id="LM5" class="projectexperience"
						style="DISPLAY:block;margin-top:10;">
						<div class="fill2">
							<p>香港中文大学&nbsp;&nbsp;&nbsp;201309-201709</p>
							<div
								style="position:absolute;top:0;right:30;width:30;height:30;float:left">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">删除</p>
							</div>
							<div onClick="javascript:ShowFLT(11)"
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
						<!-- <div id="LM11"
							style="DISPLAY:block;position:relative;left:-25;width:400;height:280;">
							<div class="fill" style="top:10">
								<p>学校名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="schoolname" value="香港中文大学"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='填写学校名称'){value =''}"
									onBlur="if (value ==''){value='填写学校名称'}"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:60">
								<p>公司名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="majorname" value="软件工程"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='填写专业名称'){value =''}"
									onBlur="if (value ==''){value='填写专业名称'}"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:110">
								<p>就读时间：</p>
								<select id="year11" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2012年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month11" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>09月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>离校时间：</p>
								<select id="year12" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2016年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month13" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>9月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:210">
								<p>学历程度：</p>
								<select id="education" type="text" class="form-control"
									style="left:100;width:150px;">
									<option>本科</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <input type="checkbox"
									style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;" />
								<p
									style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">显示为面议</p>
							</div>
						</div> -->
						<div class="fill2">
							<p>创建新项目经验</p>
							<div
								style="position:absolute;top:0;right:30;width:30;height:30;float:left">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">新建</p>
							</div>
						</div>
					</div>
					<div id="section-6" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">项目经验</p>
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
						<div class="fill2">
							<p>微简历项目&nbsp;&nbsp;&nbsp;201512-201602</p>
							<div
								style="position:absolute;top:0;right:30;width:30;height:30;float:left">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">删除</p>
							</div>
							<div onClick="javascript:ShowFLT(12)"
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
						<!-- <div id="LM12"
							style="DISPLAY:block;position:relative;left:-25;width:400;height:580;">
							<div class="fill" style="top:10">
								<p>项目名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="projectname" value="微简历项目"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='填写项目名称'){value =''}"
									onBlur="if (value ==''){value='填写项目名称'}"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:60">
								<p>公司名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="companyname3" value="Apple公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='填写公司名称'){value =''}"
									onBlur="if (value ==''){value='填写公司名称'}"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:110">
								<p>开始时间：</p>
								<select id="year8" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2015年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month8" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>12月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>结束时间：</p>
								<select id="year9" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2016年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month9" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>2月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:210">
								<p>项目描述：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="projectdescription"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='描述你的工作内容或工作成绩（限制140字）'){value =''}"
									onBlur="if (value ==''){value='描述你的项目内容（限制140字）'}"
									style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">实现一个目前市场上的招聘网站</textarea>
							</div>
							<div class="fill" style="top:330">
								<p>项目职责：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="projectduty" onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='描述你的工作内容和职责（限制140字）'){value =''}"
									onBlur="if (value ==''){value='描述你的工作内容和职责（限制140字）'}"
									style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">本人主要负责项目的前端页面实现和交互设计</textarea>
							</div>
							<div class="fill" style="top:450">
								<p>项目业绩：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="projectachievement"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='描述你的工作业绩（限制140字）'){value =''}"
									onBlur="if (value ==''){value='描述你的工作业绩（限制140字）'}"
									style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">据统计，网站投入使用后，经过一段时间的宣传，在网络同行的网站点击率占比百分之20%,在广告销售方面取得非常高的利润。</textarea>
							</div>
						</div> -->
						<div class="fill2">
							<p>创建新项目经验</p>
							<div
								style="position:absolute;top:0;right:30;width:30;height:30;float:left">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">新建</p>
							</div>
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
					<div id="LM7" class="selfappraisal" style="DISPLAY:block">
						<div class="fill" style="top:10">
							<p>自我评价：</p>
							<textarea class="form-control" name="jobhunterSelfAppraisal"
								type="text" id="selfappraisal"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''"
								style="text-align:left;position: absolute; left: 100; top: 10; width: 230px; height: 100px; resize: none; padding-top: 7px;">${sessionScope.jobhunter.jobhunterSelfAppraisal }</textarea>
						</div>
					</div>
					<div id="section-8" style="position:relative;height:50"></div>
					<div style="position:relative;margin-top:20;width:450;height:50;">
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
					<div id="LM8" class="extramessage" style="DISPLAY:block">
						<div class="fill" style="top:10">
							<p>附加信息：</p>
							<textarea class="form-control" name="jobhunterExtraMessage"
								type="text" id="jobhunterExtraMessage"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''"
								style="text-align:left;position: absolute; left: 100; top: 10;width: 230px; height: 100px; resize: none; padding-top: 7px;">${sessionScope.jobhunter.jobhunterExtraMessage }</textarea>
						</div>
					</div>
					<div id="section-9" style="position:relative;height:50"></div>
					<div
						style="margin-top:20;position:relative;width:450;height:150;float:left">
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
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/resume/myResume.js"></script>
</body>
</html>
