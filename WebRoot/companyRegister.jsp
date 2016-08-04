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

<title>企业注册首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/companyRegister/companyRegister.css"
	type="text/css"></link>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0"
	onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/companyRegister/person2.png','${pageContext.request.contextPath}/images/companyRegister/next2.png')">

	<div class="framehead">
		<div class="frameheadmid" style="position:relative;">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="#"><img
					src="${pageContext.request.contextPath}/images/companyRegister/logo2.gif"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/mainpage2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/companyRegister/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/companyRegister/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; float: left; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="#">登录</a>/<a href="#">注册</a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('person','','${pageContext.request.contextPath}/images/companyRegister/person2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/person.jpg"
					alt="" width="80" height="30" id="person"> </a>
			</div>
		</div>
	</div>

	<form id="registerForm"
		action="${pageContext.request.contextPath}/company/addCompany.action"
		method="post">
		<div class="framemid" style="position:relative;" id="div1">
			<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/progress1.png"
					width="821" height="50" alt="" />
			</div>

			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">用户名：</p>
				<input class="form-control" name="textfield" type="text"
					id="username" placeHolder="填写登录名/用户名"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密码：</p>
				<input type="text" class="form-control"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;"
					value="填写登录密码" /> <input class="form-control" name="textfield"
					type="text" id="password" placeHolder="填写密码"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">重复密码：</p>
				<input class="form-control" name="textfield" type="text"
					id="password2" placeHolder="再次填写密码"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保手机：</p>
				<input class="form-control" name="textfield" type="text" id="phone"
					placeHolder="填写密保手机号"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保邮箱：</p>
				<input class="form-control" name="textfield" type="text" id="email"
					placeHolder="填写密保邮箱地址"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:360;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">验证码：</p>
				<input class="form-control" name="textfield" type="text"
					id="messageVC" placeHolder="请输入验证码"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='请输入短信提示的验证码'){value =''}"
					onBlur="if (value ==''){value='请输入短信提示的验证码'}"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div
				style="position:absolute;bottom:25;left:374;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('下一步','','${pageContext.request.contextPath}/images/companyRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/next.png"
					alt="" width="202" height="82" id="下一步"> </a>
			</div>

			<div
				style="position:absolute;right:150;top:200;width:200;height:80;float:left;">
				<img style="float:left;position:absolute;left:10"
					src="${pageContext.request.contextPath}/images/companyRegister/attention.png"
					width="38" height="38" alt="" />
				<p
					style="float:left;position:absolute;left:66;top:-8;font-size:16;font-weight:bold;"
					class="texttitle">猎聘保证：</p>
				<p
					style="float:left;position:absolute;left:0;top:34;text-align:left;"
					class="texttitle">
					个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
				</p>

			</div>
		</div>

		<div class="framemid" style="position:relative;" id="div2">
			<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/progress2.png"
					width="821" height="50" alt="" />
			</div>

			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">公司名称：</p>
				<input class="form-control" name="textfield" type="text"
					id="company" placeHolder="填写营业执照上的公司全称"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">所在地：</p>
				<select id="province" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>省份</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id="city" type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>城市</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>

			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">所属行业：</p>
				<select id='profession' type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>行业</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id='type' type="text" class="form-control"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>分类</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">联系人：</p>
				<input class="form-control" name="textfield" type="text"
					id="contact" placeHolder="填写联系人姓名"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">性别：</p>
				<!--<input type="text" class="form-control" style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" value=" 请输入短信提示的验证码"//>-->
				<table id="sexual"
					style="position:absolute;left:100;top:12;float:left;" width="200">
					<tr>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_0"> 男</label>
						</td>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_1"> 女</label>
						</td>
					</tr>
				</table>
			</div>

			<div style="position:absolute;top:360;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">手机号：</p>
				<input class="form-control" name="textfield" type="text"
					id="c_phone" placeHolder="填写联系人手机号"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div
				style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/companyRegister/previous2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/previous.png"
					alt="" width="202" height="82" id="previous"> </a>
			</div>

			<div
				style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
				<a href="Untitled-3.html" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next','','${pageContext.request.contextPath}/images/companyRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/next.png"
					alt="" width="202" height="82" id="next"> </a>
			</div>

			<div
				style="position:absolute;right:150;top:200;width:200;height:80;float:left;">
				<img style="float:left;position:absolute;left:10"
					src="${pageContext.request.contextPath}/images/companyRegister/attention.png"
					width="38" height="38" alt="" />
				<p
					style="float:left;position:absolute;left:66;top:-8;font-size:16;font-weight:bold;"
					class="texttitle">猎聘保证：</p>
				<p
					style="float:left;position:absolute;left:0;top:34;text-align:left;"
					class="texttitle">
					个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
				</p>

			</div>
		</div>
	</form>

	<div class="framemid" style="position:relative;" id="div3">
		<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
			<img
				src="${pageContext.request.contextPath}/images/companyRegister/progress3.png"
				width="821" height="50" alt="" />
		</div>
		<div style="position:absolute;top:206;left:315;width:320;height:138;">
			<img
				src="${pageContext.request.contextPath}/images/companyRegister/register.png"
				width="320" height="138" alt="" />
		</div>

		<div style="position:absolute;top:410;left:315;width:320;height:50;">
			<p
				style="text-align: center;font-size: 14px; color: #316392;font-weight:normal;">恭喜你注册成功，你可以：</p>
		</div>

		<div
			style="position:absolute;bottom:25;left:374;width:202;height:82;float:left;">
			<a href="#" onMouseOut="MM_swapImgRestore()"
				onMouseOver="MM_swapImage('publish','','${pageContext.request.contextPath}/images/companyRegister/publish2.png',1)"><img
				src="${pageContext.request.contextPath}/images/companyRegister/publish.png"
				alt="" width="202" height="82" id="publish"> </a>
		</div>
	</div>

	<div class="framebottom" style="position:relative;">
		<div
			style="position:absolute;top:62.5;left:54;width:125px;height:125px;float:left;">
			<div
				style="position:absolute;top:15.5;left:36;width:50px;height:50px;float:left;">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/phone.png"
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
	<script type="text/javascript"
		src="js/companyRegister/companyRegister.js"></script>
</body>
</html>
