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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/companyRegister/companyRegister.css"
	type="text/css"></link>
</head>
<body>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"> <img
					src="${pageContext.request.contextPath}/images/companyRegister/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a href="${pageContext.request.contextPath}/company/index.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/companyRegister/mainpage2.png',0)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a
					href="${pageContext.request.contextPath}/company/companyManage.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/companyRegister/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/findAllResumes.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/companyRegister/resume2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="${pageContext.request.contextPath}/index.jsp">登录</a>/<a
					href="javascript:void(0)">注册</a>
			</div>
			<div style="position:absolute;right:10;top:10;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('person','','${pageContext.request.contextPath}/images/companyRegister/person2.png',1)"><img
					src="${pageContext.request.contextPath}/images/companyRegister/person.jpg"
					alt="" width="80" height="30" id="person"> </a>
			</div>
		</div>
	</div>
	<div class="framemain">
		<form id="registerForm"
			action="${pageContext.request.contextPath}/company/addCompany.action"
			method="post">

			<div class="framemid" id="div1">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:131;width:688;height:31;"
						src="${pageContext.request.contextPath}/images/companyRegister/progress1.png"
						width="688" height="31" alt="" />
					<div style="position:absolute;top:120;left:100;">


						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">用户名：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="companyLoginName" type="text"
								id="companyLoginName" placeHolder="填写登录名/用户名"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="companyLoginNameTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>
						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">密码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="companyPassword" type="password"
								id="companyPassword" placeHolder="填写密码"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="companyPasswordTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">重复密码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="companyPasswordRepeat"
								type="password" id="companyPasswordRepeat" placeHolder="再次填写密码"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="companyPasswordRepeatTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>
						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">密保手机：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="phoneNumber" type="text"
								id="phoneNumber" placeHolder="填写密保手机号"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="phoneNumberTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>
						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">密保邮箱：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="companyEmail" type="text"
								id="companyEmail" placeHolder="填写密保邮箱地址"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="companyEmailTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>
						</div>

						<div class="fill_mid" style="height:40;" id="imgDiv">
							<p style="width:100" class="textstyle">验证码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="validationImg" type="text"
								id="validationImg" placeholder="请输入验证码"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="validationImgTip"
								style="position:absolute;left:370;top:40;float:left;width:240px;padding-top:6; height:40px; "></div>
							<img alt="" src="${pageContext.request.contextPath}/valiImgUtils"
								id="valiImg" title="看不清，点击刷新"
								onclick="this.src=this.src+'?'+Math.random()"
								style="position:absolute;left:370;top:-5;float:left;width:140px; height:40px; font-family:微软雅黑;font-size: 12px; color: #989898;" />
						</div>
					</div>
					<div
						style="position:absolute;right:130;top:190;width:170;height:130;float:left;">
						<img style="float:left;position:absolute;left:5"
							src="${pageContext.request.contextPath}/images/companyRegister/attention.png"
							width="38" height="38" alt="" />
						<h2 style="float:left;position:absolute;left:62;top:-8;"
							class="texttitle">职来网保证</h2>
						<p
							style="float:left;position:absolute;left:0;top:50;text-align:left;"
							class="texttitle">
							个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
						</p>
					</div>
					<div id="next_btn_div1"
						style="position:absolute;bottom:20;left:374;width:202;height:82;float:left;">
						<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('next1','','${pageContext.request.contextPath}/images/companyRegister/next2.png',1)"><img
							src="${pageContext.request.contextPath}/images/companyRegister/next.png"
							alt="" width="202" height="82" id="next1"> </a>
					</div>
				</div>

			</div>

			<div class="framemid" id="div2" style="display:none">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:131;width:688;height:31;"
						src="${pageContext.request.contextPath}/images/companyRegister/progress2.png"
						width="688" height="31" alt="" />
					<div style="position:absolute;top:120;left:100;">

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">公司名称：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="companyName" type="text"
								id="companyName" placeHolder="填写营业执照上的公司全称"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="companyNameTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>




						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">所在地：</p>
							<select style="position:absolute;top:0;width:110" id="province"
								type="text" class="form-control" name="province"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''">
								<option>省份</option>
								<option value=广东省>广东省</option>
								<option value=河北省>河北省</option>
							</select> <select style="position:absolute;top:0;left:230;width:110"
								id="city" type="text" class="form-control" name="city"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''">
								<option>城市</option>
								<option value=北京市>北京市</option>
								<option value=上海市>上海市</option>
								<option value=广州市>广州市</option>
							</select>
							<div id="companyLocationTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">所属行业：</p>
							<select style="position:absolute;top:0;width:110" id='industry'
								type="text" class="form-control" name="'industry'"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''">
								<option>行业</option>
								<c:forEach items="${sessionScope.industries }" var="industry">
									<option value="${industry.industryId }">${industry.industryName
										}</option>
								</c:forEach>
							</select> <select style="position:absolute;top:0;left:230;width:110"
								id='type' type="text" class="form-control" name="type"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''">
								<option>分类</option>
							</select>
							<div id="industryIdTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">联系人：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="chatterName" type="text"
								id="chatterName" placeHolder="填写联系人姓名"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="chatterNameTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">性别：</p>
							<table id="chatterSex"
								style="font-size:12;position:absolute;top:0;left:100;width:240">
								<tr>
									<td><input type="radio" name="chatterSex" value="男"
										id="RadioGroup1_0"> 男</td>
									<td><input type="radio" name="chatterSex" value="女"
										id="RadioGroup1_1"> 女</td>
								</tr>
							</table>
							<div id="chatterSexTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>
						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">手机号：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="chatterPhone" type="text"
								id="chatterPhone" placeHolder="填写联系人手机号"
								onmouseover="this.style.borderColor='#316392'"
								onmouseout="this.style.borderColor=''" />
							<div id="chatterPhoneTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>
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
						style="position:absolute;right:130;top:190;width:170;height:130;float:left;">
						<img style="float:left;position:absolute;left:5"
							src="${pageContext.request.contextPath}/images/companyRegister/attention.png"
							width="38" height="38" alt="" />
						<h2 style="float:left;position:absolute;left:62;top:-8;"
							class="texttitle">职来网保证</h2>
						<p
							style="float:left;position:absolute;left:0;top:50;text-align:left;"
							class="texttitle">
							个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
						</p>
					</div>
				</div>

			</div>


			<div class="framemid" style="display:none" id="div3">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:131;width:688;height:31;"
						src="${pageContext.request.contextPath}/images/companyRegister/progress3.png"
						width="688" height="31" alt="" />
					<div style="position:absolute;top:173;left:396;">
						<img
							src="${pageContext.request.contextPath}/images/companyRegister/success.png"
							width="158" height="164" alt="" />
					</div>

					<div
						style="position:absolute;top:380;left:315;width:320;height:50;text-align:center;">
						<p2>恭喜你注册成功，请点击登录跳转</p2>
					</div>
					<div
						style="position:absolute;bottom:20;left:374;width:202;height:82;float:left;">
						<a href="${pageContext.request.contextPath}/index.jsp"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/companyRegister/login2.png',1)"><img
							src="${pageContext.request.contextPath}/images/companyRegister/login.png"
							alt="" width="202" height="82" id="login"> </a>
					</div>
				</div>


			</div>


		</form>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/companyRegister/phone.png"
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
					<a href="javascript:void(0)">职来网简介</a><br /> <a
						href="javascript:void(0)">产品服务</a><br /> <a
						href="javascript:void(0)">创新优势</a><br /> <a
						href="javascript:void(0)">联系我们</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:380px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">栏目</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="javascript:void(0)">职位大全</a><br /> <a
						href="javascript:void(0)">招聘职位</a><br /> <a
						href="javascript:void(0)">企业名录</a><br /> <a
						href="javascript:void(0)">城市列表</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:570px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">导航</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="javascript:void(0)">网站地图</a><br /> <a
						href="javascript:void(0)">企业入口</a><br /> <a
						href="javascript:void(0)">求职者入口</a><br /> <a
						href="javascript:void(0)">宣传页</a><br />
				</p>
			</div>
		</div>
		<div class="fill_bottom" style="left:760px;">
			<div style="position:absolute;top:35;left:65;text-align:left;">
				<h1 style="font-size:14">帮助</h1>
			</div>
			<div style="position:absolute;top:75;left:65;text-align:left;">
				<p style="font-size:12">
					<a href="javascript:void(0)">使用帮助</a><br /> <a
						href="javascript:void(0)">常见问题</a><br /> <a
						href="javascript:void(0)">意见反馈</a><br /> <a
						href="javascript:void(0)">版权/免责声明</a><br />
				</p>
			</div>
		</div>
	</div>
	<div class="framebottom" style="height:100">
		<div>
			<img
				style="position:absolute;top:0;left:25;width:900;height:1;float:left"
				src="${pageContext.request.contextPath}/images/companyRegister/line.png"
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
		src="${pageContext.request.contextPath}/js/companyRegister/companyRegister.js"></script>
</body>
</html>