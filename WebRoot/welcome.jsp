<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'welcome.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/welcome/jquery.fullPage.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/welcome/animate.min.css"
	type="text/css"></link>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/welcome/welcome.css"
	type="text/css"></link>
</head>

<body>
	<div class="pagescroll-hd">
		<div class="freamheadmid" style="position:relative">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="${pageContext.request.contextPath}/index.jsp"><img
					src="${pageContext.request.contextPath}/images/welcome/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:110;top:10px;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('person','','${pageContext.request.contextPath}/images/welcome/person2.png',1)"><img
					src="${pageContext.request.contextPath}/images/welcome/person.jpg"
					alt="" width="80" height="30" id="person"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="${pageContext.request.contextPath}/company/index.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/welcome/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/welcome/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>
	<div id="pagescroll">
		<div class="section section1 active">
			<div class="inner">
				<div id="framemain1" style="position:relative;width:950;">
					<div id="frame1_1" style="position:absolute;top:35%;left:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/left-line.png"
							width="200" height="400" alt="" />
					</div>
					<div id="frame1_2" style="position:absolute;top:30%;left:248">
						<img
							src="${pageContext.request.contextPath}/images/welcome/s1_h.png"
							width="454" height="227" alt="" />
					</div>
					<div id="frame1_3" style="position:absolute;top:20%;right:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/right-line.png"
							width="141" height="400" alt="" />
					</div>
					<div id="frame1_4"
						style="position:absolute;width:300;height:30;bottom:15%;left:325">
						<img
							src="${pageContext.request.contextPath}/images/welcome/mouse.png"
							width="31" height="50" alt="" />
					</div>
					<div id="frame1_5"
						style="position:absolute;width:520;top:65%;left:215;text-align:left">
						<p3>&nbsp;&nbsp;职来网1.0版——2016年9月正式发布的免费分类式招聘网站,1000+万高薪职聘岗位，1000+万优秀人才，专业的管理团队，高知名度的品牌优势；在这里，无论是找工作还是找人才，职来网都可以帮到你。</p3>
					</div>
					<div id="frame1_6"
						style="position:absolute;width:300;height:30;bottom:5%;left:325">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
				</div>
				<p class="clear"></p>
			</div>
		</div>
		<div class="section section2">
			<div class="inner">
				<div id="framemain2" style="position:relative;width:950;">
					<div id="frame2_1"
						style="opacity:0;position:absolute;top:33%;left:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/title22.png"
							width="455" height="108" alt="" />
					</div>
					<div id="frame2_2"
						style="position:absolute;width:300;bottom:5%;left:325">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
					<div id="frame2_3"
						style="opacity:0;position:absolute;width:435;bottom:33%;left:-90;text-align:left">
						<p3>&nbsp;&nbsp;职来网在服务上创新的同时，沿用了市场上传统的简历投递招聘方式，即求职者向意向岗位投递简历，企业用户管理投递来的简历信息的招聘方式，为双向用户提供最易用、最快捷的体验。<br />
						</p3>
					</div>
				</div>
			</div>
		</div>
		<div class="section section3">
			<div class="inner">
				<div id="framemain3" style="position:relative;width:950;">
					<div id="frame3_1"
						style="opacity:0;position:absolute;top:33%;left:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/title33.png"
							width="511" height="107" alt="" />
					</div>
					<div id="frame3_2"
						style="position:absolute;width:300;bottom:5%;left:325;color:#FFFFFF">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
					<div id="frame3_3"
						style="opacity:0;position:absolute;width:491;bottom:33%;left:-90;text-align:left;">
						<p3>&nbsp;&nbsp;1000万+的岗位信息和简历信息，由职来网团队人工审核，为你减少冗余无效信息，提升招聘组织管理和候选人的筛选效率。<br />
						<br />
						&nbsp;&nbsp;如此高效迅速，让企业在运营中更多地投入到业务中去，减少在人力资源方面的时间成本。</p3>
					</div>
				</div>
			</div>
		</div>
		<div class="section section4">
			<div class="inner">
				<div id="framemain4" style="position:relative;width:950;">
					<div id="frame4_1"
						style="opacity:0;position:absolute;top:33%;left:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/title44.png"
							width="475" height="114" alt="" />
					</div>
					<div id="frame4_2"
						style="position:absolute;width:300;bottom:5%;left:325;">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
					<div id="frame4_3"
						style="opacity:0;position:absolute;width:455;bottom:33%;left:-90;text-align:left;">
						<p>&nbsp;&nbsp;海量优秀人才和知名企业进驻，覆盖更多优质的候选人和职位信息，面向各企业、机构的管理决策层及行业内资深专业人员。</p>
					</div>
				</div>
			</div>
		</div>
		<div class="section section5">
			<div class="inner">
				<div id="framemain5" style="position:relative;width:950;">
					<div id="frame5_1"
						style="opacity:0;position:absolute;top:33%;right:-100">
						<img
							src="${pageContext.request.contextPath}/images/welcome/title55.png"
							width="495" height="110" alt="" />
					</div>
					<div id="frame5_2"
						style="position:absolute;width:300;bottom:5%;left:325;color:#fff">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
					<div id="frame5_3"
						style="opacity:0;position:absolute;width:475;bottom:33%;right:-90;text-align:left;">
						<p3>&nbsp;&nbsp;简约大方的扁平设计，给你带来更舒服更爽心悦目的视觉享受。<br />
						<br />
						&nbsp;&nbsp;通过对界面的整体风格设计、重要信息的视觉化处理以及元素本身的视觉传达优化，来实现产品流程设计和交互行为塑造。从视觉的角度出发，让用户无需多想，直接通过感官与产品进行交互。</p3>
					</div>
				</div>
			</div>
		</div>
		<div class="section section6">
			<div class="inner">
				<div id="framemain6" style="position:relative;width:950;">
					<div id="frame6_1"
						style="opacity:0;position:absolute;top:25%;right:0">
						<img
							src="${pageContext.request.contextPath}/images/welcome/zero.com2.png"
							width="200" alt="" />
					</div>
					<div id="frame6_2"
						style="opacity:0;position:absolute;top:48%;left:191">
						<img
							src="${pageContext.request.contextPath}/images/welcome/s6_h.png"
							width="567" height="48" alt="" />
					</div>
					<div id="frame6_3"
						style="position:absolute;width:300;bottom:5%;left:325;color:#fff">
						<p2>Copyright©2016 zero.com All Rights Reserved.</p2>
					</div>
					<div id="frame6_4"
						style="opacity:0;position:absolute;width:140;bottom:30%;left:405;">
						<a href="javascript:void(0)" onclick="showselect();"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enterr','','${pageContext.request.contextPath}/images/welcome/enter2.png',0)"><img
							src="${pageContext.request.contextPath}/images/welcome/enter.png"
							alt="" width="140" height="60" id="enterr"> </a>
					</div>
				</div>
			</div>
			<div id="framemain7"
				style="display:none;z-index:13;position:relative;">
				<img id="black" style="float:left;display:none"
					src="${pageContext.request.contextPath}/images/welcome/mask.png"
					width="1920" height="900" alt="" />
				<div id="select"
					style="position:relative;display:none;margin:0 auto;width:1200;height:100%">
					<div id="frame7_1"
						style="display:none;float:left;position:absolute;top:35%;left:0">
						<a
							href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('imjobhunter','','${pageContext.request.contextPath}/images/welcome/imjobhunter2.png',0)"><img
							src="${pageContext.request.contextPath}/images/welcome/imjobhunter.png"
							alt="" width="300" height="250" id="imjobhunter"> </a>
					</div>
					<div id="frame7_2"
						style="display:none;float:left;position:absolute;top:35%;left:450">
						<a href="${pageContext.request.contextPath}/company/index.action"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('imbusiness','','${pageContext.request.contextPath}/images/welcome/imbusiness2.png',0)"><img
							src="${pageContext.request.contextPath}/images/welcome/imbusiness.png"
							alt="" width="300" height="250" id="imbusiness"> </a>
					</div>
					<div id="frame7_3"
						style="display:none;float:left;position:absolute;top:35%;right:0">
						<a
							href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('imtraveler','','${pageContext.request.contextPath}/images/welcome/imtraveler2.png',0)"><img
							src="${pageContext.request.contextPath}/images/welcome/imtraveler.png"
							alt="" width="300" height="250" id="imtraveler"> </a>
					</div>
					<div id="frame7_4"
						style="display:none;float:left;position:absolute;bottom:20%;left:530">
						<a href="#" onclick="returnselect();"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('return','','${pageContext.request.contextPath}/images/welcome/return2.png',0)"><img
							src="${pageContext.request.contextPath}/images/welcome/return.png"
							alt="" width="140" height="60" id="return"> </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.easing.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.fullPage.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/welcome.js"></script>
</body>
</html>
