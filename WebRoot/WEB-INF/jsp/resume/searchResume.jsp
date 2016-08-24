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

<title>My JSP 'searchResume.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/resume/def1.css"
	type="text/css"></link>
</head>

<body>
	<div id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/resume/searchResume/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/resume/searchResume/top.png"
				alt="" width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"> <img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a href="${pageContext.request.contextPath}/company/index.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/manage/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a
					href="${pageContext.request.contextPath}/company/companyManage.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/companyRegister/manage/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/manage/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a href="javascript:void(0)" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/resume/resumeDetail/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/resume/resumeDetail/resume3.png"
					alt="" width="100" height="50" id="resume"> </a>
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
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/searchResume/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">搜索</h2>
				</div>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/searchResume/line.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<div class="fill" style="margin-top:10.7;width:920;height:40;">
				<p style="padding-top:13">关键词：</p>
				<form
					action="${pageContext.request.contextPath}/resume/findResumesByCondition.action"
					method="post" id="searchResumeForm">
					<input class="form-control" name="keyWord" type="text" id="keyWord"
						value="${requestScope.resumeQueryVo.keyWord }"
						placeHolder="输入姓名、学历等关键字：如本科"
						onmouseover="this.style.borderColor='#316392'"
						onmouseout="this.style.borderColor=''"
						style="top:5;width:500px; height:40px; " />
				</form>
				<a id="searchResumeBtn" href="javascript:void(0)"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('send','','${pageContext.request.contextPath}/images/resume/searchResume/search2.png',0)"><img
					style="position:absolute;right:0;float:right;top:0"
					src="${pageContext.request.contextPath}/images/resume/searchResume/search.png"
					alt="" width="100" height="50" id="send"> </a>
				<p id="clear"
					style="display:none;position:absolute;bottom:-60;right:8;height:20px;float:right">
					<a href="#">清空搜索条件</a>
				</p>
				<p id="hide"
					style="display:none;position:absolute;bottom:-30;right:8;height:20px;float:right">
					<a onClick="hidesearchdetail();" href="#">隐藏搜索条件</a>
				</p>
				<p id="show"
					style="cursor:pointer;position:absolute;bottom:-30;right:8;height:20px;float:right">
					<a href="javascript:void(0)" id="clearBtn"> 清空搜索条件</a>
				</p>
			</div>
			<div id="detail" class="fill"
				style="display:none;width:padding-top:10.7;width:750;height:240;">
				<p style="padding-top:14">职业：</p>
				<select id="year" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;">
					<option>行业</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id="month" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;left:260;">
					<option>分类</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
				<p style="padding-top:14">地区：</p>
				<select id="year2" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;top:50">
					<option>省份</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id="month2" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;top:50;left:260;">
					<option>城市</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
				<p style="padding-top:14">学历：</p>
				<select id="study" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;top:90">
					<option>不限</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <input type="checkbox"
					style="position:absolute;top:95;left:260;width:14px;height:14px;" />
				<p
					style="position:absolute;top:95;left:280;width:70px;height:20px;font-size: 12px;">及以上</p>
				<p style="padding-top:14">性别：</p>
				<select id="sex" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="width:150px; height:30px;top:130">
					<option>不限</option>
					<option>男</option>
					<option>女</option>
				</select>
				<p style="padding-top:14">年龄：</p>
				<input class="form-control" name="textfield" type="text" id="age"
					value="填写年龄下限" onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='填写年龄下限'){value =''}"
					onBlur="if (value ==''){value='填写年龄下限'}"
					style="width:150px; height:30px;top:170" /> <input
					class="form-control" name="textfield" type="text" id="age2"
					value="填写年龄上限" onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='填写年龄上限'){value =''}"
					onBlur="if (value ==''){value='填写年龄上限'}"
					style="width:150px; height:30px;top:170;left:260" />
				<p style="padding-top:14">工作年限：</p>
				<input class="form-control" name="textfield" type="text"
					id="workage" value="填写工作年限下限"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='填写工作年限下限'){value =''}"
					onBlur="if (value ==''){value='填写工作年限下限'}"
					style="width:150px; height:30px;top:210" /> <input
					class="form-control" name="textfield" type="text" id="workage2"
					value="填写工作年限上限" onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='填写工作年限上限'){value =''}"
					onBlur="if (value ==''){value='填写工作年限上限'}"
					style="width:150px; height:30px;top:210;left:260" />
			</div>
			<div class="fill" style="width:750;padding-top:10;">
				<p>
					热门搜索： <a style="margin-left:30" href="#">Java</a>&nbsp;&nbsp;<a
						href="#">产品经理</a>&nbsp;&nbsp;<a href="#">室内设计师</a>&nbsp;&nbsp;<a
						href="#">保险</a>&nbsp;&nbsp;<a href="#">PHP</a>&nbsp;&nbsp;<a
						href="#">UI设计师</a> <a href="#">腾讯</a>&nbsp;&nbsp;<a href="#">网易</a>&nbsp;&nbsp;<a
						href="#">阿里巴巴</a>&nbsp;&nbsp;<a href="#">淘宝</a>&nbsp;&nbsp;<a
						href="#">京东</a>&nbsp;&nbsp;<a href="#">宜信</a>&nbsp;&nbsp;<a
						href="#">海尔</a>
				</p>
			</div>
		</div>
		<div class="div_1" style="float:left;">
			<div class="fill_title">
				<div style="position:absolute;top:10;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/searchResume/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:10;width:192;height:30;float:left">
					<h2 style="margin:0;position:absolute;top:2;left:15;">结果</h2>
				</div>
				<p style="position:absolute;top:13;right:0;">共
					${sessionScope.page.recordCount } 条结果</p>
				<div
					style="position:absolute;top:50;left:-5;width:900;height:1;float:left">
					<img
						src="${pageContext.request.contextPath}/images/resume/searchResume/line.png"
						width="900" height="1" alt="" />
				</div>
			</div>
			<c:forEach items="${sessionScope.page.recordList }" var="resume"
				varStatus="num">
				<div class="fill" style="padding-top:10;">
					<a
						href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}"><img
						style="position:absolute;right:30;top:28;"
						src="${resume.uploadLocation }${resume.uploadName }" width="100"
						height="100" alt="" /> </a>
					<h1>
						<a
							href="${pageContext.request.contextPath}/resume/showResumeDetail.action?resumeId=${resume.resumeId}">${resume.jobhunterRealName
							}</a> · ${resume.jobhunterBirthday }
					</h1>
					<p style="word-spacing:10px">
						学历：${resume.jobhunterQualification }<br />
						所在地：${resume.jobhunterAddress }<br />
						目前状态：${resume.jobhuntEntranceStatus }
					</p>
				</div>
			</c:forEach>
			<div class="fill" style="padding-top:10.7">
				<p style="text-align:center;" id="links">${page.links }</p>
				<p style="margin-top:10;text-align:center;">
					跳转到<a style="margin-left:100" href="javascript:void(0)"
						id="forwordByPagenum">GO</a>
				</p>
				<input class="form-control" name="textfield" type="text"
					id="pageNum" onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;top:44;left:424;width:30;width:60;padding-right:0" />
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
				src="${pageContext.request.contextPath}/images/resume/searchResume/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/resume/searchResume/phone.png"
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
				src="${pageContext.request.contextPath}/images/resume/searchResume/line.png"
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
		src="${pageContext.request.contextPath}/js/resume/searchResume.js"></script>
</body>
</html>
