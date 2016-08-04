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

<title>个人注册首页</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="css/jobhunterRegister/jobhunterRegister.css" type="text/css"></link>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0"
	marginheight="0"
	onLoad="MM_preloadImages('${pageContext.request.contextPath}/images/jobhunterRegister/business2.png','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png')">

	<div class="framehead">
		<div class="frameheadmid" style="position:relative;">
			<div style="position:absolute;float:left;width:132;height:50;">
				<a href="" onclick="return false"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:182;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/jobhunterRegister/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:282;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/jobhunterRegister/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div
				style="position:absolute;float:left;width:100;height:50;left:382;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/jobhunterRegister/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; float: left; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="">登录</a>/<a href="">注册</a>
			</div>
			<div
				style="position:absolute;float:left;width:80;height:30;right:10;top:10px;">
				<a href="#" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/jobhunterRegister/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>

	<form id="registerForm" action="" method="post">

		<div class="framemid" style="position:relative;" id="div1">
			<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/progress.png"
					width="820" height="50" alt="" />
			</div>

			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">用户名：</p>
				<input class="form-control" name="jobhunterName" type="text"
					id="jobhunterName" placeholder="填写登录名/用户名"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobhunterNameTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密码：</p>

				<input class="form-control" name="jobhunterPassword" type="password"
					id="jobhunterPassword" placeholder="填写密码"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobhunterPasswordTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">重复密码：</p>
				<input class="form-control" name="jobhunterPasswordRepeat"
					type="password" id="jobhunterPasswordRepeat" placeholder="再次填写密码"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobhunterPasswordRepeatTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保手机：</p>
				<input class="form-control" name="jobhunterPhone" type="text"
					id="jobhunterPhone" placeholder="填写密保手机号"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobhunterPhoneTip"
					style="position:absolute;left:270;top:15;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 14px; color: #989898;"></div>
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">密保邮箱：</p>
				<input class="form-control" name="jobhunterEmail" type="text"
					id="jobhunterEmail" placeholder="填写密保邮箱地址"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
				<div id="jobhunterEmailTip"
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
				<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
					alt="" width="202" height="82" id="next"> </a>
			</div>

			<div
				style="position:absolute;right:150;top:200;width:200;height:80;float:left;">
				<img style="float:left;position:absolute;left:10"
					src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
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

		<div class="framemid" style="position:relative;display: none"
			id="div2">
			<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/progress2.png"
					width="820" height="50" alt="" />
			</div>

			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">真实姓名：</p>
				<input class="form-control" name="textfield" type="text"
					id="realname" placeholder="填写真实姓名"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">性别：</p>
				<table id="sex"
					style="position:absolute;left:100;top:12;float:left; " width="200">
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

			<div style="position:absolute;top:210;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">出生年月：</p>
				<select id="year" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>年份</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id="month" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>月份</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
			</div>

			<div style="position:absolute;top:260;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">婚姻状况：</p>
				<table id="marriage"
					style="position:absolute;left:100;top:12;float:left; " width="200">
					<tr>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_0"> 已婚</label>
						</td>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_1"> 未婚</label>
						</td>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_1"> 不显示</label>
						</td>
					</tr>
				</table>
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">籍贯：</p>
				<select id="province" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>省份</option>
					<option>北京市</option>
					<option>上海市</option>
				</select> <select id="city" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:230;top:10;float:left;width:110px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>城市</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
			</div>

			<div style="position:absolute;top:360;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">详细地址：</p>
				<input class="form-control" name="textfield" type="text"
					id="address" placeholder="请输入详细地址信息（可不填）"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
			</div>

			<div id="previous_btn_div2"
				style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
				<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/jobhunterRegister/previous2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/previous.png"
					alt="" width="202" height="82" id="previous"> </a>
			</div>

			<div id="next_btn_div2"
				style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
				<a href="#" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
					alt="" width="202" height="82" id="next"> </a>
			</div>

			<div
				style="position:absolute;right:150;top:200;width:200;height:80;float:left;">
				<img style="float:left;position:absolute;left:10"
					src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
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

		<div class="framemid" style="position:relative;display: none"
			id="div3">
			<div style="position:absolute;top:25;left:64.5;width:821;height:50;">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/progress3.png"
					width="820" height="50" alt="" />
			</div>

			<div style="position:absolute;top:110;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">学历：</p>
				<select id="record" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>学历程度</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
			</div>

			<div style="position:absolute;top:160;left:136;width:370;height:50;">
				<p style="float:left;" class="textstyle">毕业于：</p>
				<select id="graduate" type="text" class="form-control"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					style="position:absolute;left:100;top:10;float:left;width:240px; height:30px;font-family:微软雅黑;font-size: 12px; color: #989898;">
					<option>学校</option>
					<option>北京市</option>
					<option>上海市</option>
				</select>
			</div>

			<div style="position:absolute;top:210;left:136;width:370;height:100;">
				<p style="float:left;" class="textstyle">就职状态：</p>
				<table id="workstate"
					style="position:absolute;left:92;top:4;float:left; " width="280">
					<tr>
						<td style="height:40px;"><label> <input type="radio"
								name="RadioGroup1" value="单选" id="RadioGroup1_0">
								在职，看看新机会</label>
						</td>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup1_1"> 在职，暂无跳槽打算</label>
						</td>
					</tr>
					<tr>
						<td style="height:40px;"><label> <input type="radio"
								name="RadioGroup1" value="单选" id="RadioGroup2_0">
								在职，急寻新工作</label>
						</td>
						<td><label> <input type="radio" name="RadioGroup1"
								value="单选" id="RadioGroup2_1"> 离职，正在找工作</label>
						</td>
					</tr>
				</table>
			</div>

			<div style="position:absolute;top:310;left:136;width:370;height:100;">
				<p style="float:left;" class="textstyle">自我评价：</p>
				<textarea class="form-control" name="textfield" type="text"
					id="evaluation" value="建议您对自己做一个简短评价，简明扼要的描述您的职业优势（可不填）"
					onmouseover="this.style.borderColor='#3d7d52'"
					onmouseout="this.style.borderColor=''"
					onFocus="if (value =='建议您对自己做一个简短评价，简明扼要的描述您的职业优势（可不填）'){value =''}"
					onBlur="if (value ==''){value='建议您对自己做一个简短评价，简明扼要的描述您的职业优势（可不填）'}"
					style="position:absolute;left:100;top:10;float:left;width:280px; height:100px; font-family:微软雅黑;font-size: 12px; color: #989898;resize:none;"></textarea>
			</div>

			<div id="previous_btn_div3"
				style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/jobhunterRegister/previous2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/previous.png"
					alt="" width="202" height="82" id="previous"> </a>
			</div>

			<div id="jobhunter_register_btn"
				style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
				<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('next','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
					alt="" width="202" height="82" id="next"> </a>
			</div>

			<div
				style="position:absolute;right:150;top:200;width:200;height:80;float:left;">
				<img style="float:left;position:absolute;left:10"
					src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
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

	<div class="framebottom" style="position:relative;">
		<div
			style="position:absolute;top:62.5;left:54;width:125px;height:125px;float:left;">
			<div
				style="position:absolute;top:15.5;left:36;width:50px;height:50px;float:left;">
				<img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/phone.png"
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
	<script type="text/javascript" src="js/JQuerySession.js"></script>
	<script type="text/javascript"
		src="js/jobhunterRegister/jobhunterRegister.js"></script>
</body>
</html>
