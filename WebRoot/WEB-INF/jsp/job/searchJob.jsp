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

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0"
	onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/job/job2.png','${pageContext.request.contextPath}/images/job/resume2.png','${pageContext.request.contextPath}/images/job/business2.png','${pageContext.request.contextPath}/images/job/QQ2.png','${pageContext.request.contextPath}/images/job/sina2.png','${pageContext.request.contextPath}/images/job/facebook2.png','${pageContext.request.contextPath}/images/job/weixin2.png','${pageContext.request.contextPath}/images/job/internet2.png','${pageContext.request.contextPath}/images/job/finance2.png','${pageContext.request.contextPath}/images/job/consume2.png','${pageContext.request.contextPath}/images/job/top2.png')">
	<div id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/job/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/job/top.png" alt=""
				width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>
	<div class="framehead">
		<div class="frameheadmid" style="position:relative;">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="${pageContext.request.contextPath}/images/job/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/job/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/job/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a
					href="javscript:void(0)"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/job/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/job/job3.png" alt=""
					width="100" height="50" id="job"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a
					href="${pageContext.request.contextPath}/resume/showResume.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/job/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/job/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<!--<div style="position:absolute;float:left;width:150;height:20;right:180;top:16">
                <select>
                  <option value="全国">全国（切换城市）</option>
                  <option value="广东省">广东省</option>
				</select>
                </div>-->
			<div
				style="position: absolute; float: left; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="../求职者登录/Untitled-1.html">登录</a>/<a
					href="../求职者注册/Untitled-1.html">注册</a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="../企业首页/Untitled-3.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/job/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/job/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>
	<form id="searchForm"
		action="${pageContext.request.contextPath}/job/findJobsByCondition.action"
		method="post">
		<div class="framesearch " style="position:relative;">
			<div
				style="position:absolute;top:0;left:-21;width:992px;height:292px;float:left;">
				<img
					src="${pageContext.request.contextPath}/images/job/framesearch.png"
					width="992" height="292" alt="" />
			</div>
			<div
				style="position:absolute;top:71;l;width:950px;height:50px;float:left;">
				<p
					style="position:absolute;top:1;left:30;width:70px;height:20px;float:left;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;text-align:left">关键词：</p>
				<input class="form-control" name="job.jobName" type="text"
					value="${sessionScope.jobQueryVo.job.jobName }" id="jobName"
					placeHolder="输入职业关键字：如 销售总监"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:130;top:0;float:left;width:500px; height:50px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobNameTip"
					style="position:absolute;top:20;left:650;width:100px;height:20px;float:left"></div>
				<img style="position:absolute;right:30;"
					src="${pageContext.request.contextPath}/images/job/search.png"
					alt="" width="100" height="50" id="searchButton">
				<p class="link_c"
					style="position:absolute;top:40;right:30;width:100px;height:20px;float:left">
					<a href="javascript:void(0)" id="cleanCondition">清空搜索条件</a>
				</p>
			</div>
			<div
				style="position:absolute;top:141;l;width:950px;height:70px;float:left;">
				<p
					style="position:absolute;top:-8;left:30;width:70px;height:20px;float:left;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;text-align:left">职业：</p>
				<select id="industry" name="job.industryId" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:130;top:0;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option value=0>行业</option>
					<c:forEach items="${sessionScope.industries }" var="industry">
						<option value="${industry.industryId }"
							<c:if test="${sessionScope.jobQueryVo.job.industryId==industry.industryId}">selected</c:if>>${industry.industryName
							}</option>
					</c:forEach>
				</select> <select id="type" name="typeId" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:290;top:0;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option value=0>分类</option>
					<c:if test="${sessionScope.childrenIndustries!=null }">
						<c:forEach items="${sessionScope.childrenIndustries }"
							var="industry">
							<option value="${industry.industryId }"
								<c:if test="${sessionScope.jobQueryVo.typeId==industry.industryId}">selected</c:if>>${industry.industryName
								}</option>
						</c:forEach>
					</c:if>
				</select>
				<p
					style="position:absolute;top:32;left:30;width:70px;height:20px;float:left;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;text-align:left">地区：</p>
				<select id="province" name="province" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:130;top:40;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>省份</option>
					<option value=广东省
						<c:if test="${sessionScope.jobQueryVo.province=='广东省'}">selected</c:if>>广东省</option>
					<option value=河北省
						<c:if test="${sessionScope.jobQueryVo.province=='河北省'}">selected</c:if>>河北省</option>
				</select> <select id="city" name="city" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:290;top:40;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>城市</option>
					<option value=北京市
						<c:if test="${sessionScope.jobQueryVo.city=='北京市'}">selected</c:if>>北京市</option>
					<option value=上海市
						<c:if test="${sessionScope.jobQueryVo.city=='上海市'}">selected</c:if>>上海市</option>
					<option value=广州市
						<c:if test="${sessionScope.jobQueryVo.city=='广州市'}">selected</c:if>>广州市</option>
				</select>
				<p
					style="position:absolute;top:-17;left:530;width:70px;height:20px;float:left;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;text-align:left">热门搜索：</p>
				<p class="link_c"
					style="position:absolute;top:10;left:530;width:350px;height:20px;float:left;text-align:left;">
					<a href="#">Java</a>&nbsp;&nbsp;<a href="#">产品经理</a>&nbsp;&nbsp;<a
						href="#">室内设计师</a>&nbsp;&nbsp;<a href="#">保险</a>&nbsp;&nbsp;<a
						href="#">PHP</a>&nbsp;&nbsp;<a href="#">UI设计师</a>
				</p>
				<p class="link_c"
					style="position:absolute;top:35;left:530;width:350px;height:20px;float:left;text-align:left;">
					<a href="#">腾讯</a>&nbsp;&nbsp;<a href="#">网易</a>&nbsp;&nbsp;<a
						href="#">阿里巴巴</a>&nbsp;&nbsp;<a href="#">淘宝</a>&nbsp;&nbsp;<a
						href="#">京东</a>&nbsp;&nbsp;<a href="#">宜信</a>&nbsp;&nbsp;<a
						href="#">海尔</a>
				</p>
			</div>
		</div>
		<div class="framemain" style="position:relative;">
			<div
				style="position:absolute;top:0;left:-21;width:992px;height:2042px;float:left;">
				<img
					src="${pageContext.request.contextPath}/images/job/framemain.png"
					width="992" height="2042" alt="" />
			</div>
			<div
				style="position:absolute;top:21;left:0;width:950px;height:2000px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950;height:50;float:left">
					<div
						style="position:absolute;top:10;left:30;width:8;height:30;float:left">
						<img
							src="${pageContext.request.contextPath}/images/job/titlehead.png"
							width="8" height="30" alt="" />
					</div>
					<div
						style="position:absolute;top:10;left:40;width:192;height:30;float:left">
						<p
							style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">搜索结果</p>
					</div>
					<div
						style="position:absolute;left:200;top:10;width:450px;height:30px;float:left;">
						<p
							style="margin:0;position:absolute;top:5;left:10;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;">条件筛选：</p>
						<select id="time" name="time" class="form-control"
							onmouseover="this.style.borderColor='#3d7d52'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:100;top:0;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
							<option value=0>发布时间</option>
							<option value=1
								<c:if test="${sessionScope.jobQueryVo.time eq 1 }">selected</c:if>>一天内</option>
							<option value=2
								<c:if test="${sessionScope.jobQueryVo.time eq 2 }">selected</c:if>>一周内</option>
							<option value=3
								<c:if test="${sessionScope.jobQueryVo.time eq 3 }">selected</c:if>>一月内</option>
							<option value=4
								<c:if test="${sessionScope.jobQueryVo.time eq 4 }">selected</c:if>>不限</option>
						</select> <select id="salary" name="salary" class="form-control"
							onmouseover="this.style.borderColor='#3d7d52'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:260;top:0;float:left;width:150px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
							<option value=0>月薪范围</option>
							<option value=1
								<c:if test="${sessionScope.jobQueryVo.salary eq 1 }">selected</c:if>>2000以下</option>
							<option value=2
								<c:if test="${sessionScope.jobQueryVo.salary eq 2 }">selected</c:if>>2000-4000</option>
							<option value=3
								<c:if test="${sessionScope.jobQueryVo.salary eq 3 }">selected</c:if>>4000-6000</option>
							<option value=4
								<c:if test="${sessionScope.jobQueryVo.salary eq 4 }">selected</c:if>>6000-8000</option>
							<option value=5
								<c:if test="${sessionScope.jobQueryVo.salary eq 5 }">selected</c:if>>8000-10000</option>
							<option value=6
								<c:if test="${sessionScope.jobQueryVo.salary eq 6 }">selected</c:if>>10000以上</option>
						</select>
					</div>
					<div
						style="position:absolute;top:10;right:30;width:110;height:30;float:left">
						<p
							style="margin:0;position:absolute;top:5;left:10;font-family:微软雅黑;font-size: 14px; color: #6b6b6b;">共
							${sessionScope.page.recordCount }条结果</p>
					</div>
				</div>
				<div
					style="position:absolute;top:60;left:25;width:900;height:1;float:left">
					<img src="${pageContext.request.contextPath}/images/job/line.png"
						width="900" height="1" alt="" />
				</div>
				<div id="div1"
					style="position:absolute;top:61;left:0;width:950;height:1939;float:left">
					<c:forEach items="${sessionScope.page.recordList }" var="job"
						varStatus="num">
						<div
							style="position:absolute;top:${(num.count-1)*115};left:0;width:950px;height:115px;float:left;">
							<div
								style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
								<a href="#"><img style="width:160;height:80;"
									src="${pageContext.request.contextPath}/images/job/brand5.png"
									alt="" /> </a>
							</div>
							<div
								style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
								<p class="link_a"
									style="margin: 0; position: absolute; top: 17; left: 20; ">
									<a href="#">${job.companyName }</a> · <a href="#">${job.jobName
										}</a>
								</p>
								<p class="text_a"
									style="margin:0;position:absolute;top:47;left:20;">
									月薪：${job.jobSalary }元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
										href="#">${job.companyLocation }</a> - <a href="#">${job.industryName
										}</a>
								</p>
								<p class="text_a"
									style="margin:0;position:absolute;top:72;left:20;">地址：${job.worksite
									}</p>
							</div>
						</div>
					</c:forEach>

					<div
						style="position:absolute;bottom:10;left:250;width:500px;height:50px;float:left;">
						<p class="link_a" id="links"
							style="position:absolute;left:80;top:-3;width:200;float:left;">
							${page.links }</p>
						<p style="position:absolute;left:280;top:-3;width:50;">跳转到</p>
						<input class="form-control" name="pageNum" type="text"
							id="pageNum" placeHolder="页数"
							onmouseover="this.style.borderColor='#3d7d52'"
							onmouseout="this.style.borderColor=''"
							style="position:absolute;left:330;top:3;float:left;width:50px; height:35px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
						<p class="link_a"
							style="position:absolute;right:80;top:-3;width:30;float:left;">
							<a href="javascript:void(0)" id="forwordByPagenum">GO</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="framebottom1" style="position:relative;">
		<div
			style="position:absolute;top:20;left:25;width:900;height:1;float:left">
			<img src="${pageContext.request.contextPath}/images/job/line.png"
				width="900" height="1" alt="" />
		</div>
		<div
			style="position:absolute;top:40;left:40;width:870px;height:100px;float:left;">
			<p
				style="margin: 0; position: absolute; top: 0; left: 0;  font-size: 14px; font-family:微软雅黑;color: #3d7d52; font-weight: ">常用链接：</p>
			<p class="link_b"
				style="margin: 0; position: absolute; top: 0; left: 100;  ">
				<a href="#">北京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">上海</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">广州</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">深圳</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">南京</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">杭州</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">天津</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">青岛</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">成都</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">重庆</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">武汉</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">厦门</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">郑州</a>
			</p>
			<p
				style="margin: 0; position: absolute; top:40; left: 0;  font-size: 14px; font-family:微软雅黑;color: #3d7d52; font-weight:">热门职位：</p>
			<p class="link_b"
				style="margin: 0; position: absolute; top: 40; left: 100; ">
				<a href="#">翻译</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">保险</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">销售</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">金融</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">银行</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">数据分析</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">结构工程师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">UI设计师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">产品</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">人力资源</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">律师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">营养师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">活动策划</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">网络工程师</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">物业管理</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">包装设计</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">运营</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">技术总监</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">查看更多</a>
			</p>
		</div>
		<div
			style="position:absolute;top:143;left:25;width:900;height:1;float:left">
			<img src="${pageContext.request.contextPath}/images/job/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>

	<div class="framebottom2" style="position:relative;">
		<div
			style="position:absolute;top:62.5;left:54;width:125px;height:125px;float:left;">
			<div
				style="position:absolute;top:15.5;left:36;width:50px;height:50px;float:left;">
				<img src="${pageContext.request.contextPath}/images/job/phone.png"
					width="50" height="50" alt="" />
			</div>
			<div class="texttitle"
				style="position:absolute;top:68;left:-12.5;width:150px;height:20px;float:left;">
				服务热线 (免长话费)<br />
			</div>
			<div class="textnormal"
				style="position:absolute;top:90;left:0;width:125px;height:40px;float:left;">
				400-6838-789<br /> 工作日 9:00-19:00<br />
			</div>
		</div>
		<div
			style="position:absolute;top:62.5;left:241px;width:125px;height:125px;float:left;">
			<div class="texttitle"
				style="position:absolute;top:15.5;text-align:left;width:125px;height:20px;float:left;font-weight:normal;">
				简介
				<div class="textnormal"
					style="position:absolute;top:22;text-align:left;width:130px;height:80px;float:left;line-height:25px;font-weight:normal;">
					<a href="a">猎聘网简介</a><br /> <a href="b">产品服务</a><br /> <a
						href="c">创新优势</a><br /> <a href="d">联系我们</a><br />
				</div>
			</div>
		</div>
		<div
			style="position:absolute;top:62.5;left:427;width:125px;height:125px;float:left;">
			<div class="texttitle"
				style="position:absolute;top:15.5;text-align: left;width:125px;height:20px;float:left;font-weight:normal;">
				帮助
				<div class="textnormal"
					style="position:absolute;top:22;text-align:left;width:130px;height:80px;float:left;line-height:25px;font-weight:normal;">
					<a href="a">经理人帮助</a><br /> <a href="b">用户注册</a><br /> <a
						href="c">关于您的简历</a><br /> <a href="d">关于职位</a><br />
				</div>
			</div>
		</div>
		<div
			style="position:absolute;top:62.5;left:614;width:125px;height:125px;float:left;">
			<div class="texttitle"
				style="position:absolute;top:15.5;text-align: left;width:125px;height:20px;float:left;font-weight:normal;">
				共赢
				<div class="textnormal"
					style="position:absolute;top:22;text-align: left;width:130px;height:80px;float:left;line-height:25px;font-weight:normal;">
					<a href="a">网站合作</a><br /> <a href="b">用户协议</a><br /> <a href="c">网站地图</a><br />
					<a href="d">意见反馈</a><br />
				</div>
			</div>
		</div>
		<div
			style="position:absolute;top:62.5;left:800;width:125px;height:125px;float:left;">
			<div class="texttitle"
				style="position:absolute;top:15.5;left:0;text-align: left;width:125px;height:20px;float:left;font-weight:normal;">
				导航
				<div class="textnormal"
					style="position:absolute;top:22;left:0;text-align: left;width:130px;height:80px;float:left;line-height:25px;font-weight:normal;">
					<a href="a">职位大全</a><br /> <a href="b">招聘职位</a><br /> <a href="c">企业名录</a><br />
					<a href="d">城市列表</a><br />
				</div>
			</div>
		</div>
	</div>
	<div class="frametail"
		style="position:relative;text-align: center; font-size: 10px; line-height:25px;font-weight:normal;;">
		京ICP备09083200号 京ICP证070419号 人才服务许可证:RC0710280 京公网安备:11010502026763<br />
		Copyright©2000-2016 liepin.com All Rights Reserved<br />
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.banner.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/job/job.js"></script>
</body>
</html>
