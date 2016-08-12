<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
						style="position:absolute;right:30;top:55;width:232;height:20;float:left">Web前端开发工程师</p>
					<p class="text_c"
						style="position:absolute;right:30;top:80;width:232;height:20;float:left">东软科技有限公司</p>
					<p class="text_c"
						style="position:absolute;right:30;top:105;width:232;height:20;float:left">工作3年</p>
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
									disabled="disabled" id=" company" value="东软科技有限公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''" style="" />
							</div>
							<div class="fill" style="top:160">
								<p>行业分类：</p>
								<select id="profession" type="text" class="form-control"
									disabled="disabled" style="left:100;width:90px;">
									<option>互联网/IT</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="type" type="text" class="form-control"
									disabled="disabled" style="left:210;width:90px;">
									<option>前端开发</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:210">
								<p>就职岗位：</p>
								<input class="form-control" name="textfield" type="text"
									disabled="disabled" id="jobname" value="Web前端开发工程师"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
							</div>
							<div class="fill" style="top:260">
								<p>就职时间：</p>
								<select id="year" type="text" class="form-control"
									disabled="disabled" style="left:100;width:90px;">
									<option value=2016>2016年</option>
									<option value=2015>2015年</option>
									<option value=2014>2014年</option>
									<option value=2013>2013年</option>
									<option value=2012>2012年</option>
									<option value=2011>2011年</option>
									<option value=2010>2010年</option>
								</select> <select id="month" type="text" class="form-control"
									disabled="disabled" style="left:210;width:90px;">
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
												已婚</label>
										</td>
										<td><label> <input type="radio"
												name="jobhunter.jobhunterMaritalStatus" value="未婚"
												id="RadioGroup1_1"
												<c:if test="${sessionScope.jobhunter.jobhunterMaritalStatus=='未婚' }">checked</c:if>>
												未婚</label>
										</td>
										<td><label> <input type="radio"
												name="jobhunter.jobhunterMaritalStatus" value="不显示"
												id="RadioGroup1_2"
												<c:if test="${sessionScope.jobhunter.jobhunterMaritalStatus=='不显示' }">checked</c:if>>
												保密</label>
										</td>
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
						action="${pageContext.request.contextPath}/careerIntention/updateCareerIntention.action"
						method="post">
						<div id="LM3" class="careerintention" style="DISPLAY:block">
							<div class="fill" style="top:10">
								<p>期望职业：</p>
								<select id="industryId" name="text" class="form-control"
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
										<option
											<c:if test="${sessionScope.careerIntention.positionId==position.positionId}">selected</c:if>>${position.positionName
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
							</div>
							<div class="fill" style="top:110">
								<p>期望月薪：</p>
								<input class="form-control" name="expectSalary" type="text"
									id="expectSalary"
									value="${sessionScope.careerIntention.expectSalary }"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:150px; height:30px;" />
								<input type="checkbox"
									style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;"
									<c:if test="${sessionScope.careerIntention.isDiscuss eq 1 }">checked</c:if> />
								<p
									style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">显示为面议</p>
							</div>
							<div class="fill" style="top:160">
								<p>目前月薪：</p>
								<input class="form-control" name="currentSalary" type="text"
									id="currentSalary"
									value="${sessionScope.careerIntention.currentSalary}"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:150px; height:30px;" />
								<input type="checkbox"
									style="position:absolute;right:25;top:15;float:left;width:14px; height:14px;"
									<c:if test="${sessionScope.careerIntention.isShow eq 1 }">checked</c:if> />
								<p
									style="position:absolute;right:-60;top:17;float:left;width:80px; height:30px;text-align:left;font-size:12;">显示为保密</p>
							</div>
						</div>
					</form>
					<div id="section-4" style="position:relative;height:50"></div>
					<div style="position:relative;width:450;height:50;">
						<p
							style="margin:0;position:absolute;top:13;left:30;font-family:微软雅黑;font-size: 18px; color: #3d7d52;">工作经历</p>
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
						<div class="fill2">
							<p>Neusoft科技有限公司&nbsp;&nbsp;&nbsp;201607-至今</p>
							<div style="position:absolute;top:0;right:30;width:30;height:30;">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">删除</p>
							</div>
							<div onClick="javascript:ShowFLT(9)" href="javascript:void(null)">
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
						<div id="LM9"
							style="DISPLAY:block;position:relative;left:-25;width:400;height:500;">
							<div class="fill" style="top:10">
								<p>公司名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="companyname" value="Neusoft科技有限公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='填写公司名称'){value =''}"
									onBlur="if (value ==''){value='填写公司名称'}"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:60">
								<p>公司行业：</p>
								<select id="profession3" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>互联网/IT</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="type3" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>前端工程师</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:110">
								<p>工作地点：</p>
								<select id="province4" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>广东省</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="city4" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>广州市</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>职位名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="jobname2" value="Web前端工程师"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:210">
								<p>任职时间：</p>
								<select id="year4" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2016年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month4" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>7月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:260">
								<p>离职时间：</p>
								<select id="year5" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month5" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:310">
								<p>下属人数：</p>
								<input class="form-control" name="textfield" type="text"
									id="subordinate" value="20人"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:360">
								<p>工作职责：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="evaluation" onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									onFocus="if (value =='描述你的工作内容或工作成绩（限制140字）'){value =''}"
									onBlur="if (value ==''){value='描述你的工作内容或工作成绩（限制140字）'}"
									style="text-align:left;position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 7px;">主要负责前端页面的排版。</textarea>
							</div>
						</div>
						<div class="fill2">
							<p>Apple公司&nbsp;&nbsp;&nbsp;201512-201604</p>
							<div style="position:absolute;top:0;right:30;width:30;height:30;">
								<p style="position:absolute;top:5;color:#3d7d52;font-size:14;">删除</p>
							</div>
							<div onClick="javascript:ShowFLT(10)"
								href="javascript:void(null)">
								<a href="javascript:;" onMouseOut="MM_swapImgRestore()"
									onMouseOver="MM_swapImage('fold2-2','','${pageContext.request.contextPath}/images/resume/fold2-hover.png',0)">
									<div
										style="position:absolute;top:0;right:0;width:30;height:30;">
										<img
											src="${pageContext.request.contextPath}/images/resume/fold2.png"
											alt="" width="30" height="30" id="fold2-2">
									</div> </a>
							</div>
						</div>
						<div id="LM10"
							style="DISPLAY:none;position:relative;left:-25;width:400;height:500;">
							<div class="fill" style="top:10">
								<p>公司名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="companyname2" value="Apple公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:60">
								<p>公司行业：</p>
								<select id="profession4" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>互联网/IT</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="type4" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>前端工程师</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:110">
								<p>工作地点：</p>
								<select id="province5" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>广东省</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="city5" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>广州市</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>职位名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="jobname3" value="Web前端工程师"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:210">
								<p>任职时间：</p>
								<select id="year6" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2016年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month6" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>7月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:260">
								<p>离职时间：</p>
								<select id="year7" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month7" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:310">
								<p>下属人数：</p>
								<input class="form-control" name="textfield" type="text"
									id="subordinate2" value="20人"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:360">
								<p>工作职责：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="evaluation2" onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 8px;">主要负责Apple官网的网页交互设计。</textarea>
							</div>
						</div>
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
							<div class="fill" style="top:10">
								<p>公司名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="companyname2" value="Apple公司"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:60">
								<p>公司行业：</p>
								<select id="profession4" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>互联网/IT</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="type4" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>前端工程师</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:110">
								<p>工作地点：</p>
								<select id="province5" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>广东省</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="city5" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>广州市</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:160">
								<p>职位名称：</p>
								<input class="form-control" name="textfield" type="text"
									id="jobname3" value="Web前端工程师"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:210">
								<p>任职时间：</p>
								<select id="year6" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>2016年</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month6" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>7月</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:260">
								<p>离职时间：</p>
								<select id="year7" type="text" class="form-control"
									style="left:100;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select> <select id="month7" type="text" class="form-control"
									style="left:210;width:90px;">
									<option>至今</option>
									<option>北京市</option>
									<option>上海市</option>
								</select>
							</div>
							<div class="fill" style="top:310">
								<p>下属人数：</p>
								<input class="form-control" name="textfield" type="text"
									id="subordinate2" value="20人"
									onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position:absolute;left:100;top:10;float:left;width:200px; height:30px;" />
							</div>
							<div class="fill" style="top:360">
								<p>工作职责：</p>
								<textarea class="form-control" name="textfield" type="text"
									id="evaluation2" onmouseover="this.style.borderColor='#3d7d52'"
									onmouseout="this.style.borderColor=''"
									style="position: absolute; left: 100; top: 10; float: left; width: 230px; height: 100px; resize: none; padding-top: 8px;">主要负责Apple官网的网页交互设计。</textarea>
							</div>
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
						<div id="LM11"
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
						</div>
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
						<div id="LM12"
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
						</div>
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
