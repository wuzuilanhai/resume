$(document).ready(
		function() {
			function getRootPath() {
				// 获取当前网址，如： http://localhost:8083/proj/meun.jsp
				var curWwwPath = window.document.location.href;
				// 获取主机地址之后的目录，如： proj/meun.jsp
				var pathName = window.document.location.pathname;
				var pos = curWwwPath.indexOf(pathName);
				// 获取主机地址，如： http://localhost:8083
				var localhostPath = curWwwPath.substring(0, pos);
				// 获取带"/"的项目名，如：/proj
				var projectName = pathName.substring(0, pathName.substr(1)
						.indexOf('/') + 1);
				return (localhostPath + projectName);
			}
			$('#logInBtn').click(function() {
				var action = $('#form').attr('action');
				var Formattr = $('#form').serialize();
				$.post(action, Formattr, function(data) {
					if (data) {
						$('#showAdminName').val(data.adminName);
					} else {
						alert("查无此人！");
					}
				});
			});
			$('#logoutBtn').click(function() {
				var action = getRootPath() + "/admin/logout.action";
				$.post(action, null, function(data) {
					alert(data);
				});
			});
			$('#findNotices').click(function() {
				var action = getRootPath() + "/notice/findNotices.action";
				$.post(action, null, function(data) {
					alert(data);
				});
			});
			$('#updateJobHunterByDetailsBtn').click(function() {
				var action=$('#form2').attr('action');
				var formData=$('#form2').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addIndustryBtn').click(function() {
				var action=$('#form3').attr('action');
				var formData=$('#form3').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addPositionBtn').click(function() {
				var action=$('#form4').attr('action');
				var formData=$('#form4').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addCareerIntentionBtn').click(function() {
				var action=$('#form5').attr('action');
				var formData=$('#form5').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addWorkExperienceBtn').click(function() {
				var action=$('#form6').attr('action');
				var formData=$('#form6').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addEducationExperienceBtn').click(function() {
				var action=$('#form7').attr('action');
				var formData=$('#form7').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
			$('#addProjectExperienceBtn').click(function() {
				var action=$('#form8').attr('action');
				var formData=$('#form8').serialize();
				$.post(action,formData,function(data){
					alert(data);
				});
			});
		});