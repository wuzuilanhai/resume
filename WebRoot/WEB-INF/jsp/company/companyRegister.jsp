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

			<div style="position:absolute;top:45;left:131;width:688;height:31;">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/progress1.png"
					width="688" height="31" alt="" />
			</div>


			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">用户名：</p>
				<input class="form-control" name="companyLoginName" type="text"
					id="companyLoginName" placeHolder="填写登录名/用户名"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="companyLoginNameTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密码：</p>
				<input class="form-control" name="companyPassword" type="password"
					id="companyPassword" placeHolder="填写密码"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="companyPasswordTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">重复密码：</p>
				<input class="form-control" name="companyPasswordRepeat"
					type="password" id="companyPasswordRepeat" placeHolder="再次填写密码"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="companyPasswordRepeatTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保手机：</p>
				<input class="form-control" name="phoneNumber" type="text"
					id="phoneNumber" placeHolder="填写密保手机号"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="phoneNumberTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保邮箱：</p>
				<input class="form-control" name="companyEmail" type="text"
					id="companyEmail" placeHolder="填写密保邮箱地址"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="companyEmailTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:360;left:136;width:370;height:50;"
				id="imgDiv">
				<p style="float:left;" class="textstyle">验证码：</p>
				<input class="form-control" name="validationImg" type="text"
					id="validationImg" placeholder="请输入验证码"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<dir id="validationImgTip"
					style="position:absolute;left:230;top:2;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></dir>
				<img alt="" src="${pageContext.request.contextPath}/valiImgUtils"
					id="valiImg" title="看不清，点击刷新"
					onclick="this.src=this.src+'?'+Math.random()"
					style="position:absolute;left:480;top:2;float:left;width:140px; height:50px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div id="next_btn_div1"
				style="position:absolute;bottom:25;left:374;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next1','','${pageContext.request.contextPath}/images/companyRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/next.png"
					alt="" width="202" height="82" id="next1"> </a>
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

		<div class="framemid" style="position:relative;display:none" id="div2">

			<div style="position:absolute;top:45;left:131;width:688;height:31;">
				<img
					src="${pageContext.request.contextPath}/images/companyRegister/progress2.png"
					width="688" height="31" alt="" />
			</div>


			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">公司名称：</p>
				<input class="form-control" name="companyName" type="text"
					id="companyName" placeHolder="填写营业执照上的公司全称"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="companyNameTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">所在地：</p>
				<select id="province" type="text" class="form-control"
					name="province" onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>省份</option>
					<option value=广东省>广东省</option>
					<option value=河北省>河北省</option>
				</select> <select id="city" type="text" class="form-control" name="city"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>城市</option>
					<option value=北京市>北京市</option>
					<option value=上海市>上海市</option>
					<option value=广州市>广州市</option>
				</select>
				<div id="companyLocationTip"
					style="position:absolute;left:295;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">所属行业：</p>
				<select id='industry' type="text" class="form-control"
					name="'industry'" onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>行业</option>
					<c:forEach items="${sessionScope.industries }" var="industry">
						<option value="${industry.industryId }">${industry.industryName
							}</option>
					</c:forEach>
				</select> <select id='type' type="text" class="form-control" name="type"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>分类</option>
				</select>
				<div id="industryIdTip"
					style="position:absolute;left:295;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">联系人：</p>
				<input class="form-control" name="chatterName" type="text"
					id="chatterName" placeHolder="填写联系人姓名"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="chatterNameTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">性别：</p>
				<table id="chatterSex"
					style="position:absolute;left:100;top:12;float:left; " width="200">
					<tr>
						<td><label> <input type="radio" name="chatterSex"
								value="男" id="RadioGroup1_0"> 男</label></td>
						<td><label> <input type="radio" name="chatterSex"
								value="女" id="RadioGroup1_1"> 女</label></td>
					</tr>
				</table>
				<div id="chatterSexTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:360;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">手机号：</p>
				<input class="form-control" name="chatterPhone" type="text"
					id="chatterPhone" placeHolder="填写联系人手机号"
					onmouseover="this.style.borderColor='#316392'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="chatterPhoneTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div id="previous_btn_div2"
				style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/companyRegister/previous2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/previous.png"
					alt="" width="202" height="82" id="previous"> </a>
			</div>

			<div id="next_btn_div2"
				style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next2','','${pageContext.request.contextPath}/images/companyRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/next.png"
					alt="" width="202" height="82" id="next2"> </a>
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

	<div class="framemid" style="position:relative;display:true" id="div3">

		<div style="position:absolute;top:45;left:131;width:688;height:31;">
			<img
				src="${pageContext.request.contextPath}/images/companyRegister/progress3.png"
				width="688" height="31" alt="" />
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
			style="position:absolute;bottom:-10;left:175;width:600;height:82;float:left;">
			<img style="position:absolute;left:50;"
				src="${pageContext.request.contextPath}/images/companyRegister/succeed1.png"
				width="84" height="57" alt="" /> <img
				style="position:absolute;bottom:25;left:260;"
				src="${pageContext.request.contextPath}/images/companyRegister/succeed2.png"
				width="84" height="56" alt="" /> <img
				style="position:absolute;right:50;"
				src="${pageContext.request.contextPath}/images/companyRegister/succeed3.png"
				width="84" height="56" alt="" />
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
