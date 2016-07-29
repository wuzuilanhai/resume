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

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/test1.js"></script>
</head>
<body>
	<form id="form" method="post"
		action="${pageContext.request.contextPath }/admin/adminLogin.action">
		<input name="adminName" type="text" /><br /> 
		<input name="adminPassword" type="text" /><br /> 
		<input value="管理员登陆" type="submit" />
	</form>
	<input type="text" id="showAdminName" /><br />
	<input value="注销" type="button" id="logoutBtn" />
	<form id="form" method="post"
		action="${pageContext.request.contextPath }/notice/addNotice.action">
		<input name="noticeTitle" type="text" /><br /> 
		<input name="noticeContent" type="text" /><br /> 
		<input name="noticeAuthor" type="text" /><br /> 
		<input value="添加公告"	type="submit" />
	</form>
	<input value="查看所有公告" type="button" id="findNotices" />
	<form id="form1" method="post"
		action="${pageContext.request.contextPath }/jobHunter/addJobHunter.action">
		<input name="jobhunterPhone" type="text" /><br /> 
		<input name="jobhunterPassword" type="text" /><br /> 
		<input value="求职者注册" type="button" id="registerJobhunterBtn" />
	</form>
	<form id="form2" method="post"
		action="${pageContext.request.contextPath }/jobHunter/updateJobHunterByDetails.action">
		<input name="jobhunterName" type="text" /><br /> 
		<input value="完善求职者资料" type="button" id="updateJobHunterByDetailsBtn" />
	</form>
	<form id="form3" method="post"
		action="${pageContext.request.contextPath }/industry/addIndustry.action">
		<input name="industryName" type="text" /><br /> 
		<input name="parentIndustryName" type="text" />父行业名称<br /> 
		<input value="添加行业" type="button" id="addIndustryBtn" />
	</form>
	<form id="form4" method="post"
		action="${pageContext.request.contextPath }/position/addPosition.action">
		<input name="positionName" type="text" /><br /> 
		<input name="industryName" type="text" />行业名称<br /> 
		<input value="添加职能" type="button" id="addPositionBtn" />
	</form>
	<form id="form5" method="post"
		action="${pageContext.request.contextPath }/careerIntention/addCareerIntention.action">
		<input name="industryName" type="text" />行业名称<br /> 
		<input name="positionName" type="text" />职能名称<br /> 
		<input name="expectWorksite" type="text"/><br/>
		<input name="expectSalary" type="text"/><br/>
		<input name="currentSalary" type="text"/><br/>
		<input value="添加职业意向" type="button" id="addCareerIntentionBtn" />
	</form>
	<form id="form6" method="post"
		action="${pageContext.request.contextPath }/workExperience/addWorkExperience.action">
		<input name="companyName" type="text" />公司名称<br /> 
		<input name="companyIndustryName" type="text" />公司行业名称<br /> 
		<input name="positionName" type="text"/><br/>
		<input name="worksite" type="text"/><br/>
		<input name="subordinateNumber" type="text"/><br/>
		<input name="duty" type="text"/><br/>
		<input value="添加工作经历" type="button" id="addWorkExperienceBtn" />
	</form>
	<form id="form7" method="post"
		action="${pageContext.request.contextPath }/educationExperience/addEducationExperience.action">
		<input name="schoolName" type="text" /><br /> 
		<input name="majorName" type="text"/><br/>
		<input name="qualification" type="text"/><br/>
		<input name="isUnify" type="text"/><br/>
		<input value="添加教育经历" type="button" id="addEducationExperienceBtn" />
	</form>
	<form id="form8" method="post"
		action="${pageContext.request.contextPath }/projectExperience/addProjectExperience.action">
		<input name="projectName" type="text" /><br /> 
		<input name="companyName" type="text"/><br/>
		<input name="projectPosition" type="text"/><br/>
		<input name="projectDescription" type="text"/><br/>
		<input name="projectResponsibility" type="text"/><br/>
		<input name="projectAchievement" type="text"/><br/>
		<input value="添加项目经验" type="button" id="addProjectExperienceBtn" />
	</form>
	<form id="form9" method="post"
		action="${pageContext.request.contextPath }/resume/addResume.action">
		<input name="jobhunterPhone" type="text" /><br /> 
		<input name="visibility" type="text"/><br/>
		<input name="visitNumber" type="text"/><br/>
		<input value="添加简历" type="button" id="addResumeBtn" />
	</form>
	<form id="form10" method="post"
		action="${pageContext.request.contextPath }/company/addCompany.action">
		<input name="companyName" type="text" /><br /> 
		<input name="companyPassword" type="text" /><br /> 
		<input name="companyLocation" type="text"/><br/>
		<input name="industryName" type="text"/><br/>
		<input name="chatterName" type="text"/><br/>
		<input name="chatterSex" type="text"/><br/>
		<input name="phoneNumber" type="text"/><br/>
		<input value="添加企业" type="button" id="addCompanyBtn" />
	</form>
	<form id="form11" method="post"
		action="${pageContext.request.contextPath }/job/addJob.action">
		<input name="jobName" type="text" /><br /> 
		<input name="worksite" type="text"/><br/>
		<input name="positionName" type="text"/><br/>
		<input name="jobSalary" type="text"/><br/>
		<input name="jobDescription" type="text"/><br/>
		<input name="jobEmail" type="text"/><br/>
		<input name="companyName" type="text"/><br/>
		<input value="发布职位" type="button" id="addJobBtn" />
	</form>
	<form id="form12" method="post"
		action="${pageContext.request.contextPath }/jobAcquire/addJobAcquire.action">
		<input name="languageAcquire" type="text" /><br /> 
		<input name="majorAcquire" type="text"/><br/>
		<input name="qualificationAcquire" type="text"/><br/>
		<input name="isUnify" type="text"/><br/>
		<input name="ageMin" type="text"/><br/>
		<input name="ageMax" type="text"/><br/>
		<input name="sexAcquire" type="text"/><br/>
		<input name="jobId" type="text"/><br/>
		<input value="添加职位要求" type="button" id="addJobAcquireBtn" />
	</form>
	<form id="form13" method="post"
		action="${pageContext.request.contextPath }/resumeJob/addResumeJob.action">
		<input name="resumeId" type="text" /><br /> 
		<input name="jobId" type="text"/><br/>
		<input value="添加简历-职位关系" type="button" id="addResumeJobBtn" />
	</form>
	<form id="form14" method="post"  enctype="multipart/form-data"
		action="${pageContext.request.contextPath }/jobHunterUpload/addJobHunterUpload.action">
		<input name=uploadPic type="file" /><br /> 
		<input name=jobhunterId type="text" /><br /> 
		<input value="上传求职者头像" type="submit" />
	</form>
	<form id="form15" method="post"
		action="${pageContext.request.contextPath }/mail/addMail.action">
		<input name="mailFrom" type="text" /><br /> 
		<input name="mailTitle" type="text"/><br/>
		<input name="mailMsg" type="text"/><br/>
		<input name="mailTo" type="text"/><br/>
		<input value="发送邮件" type="button" id="addMailBtn" />
	</form>
</body>
</html>
