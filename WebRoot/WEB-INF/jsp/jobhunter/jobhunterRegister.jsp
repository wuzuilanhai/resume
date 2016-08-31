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
	href="${pageContext.request.contextPath}/css/jobhunterRegister/jobhunterRegister.css"
	type="text/css"></link>
</head>
<body>
	<div class="framehead" style="position:fixed;z-index:100;">
		<div class="frameheadmid" style="position:relative;z-index:101">
			<div class="buttontop">
				<a href="${pageContext.request.contextPath}/index.jsp"> <img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/logo.png"
					width="132" height="50" alt="" /> </a>
			</div>
			<div class="buttontop" style="left:182;">
				<a
					href="${pageContext.request.contextPath}/jobHunter/indexUI.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('mainpage','','${pageContext.request.contextPath}/images/jobhunterRegister/mainpage22.png',0)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/mainpage.png"
					alt="" width="100" height="50" id="mainpage"> </a>
			</div>
			<div class="buttontop" style="left:282">
				<a href="${pageContext.request.contextPath}/job/findAllJobs.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('job','','${pageContext.request.contextPath}/images/jobhunterRegister/job2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/job.png"
					alt="" width="100" height="50" id="job"> </a>
			</div>
			<div class="buttontop" style="left:382">
				<a
					href="${pageContext.request.contextPath}/resume/showResume.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('resume','','${pageContext.request.contextPath}/images/jobhunterRegister/resume22.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/resume.png"
					alt="" width="100" height="50" id="resume"> </a>
			</div>
			<div
				style="position: absolute; width: 54; height: 16; left: 790px; top: 17px;">
				<a href="${pageContext.request.contextPath}/index.jsp">登录</a>/<a
					href="javascript:void(0)">注册</a>
			</div>
			<div style="position:absolute;right:10;top:10;">
				<a href="${pageContext.request.contextPath}/company/index.action"
					onMouseOut="MM_swapImgRestore()"
					onMouseOver="MM_swapImage('business','','${pageContext.request.contextPath}/images/jobhunterRegister/business2.png',1)"><img
					src="${pageContext.request.contextPath}/images/jobhunterRegister/business.png"
					alt="" width="80" height="30" id="business"> </a>
			</div>
		</div>
	</div>
	<div class="framemain">
		<form id="registerForm"
			action="${pageContext.request.contextPath}/jobHunter/addJobHunter.action"
			method="post">


			<div class="framemid" id="div1" style="position:relative;display:">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:73;width:804;height:31;"
						src="${pageContext.request.contextPath}/images/jobhunterRegister/progress.png"
						width="804" height="31" alt="" />
					<div style="position:absolute;top:120;left:100;">

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">用户名：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterName" type="text"
								id="jobhunterName" placeholder="填写登录名/用户名"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterNameTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>


						<div class="fill_mid" style="height:40;">
							<p style="width:100 " class="textstyle">密码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterPassword" type="password"
								id="jobhunterPassword" placeholder="填写密码"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterPasswordTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>
						<div class="fill_mid" style="height:40;">
							<p style="width:100 " class="textstyle">重复密码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterPasswordRepeat"
								type="password" id="jobhunterPasswordRepeat"
								placeholder="再次填写密码"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterPasswordRepeatTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">密保手机：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterPhone" type="text"
								id="jobhunterPhone" placeholder="填写密保手机号"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterPhoneTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">密保邮箱：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterEmail" type="text"
								id="jobhunterEmail" placeholder="填写密保邮箱地址"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterEmailTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;" id="imgDiv">
							<p style="width:100" class="textstyle">验证码：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="validationImg" type="text"
								id="validationImg" placeholder="请输入验证码"
								onmouseover="this.style.borderColor='#3d7d52'"
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
							src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
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
						<a href="#" onclick="return false"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('next1','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
							alt="" width="202" height="82" id="next1"> </a>
					</div>

				</div>
			</div>

			<div class="framemid" style="position:relative;display:none "
				id="div2">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:73;width:804;height:31;"
						src="${pageContext.request.contextPath}/images/jobhunterRegister/progress2.png"
						width="804" height="31" alt="" />
					<div style="position:absolute;top:120;left:100;">

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">真实姓名：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterRealName" type="text"
								id="jobhunterRealName" placeholder="填写真实姓名"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
							<div id="jobhunterRealNameTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">性别：</p>
							<table id="jobhunterSex"
								style="font-size:12;position:absolute;top:0;left:100;float:left; width:240">
								<tr>
									<td><input type="radio" name="jobhunterSex" value="男"
										id="RadioGroup1_0"> 男</td>
									<td><input type="radio" name="jobhunterSex" value="女"
										id="RadioGroup1_1"> 女</td>
								</tr>
							</table>
							<div id="jobhunterSexTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">出生年月：</p>
							<select style="position:absolute;top:0;width:110" id="year"
								type="text" class="form-control" name="year"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''">
								<option>年份</option>
								<option value=1990>1990</option>
								<option value=1991>1991</option>
								<option value=1992>1992</option>
								<option value=1993>1993</option>
								<option value=1994>1994</option>
								<option value=1995>1995</option>
								<option value=1996>1996</option>
								<option value=1997>1997</option>
								<option value=1998>1998</option>
								<option value=1999>1999</option>
							</select> <select style="position:absolute;top:0;width:110;left:230;"
								id="month" type="text" class="form-control" name="month"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''">
								<option>月份</option>
								<option value=1>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
								<option value=4>4</option>
								<option value=5>5</option>
								<option value=6>6</option>
								<option value=7>7</option>
								<option value=8>8</option>
								<option value=9>9</option>
								<option value=10>10</option>
								<option value=11>11</option>
								<option value=12>12</option>
							</select>
							<div id="jobhunterBirthdayTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100 " class="textstyle">婚姻状况：</p>
							<table id="jobhunterMaritalStatus"
								style="font-size:12;position:absolute;top:0;left:100;float:left; width:240">
								<tr>
									<td><input type="radio" name="jobhunterMaritalStatus"
										value="已婚" id="RadioGroup1_0"> 已婚</td>
									<td><input type="radio" name="jobhunterMaritalStatus"
										value="未婚" id="RadioGroup1_1"> 未婚</td>
									<td><input type="radio" name="jobhunterMaritalStatus"
										value="不显示" id="RadioGroup1_1"> 不显示</td>
								</tr>
							</table>
							<div id="jobhunterMaritalStatusTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">籍贯：</p>
							<select style="position:absolute;top:0;width:110" id="province"
								type="text" class="form-control" name="province"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''">
								<option>省份</option>
								<option value=广东省>广东省</option>
								<option value=河北省>河北省</option>
							</select> <select style="position:absolute;top:0;width:110;left:230;"
								id="city" type="text" class="form-control" name="city"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''">
								<option>城市</option>
								<option value=北京市>北京市</option>
								<option value=上海市>上海市</option>
								<option value=广州市>广州市</option>
							</select>
							<div id="jobhunterNativePlaceTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">详细地址：</p>
							<input style="position:absolute;top:0;width:240"
								class="form-control" name="jobhunterAddress" type="text"
								id="jobhunterAddress" placeholder="请输入详细地址信息（可不填）"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''" />
						</div>
					</div>

					<div
						style="position:absolute;right:130;top:190;width:170;height:130;float:left;">
						<img style="float:left;position:absolute;left:5"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
							width="38" height="38" alt="" />
						<h2 style="float:left;position:absolute;left:62;top:-8;"
							class="texttitle">职来网保证</h2>
						<p
							style="float:left;position:absolute;left:0;top:50;text-align:left;"
							class="texttitle">
							个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
						</p>
					</div>

					<div id="previous_btn_div2"
						style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
						<a href="#" onclick="return false"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/jobhunterRegister/previous2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/previous.png"
							alt="" width="202" height="82" id="previous"> </a>
					</div>

					<div id="next_btn_div2"
						style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
						<a href="#" onclick="return false"
							onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('next2','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
							alt="" width="202" height="82" id="next2"> </a>
					</div>
				</div>
			</div>

			<div class="framemid" style="position:relative;display:none"
				id="div3">
				<div class="div_mid"
					style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
					<img style="position:absolute;top:45;left:73;width:804;height:31;"
						src="${pageContext.request.contextPath}/images/jobhunterRegister/progress3.png"
						width="804" height="31" alt="" />
					<div style="position:absolute;top:120;left:100;">


						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">学历：</p>
							<select style="position:absolute;top:0;width:240"
								id="jobhunterQualification" type="text" class="form-control"
								name="jobhunterQualification"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''">
								<option>学历程度</option>
								<option>高中以下</option>
								<option>高中</option>
								<option>本科</option>
								<option>硕士</option>
								<option>博士</option>
							</select>
							<div id="jobhunterQualificationTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:40;">
							<p style="width:100" class="textstyle">毕业于：</p>
							<input class="form-control" name="jobhunterGraduateSchool"
								type="text" id="jobhunterGraduateSchool" placeholder="学校"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''"
								style="position:absolute;top:0;width:240">
							<div id="jobhunterGraduateSchoolTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:65;">
							<p style="width:100" class="textstyle">就职状态：</p>
							<table id="jobhuntEntranceStatus"
								style="position:absolute;top:0;left:100;width:280;font-size:12">
								<tr>
									<td><input type="radio" name="jobhuntEntranceStatus"
										value="在职，看看新机会" id="RadioGroup1_0"> 在职，看看新机会</td>
									<td><input type="radio" name="jobhuntEntranceStatus"
										value="在职，暂无跳槽打算" id="RadioGroup1_1"> 在职，暂无跳槽打算</td>
								</tr>
								<tr>
									<td><input type="radio" name="jobhuntEntranceStatus"
										value="在职，急寻新工作" id="RadioGroup2_1"> 在职，急寻新工作</td>
									<td><input type="radio" name="jobhuntEntranceStatus"
										value="离职，正在找工作" id="RadioGroup2_1"> 离职，正在找工作</td>
								</tr>
							</table>
							<div id="jobhuntEntranceStatusTip"
								style="position:absolute;left:370;top:0;float:left;width:240px;padding-top:6; height:40px; "></div>

						</div>

						<div class="fill_mid" style="height:80;">
							<p style="width:100" class="textstyle">自我评价：</p>
							<textarea
								style="resize: none; padding-top: 7px;position:absolute;left:100;top:0;width:280px; height:100px;resize:none;"
								class="form-control" name="jobhunterSelfAppraisal" type="text"
								id="evaluation" placeHolder="建议您对自己做一个简短评价，简明扼要的描述您的职业优势（可不填）"
								onmouseover="this.style.borderColor='#3d7d52'"
								onmouseout="this.style.borderColor=''"></textarea>
						</div>
					</div>
					<div
						style="position:absolute;right:130;top:190;width:170;height:130;float:left;">
						<img style="float:left;position:absolute;left:5"
							src="${pageContext.request.contextPath}/images/jobhunterRegister/attention.png"
							width="38" height="38" alt="" />
						<h2 style="float:left;position:absolute;left:62;top:-8;"
							class="texttitle">职来网保证</h2>
						<p
							style="float:left;position:absolute;left:0;top:50;text-align:left;"
							class="texttitle">
							个人资料仅用于资质审核，<br /> 猎聘网绝不向第三方泄露，<br /> 请您放心填写。
						</p>
					</div>

					<div id="previous_btn_div3"
						style="position:absolute;bottom:25;left:250;width:202;height:82;float:left;">
						<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('previous','','${pageContext.request.contextPath}/images/jobhunterRegister/previous2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/previous.png"
							alt="" width="202" height="82" id="previous"> </a>
					</div>
					<div id="next_btn_div3"
						style="position:absolute;bottom:25;left:510;width:202;height:82;float:left;">
						<a href="" onclick="return false" onMouseOut="MM_swapImgRestore()"
							onMouseOver="MM_swapImage('next3','','${pageContext.request.contextPath}/images/jobhunterRegister/next2.png',1)"><img
							src="${pageContext.request.contextPath}/images/jobhunterRegister/next.png"
							alt="" width="202" height="82" id="next3"> </a>
					</div>

				</div>
			</div>

		</form>

		<div class="framemid" style="position:relative;display:none" id="div4">
			<div class="div_mid"
				style="box-shadow:0px 0px 0px #E1E1E1;position:relative;height:510">
				<img style="position:absolute;top:45;left:73;width:804;height:31;"
					src="${pageContext.request.contextPath}/images/jobhunterRegister/progress4.png"
					width="804" height="31" alt="" />
				<div style="position:absolute;top:173;left:396;">
					<img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/success.png"
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
						onMouseOver="MM_swapImage('login','','${pageContext.request.contextPath}/images/jobhunterRegister/login2.png',1)"><img
						src="${pageContext.request.contextPath}/images/jobhunterRegister/login.png"
						alt="" width="202" height="82" id="login"> </a>
				</div>
			</div>
		</div>
	</div>
	<div class="framebottom">
		<div class="fill_bottom">
			<img style="position:absolute;top:40;left:70"
				src="${pageContext.request.contextPath}/images/jobhunterRegister/phone.png"
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
				src="${pageContext.request.contextPath}/images/jobhunterRegister/line.png"
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
		src="${pageContext.request.contextPath}/js/jobhunterRegister/jobhunterRegister.js"></script>
</body>
</html>
