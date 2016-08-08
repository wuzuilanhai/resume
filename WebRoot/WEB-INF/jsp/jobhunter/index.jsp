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

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0"
	onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/jobhunterRegister/index/job2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/resume2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/business2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/QQ2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/sina2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/facebook2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/weixin2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/internet2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/finance2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/consume2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/search2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png','${pageContext.request.contextPath}/images/jobhunterRegister/index/top2.png')">
	<div id="scroll">
		<div id="toTop" class="scrollItem">
			<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('top','','${pageContext.request.contextPath}/images/jobhunterRegister/index/top2.png',1)"><img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/top.png"
				alt="" width="30" height="30" id="top"> </a> 回到顶部
		</div>
	</div>
	<div class="framehead">
		<div class="frameheadmid" style="position:relative;">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="Untitled-1.html"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a href="Untitled-1.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/jobhunterRegister/index/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/mainpage3.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/jobhunterRegister/index/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/jobhunterRegister/index/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/resume.png"
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
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/jobhunterRegister/index/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>
	<div class="framesearch " style="position:relative;">
		<div class="banner" style="position:relative;padding:0;">
			<ul class="banList" style="position: absolute;margin:0px">
				<li class="active"
					style="position: absolute; left: 0; top: 0;padding:0px"><img
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
	<div class="framemain" style="position:relative;">
		<div class="img_l" id="left"
			style="position:absolute;top:0;left:-40;width:32px;height:162px;float:left;cursor:pointer;">
			<img style="position:absolute;top:56"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/left.png"
				alt="" />
		</div>
		<div class="frameshow" style="position:absolute">
			<div class="framenoshow" style="position:absolute">
				<div class="type" style="top:0;left:1;position:absolute">
					<a href="javascript:void(0)"
						onclick="document.getElementById('1F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('internet','','${pageContext.request.contextPath}/images/jobhunterRegister/index/internet2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/internet.png"
						alt="" width="237" height="162" id="internet"> </a>
				</div>
				<div class="type" style="position:absolute;top:0;left:238;">
					<a href="javascript:void(0)"
						onclick="document.getElementById('2F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('finance','','${pageContext.request.contextPath}/images/jobhunterRegister/index/finance2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/finance.png"
						alt="" width="242" height="162" id="finance"> </a>
				</div>
				<div class="type" style="position:absolute;top:0;left:475">
					<a href="javascript:void(0)"
						onclick="document.getElementById('3F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('consume','','${pageContext.request.contextPath}/images/jobhunterRegister/index/consume2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/consume.png"
						alt="" width="242" height="162" id="consume"> </a>
				</div>
				<div class="type" style="position:absolute;top:0;left:712;">
					<a href="javascript:void(0)"
						onclick="document.getElementById('4F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('construction','','${pageContext.request.contextPath}/images/jobhunterRegister/index/construction2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/construction.png"
						alt="" width="237" height="162" id="construction"> </a>
				</div>
				<div class="type" style="position:absolute;top:0;left:949;">
					<a href="javascript:void(0)"
						onclick="document.getElementById('5F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('car','','${pageContext.request.contextPath}/images/jobhunterRegister/index/car2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/car.png"
						alt="" width="237" height="162" id="car"> </a>
				</div>
				<div class="type" style="position:absolute;top:0;left:1186;">
					<a href="javascript:void(0)"
						onclick="document.getElementById('6F').scrollIntoView();"
						onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('medical','','${pageContext.request.contextPath}/images/jobhunterRegister/index/medical2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/medical.png"
						alt="" width="237" height="162" id="medical"> </a>
				</div>
			</div>
		</div>
		<div class="img_r" id="right"
			style="position:absolute;top:0;right:-40;width:32px;height:162px;float:left;cursor:pointer;">
			<img style="position:absolute;top:56"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/right.png"
				alt="" />
		</div>
		<div class="framesearch"
			style="position:absolute;top:162;left:0;width:950px;height:50px;float:left;">
			<input class="form-control" name="textfield" type="text" id="search"
				value="输入职业关键字：如 销售总监"
				onmouseover="this.style.borderColor='#3d7d52'"
				onmouseout="this.style.borderColor=''"
				onFocus="if (value =='输入职业关键字：如 销售总监'){value =''}"
				onBlur="if (value ==''){value='输入职业关键字：如 销售总监'}"
				style="position:absolute;left:0;top:0;float:left;width:400px; height:50px; font-family:微软雅黑;font-size: 16px; color: #989898;" />
			<a href="#" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('search1','','${pageContext.request.contextPath}/images/jobhunterRegister/index/search2.png',1)"><img
				style="position:absolute;top:0;left:425;width:100px;height:50px;float:left;"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/search.png"
				alt="" width="100" height="50" id="search1"> </a>
			<p class="link_c"
				style="position:absolute;top:-15;left:550;width:350px;height:25px;float:left;text-align:left;">
				<a href="#">Java</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">产品经理</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">室内设计师</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">保险</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">PHP</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">UI设计师</a>
			</p>
			<p class="link_c"
				style="position:absolute;top:15;left:550;width:350px;height:25px;float:left;text-align:left;">
				<a href="#">腾讯</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">网易</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">阿里巴巴</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">淘宝</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">京东</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">宜信</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
					href="#">海尔</a>
			</p>
		</div>
	</div>
	<div class="framemain2" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">广州热门职位</p>
				</div>
				<div
					style="position:absolute;top:15;left:690;width:20;height:20;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/down.png"
						width="20" height="20" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:714;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">更多热门职位</p>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:500px;float:left;">
				<c:forEach items="${sessionScope.jobCustoms1 }" var="jobCustom"
					varStatus="num">
					<div
						style="position:absolute;top:${(num.count-1)*115+10};left:0;width:650px;height:115px;float:left;">
						<div
							style="position:absolute;top:7.5;left:20;width:200px;height:100px;float:left;overflow:hidden;">
							<a href="#"><img
								style="position:absolute;top:10; left:20;width:160; height:80;"
								src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand1.png"
								alt="" /> </a>
						</div>
						<div
							style="position:absolute;top:0;left:220;width:430px;height:115px;float:left;">
							<p class="link_a"
								style="margin: 0; position: absolute; top:17; left: 20;">
								<a href="#">${jobCustom.companyName}</a> · <a href="#">${jobCustom.jobName}</a>
							</p>
							<p class="text_a"
								style="margin:0;position:absolute;top:47;left:20;">月薪：${jobCustom.jobSalary}元</p>
							<p class="text_a"
								style="margin:0;position:absolute;top:72;left:20;">
								<a href="#">${jobCustom.worksite}</a> - <a href="#">${jobCustom.industryName}</a>
							</p>
						</div>
					</div>
				</c:forEach>

				<div
					style="position:absolute;top:15;right:300;width:1px;height:450px;float:left;">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line2.png"
						width="1" height="450" alt="" />
				</div>
				<div
					style="position:absolute;top:0;right:0;width:299px;height:500px;float:left;">
					<c:forEach items="${sessionScope.jobCustoms2 }" var="jobCustom2"
						varStatus="num2">
						<div
							style="position:absolute;top:${(num2.count-1)*80};right:0;width:299px;height:70px;float:left;">
							<p class="link_a"
								style="margin:0;position:absolute;top:10;left:35;">
								<a href="#">${jobCustom2.companyName}</a> · <a href="#">${jobCustom2.jobName}</a>
							</p>
							<p class="text_a"
								style="margin:0;position:absolute;bottom:15;left:35;">
								20-30万&nbsp;&nbsp;&nbsp;<a href="#">${jobCustom2.worksite}</a> -
								<a href="#">${jobCustom2.industryName}</a>
							</p>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<div name="1F" id="1F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">互联网·IT</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入互联网·IT专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter1','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter1"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div name="2F" id="2F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">金融业</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入金融业专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter2','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter2"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div name="3F" id="3F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">快消行业</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入快消行业专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter5','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter5"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div name="4F" id="4F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">建筑业</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入建筑业专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter3','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter3"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div name="5F" id="5F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">汽车·制造业</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入汽车·制造专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter4','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter4"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div name="6F" id="6F" class="framemain3" style="position:relative;">
		<div
			style="position:absolute;top:0;left:-21;width:992px;height:592px;float:left;">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/framehot.png"
				width="992" height="592" alt="" />
			<div
				style="position:absolute;top:30;left:21;width:950;height:50;float:left">
				<div
					style="position:absolute;top:10;left:30;width:8;height:30;float:left">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/index/titlehead.png"
						width="8" height="30" alt="" />
				</div>
				<div
					style="position:absolute;top:10;left:40;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:2;left:15;font-family:微软雅黑;font-size: 18px; color: #3d7d52;font-weight:bold">医疗·化工</p>
				</div>
				<div
					style="position:absolute;top:10;left:744;width:192;height:30;float:left">
					<p
						style="margin:0;position:absolute;top:4;left:10;font-family:微软雅黑;font-size: 16px; color: #3d7d52;">进入医疗·化工专区</p>
					<div style="position:absolute;top:5;left:160;">
						<a href="#" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('enter6','','${pageContext.request.contextPath}/images/jobhunterRegister/index/enter2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/enter.png"
							alt="" width="20" height="20" id="enter6"> </a>
					</div>
				</div>
			</div>
			<div
				style="position:absolute;top:80;left:46;width:900;height:1;float:left">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
					width="900" height="1" alt="" />
			</div>
			<div
				style="position:absolute;top:81;left:21;width:950px;height:489px;float:left;">
				<div
					style="position:absolute;top:10;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;top:7;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;text-align:center;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand5.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20; ">
							<a href="#">科易光电</a> · <a href="#">PHP工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：12-18万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市天河区科韵路科创大厦8楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:125;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand6.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">百度</a> · <a href="#">JAVA工程师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：20-35万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市萝岗区光谱大道万科云大楼A栋12层-15层开发部</p>
					</div>
				</div>
				<div
					style="position:absolute;top:240;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand7.jpg"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">阿里巴巴</a> · <a href="#">前端设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20; ">
							年薪：20-25万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市白云区开创大道阿里巴巴园区D栋3楼</p>
					</div>
				</div>
				<div
					style="position:absolute;top:355;left:0;width:950px;height:115px;float:left;">
					<div
						style="position:absolute;text-align:center;top:7.5;right:20;width:200px;height:100px;float:left;overflow:hidden;padding-top:10;">
						<a href="#"><img style="width:160;height:80;"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/index/brand8.png"
							alt="" /> </a>
					</div>
					<div
						style="position:absolute;top:0;left:20;width:700px;height:115px;float:left;">
						<p class="link_a"
							style="margin: 0; position: absolute; top: 17; left: 20;">
							<a href="#">腾讯</a> · <a href="#">交互设计师</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:47;left:20;">
							年薪：14-20万&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">广东·广州</a>
							- <a href="#">互联网·IT</a>
						</p>
						<p class="text_a"
							style="margin:0;position:absolute;top:72;left:20;">地址：广东省广州市海珠区江南大道新云大厦23楼</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="framebottom1" style="position:relative;">
		<div
			style="position:absolute;top:20;left:25;width:900;height:1;float:left">
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
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
			<img
				src="${pageContext.request.contextPath}/images/jobhunterRegister/index/line.png"
				width="900" height="1" alt="" />
		</div>
	</div>
	<div class="framebottom2" style="position:relative;">
		<div
			style="position:absolute;top:62.5;left:54;width:125px;height:125px;float:left;">
			<div
				style="position:absolute;top:15.5;left:36;width:50px;height:50px;float:left;">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/index/phone.png"
					width="50" height="50" alt="" />
			</div>
			<div class="texttitle"
				style="position:absolute;top:68;left:0;width:130px;height:20px;float:left;">
				服务热线 (免长话费)<br />
				<div class="textnormal"
					style="position:absolute;top:25;width:130px;height:40px;float:left;">
					400-6838-789<br /> 工作日 9:00-19:00<br />
				</div>
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
		src="${pageContext.request.contextPath}/js/jobhunterRegister/index.js"></script>
</body>
</html>
