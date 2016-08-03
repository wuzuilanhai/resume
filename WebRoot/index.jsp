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

<title>简历首站</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/index/index.css" type="text/css"></link>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0"
	onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/index/job2.png','${pageContext.request.contextPath}/images/index/resume2.png','${pageContext.request.contextPath}/images/index/hunter_login2.png','${pageContext.request.contextPath}/images/index/business_login2.png','${pageContext.request.contextPath}/images/index/login2.png','${pageContext.request.contextPath}/images/index/business2.png','${pageContext.request.contextPath}/images/index/QQ2.png','${pageContext.request.contextPath}/images/index/sina2.png','${pageContext.request.contextPath}/images/index/facebook2.png','${pageContext.request.contextPath}/images/index/weixin2.png','${pageContext.request.contextPath}/images/index/renren2.png')">

	<div class="framehead">
		<div class="frameheadmid" style="position:relative;">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="a"><img
					src="${pageContext.request.contextPath}/images/index/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('首页','','${pageContext.request.contextPath}/images/index/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/index/mainpage.png"
					alt="" width="100" height="50" id="首页"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('职位','','${pageContext.request.contextPath}/images/index/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/job.png"
					alt="" width="100" height="50" id="职位"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('简历','','${pageContext.request.contextPath}/images/index/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/resume.png"
					alt="" width="100" height="50" id="简历"> </a>
			</div>
			<!--<div style="position:absolute;float:left;width:150;height:20;right:180;top:16">
                <select>
                  <option value="全国">全国（切换城市）</option>
                  <option value="广东省">广东省</option>
				</select>
                </div>-->
			<div
				style="position: absolute; float: left; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="">登录</a>/<a href="">注册</a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/index/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/index/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>

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
			<a href="#" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('hunter_login','','${pageContext.request.contextPath}/images/index/hunter_login2.png',1)"><img
				src="${pageContext.request.contextPath}/images/index/hunter_login.png"
				alt="" width="150" height="50" id="hunter_login"> </a>
		</div>
		<div id="div_login_business"
			style="z-index:10;position:absolute;float:left;width:150px;height:50px;top:25px;right:25px;">
			<a href="#" onMouseOut="MM_swapImgRestore()"
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
				style="position: absolute; float: left; width: 80px; height: 20px; top:40px; left: 50px; ">
				登录个人账号</div>
			<form id="form1"
				action="${pageContext.request.contextPath}/jobHunter/findJobHunterLogin.action"
				method="post">
				<div
					style="position: absolute; float: left; width: 80px; height: 20px; top:70px; left: 50px;">
					<input class="form-control" name="jobhunterName" type="text"
						id="textfield" onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''" placeHolder="用户名"
						style="width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
					<div id="jobhunterNameTip"></div>
				</div>

				<div
					style="position: absolute; float: left; width: 80px; height: 20px; top:110px; left: 50px;">
					<input class="form-control" name="jobhunterPassword" type="text"
						id="textfield" onmouseover="this.style.borderColor='#3d7d52'"
						onmouseout="this.style.borderColor=''" placeHolder="密码"
						style="width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
					<div id="jobhunterPasswordTip"></div>
				</div>

				<div id="findJobHunterBtn"
					style="position: absolute; float: left; width: 200px; height: 30px; top:170px; left: 50px;">
					<a href="#" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/index/login2.png',1)"><img
						src="${pageContext.request.contextPath}/images/index/login.png"
						alt="" width="200" height="30" id="login"> </a>
				</div>
			</form>
			<div class="textstyle"
				style="position: absolute; float: left; width: 100px; height: 20px; top:220px; left: 50px;">
				其他登录方式：</div>
			<div
				style="position: absolute; float: left; width: 165px; height: 20px; top:250px; left: 67.5px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('qq','','${pageContext.request.contextPath}/images/index/QQ2.png',1)"><img
					style="position:absolute;left:0px;"
					src="${pageContext.request.contextPath}/images/index/QQ.png" alt=""
					width="25" height="25" id="qq"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('sina','','${pageContext.request.contextPath}/images/index/sina2.png',1)"><img
					style="position:absolute;left:35px;"
					src="${pageContext.request.contextPath}/images/index/sina.png"
					alt="" width="25" height="25" id="sina"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('facebook','','${pageContext.request.contextPath}/images/index/facebook2.png',1)"><img
					style="position:absolute;left:70px;"
					src="${pageContext.request.contextPath}/images/index/facebook.png"
					alt="" width="25" height="25" id="facebook"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('weixin','','${pageContext.request.contextPath}/images/index/weixin2.png',1)"><img
					style="position:absolute;left:105px;"
					src="${pageContext.request.contextPath}/images/index/weixin.png"
					alt="" width="25" height="25" id="weixin"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('renren','','${pageContext.request.contextPath}/images/index/renren2.png',1)"><img
					style="position:absolute;left:140px;"
					src="${pageContext.request.contextPath}/images/index/renren.png"
					alt="" width="25" height="25" id="renren"> </a>
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
				onMouseOver="MM_swapImage('hunter_login','','${pageContext.request.contextPath}/images/index/dhh/hunter_login2.png',1)"><img
				src="${pageContext.request.contextPath}/images/index/dhh/hunter_login.png"
				alt="" width="150" height="50" id="hunter_login"> </a>
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
				style="position: absolute; float: left; width: 80px; height: 20px; top:40px; left: 50px; ">
				登录企业账号</div>
			<form action="" method="post">
				<div
					style="position: absolute; float: left; width: 80px; height: 20px; top:70px; left: 50px;">
					<input class="form-control" name="textfield" type="text"
						id="username" onmouseover="this.style.borderColor='#316392'"
						onmouseout="this.style.borderColor=''" placeHolder="企业名称"
						style="width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				</div>
				<div
					style="position: absolute; float: left; width: 80px; height: 20px; top:110px; left: 50px;">
					<input class="form-control" name="textfield" type="text"
						id="password" onmouseover="this.style.borderColor='#316392'"
						onmouseout="this.style.borderColor=''" placeHolder="密码"
						style="width:200px; height:25px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				</div>
				<div
					style="position: absolute; float: left; width: 200px; height: 30px; top:170px; left: 50px;">
					<a href="#" onMouseOut="MM_swapImgRestore()"
						onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/index/dhh/login2.png',1)"><img
						src="${pageContext.request.contextPath}/images/index/dhh/login.png"
						alt="" width="200" height="30" id="login"> </a>
				</div>
			</form>
			<div class="textstyle"
				style="position: absolute; float: left; width: 100px; height: 20px; top:220px; left: 50px;">
				其他登录方式：</div>
			<div
				style="position: absolute; float: left; width: 165px; height: 20px; top:250px; left: 67.5px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('qq','','${pageContext.request.contextPath}/images/index/dhh/QQ2.png',1)"><img
					style="position:absolute;left:0px;"
					src="${pageContext.request.contextPath}/images/index/dhh/QQ.png"
					alt="" width="25" height="25" id="qq"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('sina','','${pageContext.request.contextPath}/images/index/dhh/sina2.png',1)"><img
					style="position:absolute;left:35px;"
					src="${pageContext.request.contextPath}/images/index/dhh/sina.png"
					alt="" width="25" height="25" id="sina"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('facebook','','${pageContext.request.contextPath}/images/index/dhh/facebook2.png',1)"><img
					style="position:absolute;left:70px;"
					src="${pageContext.request.contextPath}/images/index/dhh/facebook.png"
					alt="" width="25" height="25" id="facebook"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('weixin','','${pageContext.request.contextPath}/images/index/dhh/weixin2.png',1)"><img
					style="position:absolute;left:105px;"
					src="${pageContext.request.contextPath}/images/index/dhh/weixin.png"
					alt="" width="25" height="25" id="weixin"> </a> <a href="#"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('renren','','${pageContext.request.contextPath}/images/index/dhh/renren2.png',1)"><img
					style="position:absolute;left:140px;"
					src="${pageContext.request.contextPath}/images/index/dhh/renren.png"
					alt="" width="25" height="25" id="renren"> </a>
			</div>
		</div>
	</div>

	<div class="framebottom" style="position:relative;">
		<div
			style="position:absolute;top:62.5;left:54;width:125px;height:125px;float:left;">
			<div
				style="position:absolute;top:15.5;left:36;width:50px;height:50px;float:left;">
				<img src="${pageContext.request.contextPath}/images/index/phone.png"
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
	<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="js/jquery.banner.js"></script>
	<script type="text/javascript" src="js/index/index.js"></script>
</body>
</html>
