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

<title>My JSP 'jobSearch.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/job/job.css"
	type="text/css"></link>
</head>

<body>
	<div style="z-index:101" id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/job/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/job/top.png" alt=""
				width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>


	<div class="framehead" style="position:fixed;z-index:100;display:">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"> <img
					src="${pageContext.request.contextPath}/images/job/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/job/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/job/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a href="javascript:void(0)" onMouseOut="
					MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/job/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/job/job3.png" alt=""
					width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/showResume.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/job/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/job/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<c:if test="${sessionScope.jobhunter==null}">
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
			<c:if test="${sessionScope.jobhunter!=null}">
				<div
					style="position: absolute; float: left; width: 200; height: 16; right:10; top: 17px;">
					<a
						href="${pageContext.request.contextPath}/resume/showResume.action">${sessionScope.jobhunter.jobhunterName}</a>,<a
						href="javascript:void(0)" id="logoutBtn">注销</a>
				</div>
				<div style="position:absolute;right:10;top:10;">
					<a href="javascript:void(0)"><img
						src="${sessionScope.jobhunterUpload.uploadLocation}${sessionScope.jobhunterUpload.uploadName}"
						alt="" width="80" height="30" id="business"> </a>
				</div>
			</c:if>
		</div>
	</div>
	<form id="searchForm"
		action="${pageContext.request.contextPath}/job/findJobsByCondition.action"
		method="post">
		<div class="framemain" style="position:relative;z-index:99;">


			<div class="div_1" style="float:left;">
				<div class="fill_title">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/job/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">搜索</h2>
					</div>
					<div
						style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
						<img src="${pageContext.request.contextPath}/images/job/line.png"
							width="900" height="1" alt="" />
					</div>
				</div>
				<div class="fill" style="margin-top:10.7;width:920;height:40;">
					<p style="padding-top:13">关键词：</p>
					<input class="form-control" name="job.jobName" type="text"
						value="${requestScope.jobQueryVo.job.jobName }" id="jobName"
						placeHolder="输入职业关键字：如 销售总监"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="top:5;width:500px; height:40px; " /> <a
						href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('searchButton','','${pageContext.request.contextPath}/images/job/search2.png',0)"><img
						style="position:absolute;right:0;float:right;top:0"
						src="${pageContext.request.contextPath}/images/job/search.png"
						alt="" width="100" height="50" id="searchButton"> </a>
					<p
						style="position:absolute;bottom:-20;right:8;height:20px;float:right">
						<a href="javascript:void(0)" id="cleanCondition">清空搜索条件</a>
					</p>
					<div id="jobNameTip"
						style="position:absolute;top:15;left:620;width:100px;height:20px;float:left"></div>
				</div>

				<div class="fill" style="width:padding-top:10.7;height:80;width:700">
					<p style="padding-top:12;width:700">职业：</p>
					<select id="industry" name="job.industryId" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="width:150px; height:30px;">
						<option value=0>行业</option>
						<c:forEach items="${sessionScope.industries }" var="industry">
							<option value="${industry.industryId }"
								<c:if test="${requestScope.jobQueryVo.job.industryId==industry.industryId}">selected</c:if>>${industry.industryName
								}</option>
						</c:forEach>
					</select> <select id="type" name="typeId" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="width:150px; height:30px;left:260;">
						<option value=0>分类</option>
						<c:if test="${sessionScope.childrenIndustries!=null }">
							<c:forEach items="${sessionScope.childrenIndustries }"
								var="industry">
								<option value="${industry.industryId }"
									<c:if test="${requestScope.jobQueryVo.typeId==industry.industryId}">selected</c:if>>${industry.industryName
									}</option>
							</c:forEach>
						</c:if>
					</select>
					<p style="padding-top:16">地区：</p>
					<select id="province" name="province" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="width:150px; height:30px;top:50">
						<option>省份</option>
						<option value=广东省
							<c:if test="${requestScope.jobQueryVo.province=='广东省'}">selected</c:if>>广东省</option>
						<option value=河北省
							<c:if test="${requestScope.jobQueryVo.province=='河北省'}">selected</c:if>>河北省</option>
					</select> <select id="city" name="city" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="width:150px; height:30px;top:50;left:260;">
						<option>城市</option>
						<option value=北京市
							<c:if test="${requestScope.jobQueryVo.city=='北京市'}">selected</c:if>>北京市</option>
						<option value=上海市
							<c:if test="${requestScope.jobQueryVo.city=='上海市'}">selected</c:if>>上海市</option>
						<option value=广州市
							<c:if test="${requestScope.jobQueryVo.city=='广州市'}">selected</c:if>>广州市</option>
					</select>
				</div>
				<div class="fill" style="padding-top:10.7;">
					<p>
						热门搜索： <a style="margin-left:30" href="javascript:void(0)">Java</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">产品经理</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">室内设计师</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">保险</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">PHP</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">UI设计师</a> <a href="javascript:void(0)">腾讯</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">网易</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">阿里巴巴</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">淘宝</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">京东</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">宜信</a>&nbsp;&nbsp;<a
							href="javascript:void(0)">海尔</a>
					</p>
				</div>
			</div>


			<div class="div_1" style="float:left;">
				<div class="fill_title">
					<div style="position:absolute;top:10;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/job/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:10;width:192;height:30;float:left">
						<h2 style="margin:0;position:absolute;top:2;left:15;">结果</h2>
					</div>
					<p style="position:absolute;top:13;left:100;">条件筛选：</p>
					<select id="time" name="time" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="position:absolute;left:200;top:10;float:left;width:150px; height:30px;">
						<option value=0>发布时间</option>
						<option value=1
							<c:if test="${requestScope.jobQueryVo.time eq 1 }">selected</c:if>>一天内</option>
						<option value=2
							<c:if test="${requestScope.jobQueryVo.time eq 2 }">selected</c:if>>一周内</option>
						<option value=3
							<c:if test="${requestScope.jobQueryVo.time eq 3 }">selected</c:if>>一月内</option>
						<option value=4
							<c:if test="${sessionScope.jobQueryVo.time eq 4 }">selected</c:if>>不限</option>
					</select> <select id="salary" name="salary" class="form-control"
						onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="position:absolute;left:360;top:10;float:left;width:150px; height:30px;">
						<option value=0>月薪范围</option>
						<option value=1
							<c:if test="${requestScope.jobQueryVo.salary eq 1 }">selected</c:if>>2000以下</option>
						<option value=2
							<c:if test="${requestScope.jobQueryVo.salary eq 2 }">selected</c:if>>2000-4000</option>
						<option value=3
							<c:if test="${requestScope.jobQueryVo.salary eq 3 }">selected</c:if>>4000-6000</option>
						<option value=4
							<c:if test="${requestScope.jobQueryVo.salary eq 4 }">selected</c:if>>6000-8000</option>
						<option value=5
							<c:if test="${requestScope.jobQueryVo.salary eq 5 }">selected</c:if>>8000-10000</option>
						<option value=6
							<c:if test="${requestScope.jobQueryVo.salary eq 6 }">selected</c:if>>10000以上</option>
					</select>
					<p style="position:absolute;top:13;right:0;">共
						${sessionScope.page.recordCount }条结果</p>
					<div
						style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
						<img src="${pageContext.request.contextPath}/images/job/line.png"
							width="900" height="1" alt="" />
					</div>
				</div>

				<c:forEach items="${sessionScope.page.recordList }" var="job"
					varStatus="num">

					<div class="fill" style="padding-top:10.7">
						<div
							style="position:absolute;top:10;right:0;width:160px;height:80px;float:right;">
							<a href="#"><img style="width:160;height:80;"
								src="${pageContext.request.contextPath}/images/job/brand5.png"
								alt="" /> </a>
						</div>
						<p2> <a
							href="${pageContext.request.contextPath}/company/showCompanyDetailByJobId.action?jobId=${job.jobId}">${job.companyName
							}</a> · <a
							href="${pageContext.request.contextPath}/job/showJobDetailByJobId.action?jobId=${job.jobId}">${job.jobName
							}</a></p2>
						<p>
							年薪：${job.jobSalary
							}元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${job.companyLocation } -<a
								href="#">${job.industryName }</a>
						</p>
						<p>地址：${job.worksite }</p>
					</div>
				</c:forEach>


				<div class="fill" style="padding-top:10.7">
					<p class="link_a" id="links" style="text-align:center;">
						${page.links }</p>
					<p style="margin-top:10;text-align:center;">
						跳转到<a style="margin-left:100" href="javascript:void(0)"
							id="forwordByPagenum">GO</a>
					</p>
					<input class="form-control" name="pageNum" type="text" id="pageNum"
						placeHolder="页数" onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''"
						style="position:absolute;top:44;left:424;width:30;width:60;padding-right:0" />
					<!-- <p class="link_a"
						style="position:absolute;right:80;top:-3;width:30;float:left;">
						<a href="javascript:void(0)" id="forwordByPagenum">GO</a>
					</p> -->
				</div>
			</div>
		</div>
	</form>

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
		src="${pageContext.request.contextPath}/js/job/job.js"></script>
</body>
</html>
