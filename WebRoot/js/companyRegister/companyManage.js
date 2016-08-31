function MM_swapImgRestore() { // v3.0
	var i, x, a = document.MM_sr;
	for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++)
		x.src = x.oSrc;
}
function MM_preloadImages() { // v3.0
	var d = document;
	if (d.images) {
		if (!d.MM_p)
			d.MM_p = new Array();
		var i, j = d.MM_p.length, a = MM_preloadImages.arguments;
		for (i = 0; i < a.length; i++)
			if (a[i].indexOf("#") != 0) {
				d.MM_p[j] = new Image;
				d.MM_p[j++].src = a[i];
			}
	}
}

function MM_findObj(n, d) { // v4.01
	var p, i, x;
	if (!d)
		d = document;
	if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
		d = parent.frames[n.substring(p + 1)].document;
		n = n.substring(0, p);
	}
	if (!(x = d[n]) && d.all)
		x = d.all[n];
	for (i = 0; !x && i < d.forms.length; i++)
		x = d.forms[i][n];
	for (i = 0; !x && d.layers && i < d.layers.length; i++)
		x = MM_findObj(n, d.layers[i].document);
	if (!x && d.getElementById)
		x = d.getElementById(n);
	return x;
}

function MM_swapImage() { // v3.0
	var i, j = 0, x, a = MM_swapImage.arguments;
	document.MM_sr = new Array;
	for (i = 0; i < (a.length - 2); i += 3)
		if ((x = MM_findObj(a[i])) != null) {
			document.MM_sr[j++] = x;
			if (!x.oSrc)
				x.oSrc = x.src;
			x.src = a[i + 2];
		}
}
var speed = 500;// 自定义滚动速度
// 回到顶部
$("#toTop").click(function() {
	$("html,body").animate({
		"scrollTop" : 0
	}, speed);
});
function ShowFLT(i) {
	lbmc = eval('LM' + i);
	if (lbmc.style.display == 'none') {
		lbmc.style.display = '';
	} else {
		lbmc.style.display = 'none';
	}
}
function newjob() {
	document.getElementById("title1").style.display = "block";
	document.getElementById("LM1").style.display = "block";
	document.getElementById("screen").style.display = "none";
	document.getElementById("new").style.display = "none";
	document.getElementById("title2").style.display = "none";
	document.getElementById("LM2").style.display = "none";
	document.getElementById("title3").style.display = "none";
	document.getElementById("LM3").style.display = "none";
	document.getElementById("title4").style.display = "none";
	document.getElementById("LM4").style.display = "none";
}
function cancelnew() {
	document.getElementById("title1").style.display = "none";
	document.getElementById("LM1").style.display = "none";
	document.getElementById("screen").style.display = "block";
	document.getElementById("new").style.display = "block";
	document.getElementById("title2").style.display = "block";
	document.getElementById("LM2").style.display = "block";
	document.getElementById("title3").style.display = "block";
	document.getElementById("LM3").style.display = "block";
	document.getElementById("title4").style.display = "block";
	document.getElementById("LM4").style.display = "block";
}
function getRootPath() {
	// 获取当前网址，如： http://localhost:8083/proj/meun.jsp
	var curWwwPath = window.document.location.href;
	// 获取主机地址之后的目录，如： proj/meun.jsp
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf(pathName);
	// 获取主机地址，如： http://localhost:8083
	var localhostPath = curWwwPath.substring(0, pos);
	// 获取带"/"的项目名，如：/proj
	var projectName = pathName
			.substring(0, pathName.substr(1).indexOf('/') + 1);
	return (localhostPath + projectName);
}
$("a[id^='showFrameRight']").click(function() {
	$("div[id^='frameright']").hide();
	$("div[id^='left']").hide();
	var str = $(this).attr("id").substring(14, 15);
	var showDivId = "#frameright" + str;
	var showLeftDivId = "#left" + str;
	$(showDivId).show();
	$(showLeftDivId).show();
});
$("input[id^='jobName']").click(function() {
	var id = $(this).attr('id').substring(7);
	var newId = "#jobNameTip" + id;
	$(newId).html("");
});
$("input[id^='worksite']").click(function() {
	var id = $(this).attr('id').substring(8);
	var newId = "#worksiteTip" + id;
	$(newId).html("");
});
$("input[id^='jobSalary']").click(function() {
	var id = $(this).attr('id').substring(9);
	var newId = "#jobSalaryTip" + id;
	$(newId).html("");
});
$("input[id^='jobEmail']").click(function() {
	var id = $(this).attr('id').substring(8);
	var newId = "#jobEmailTip" + id;
	$(newId).html("");
});
$("a[id^='updateJob']").click(function() {
	var str = $(this).attr("id").substring(9);
	var input1 = "#jobName" + str;
	var inputTip1 = "#jobNameTip" + str;
	var input2 = "#worksite" + str;
	var inputTip2 = "#worksiteTip" + str;
	var input3 = "#jobSalary" + str;
	var inputTip3 = "#jobSalaryTip" + str;
	var input4 = "#jobEmail" + str;
	var inputTip4 = "#jobEmailTip" + str;
	if ($(input1).val().trim().length == 0) {
		$(inputTip1).html("");
		$(inputTip1).html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($(input2).val().trim().length == 0) {
		$(inputTip2).html("");
		$(inputTip2).html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($(input3).val().trim().length == 0) {
		$(inputTip3).html("");
		$(inputTip3).html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^[0-9]+(\.[0-9]+){0,1}$/.test($(input3).val().trim())) {
		$(input3).val("");
		$(inputTip3).html("");
		$(inputTip3).html("<font color='red'>请输入数字!</font>");
		return;
	}
	if ($(input4).val().trim().length == 0) {
		$(inputTip4).html("");
		$(inputTip4).html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($(input4).val().trim())) {
		$(input4).val("");
		$(inputTip4).html("");
		$(inputTip4).html("<font color='red'>邮箱格式有误!</font>");
		return;
	}
	var formId = "#updateJobForm" + str;
	$(formId).submit();
});
$("a[id^='addJobBtn']").click(function() {
	if ($("#jobName").val().trim().length == 0) {
		$("#jobNameTip").html("");
		$("#jobNameTip").html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($("#worksite").val().trim().length == 0) {
		$("#worksiteTip").html("");
		$("#worksiteTip").html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($("#jobSalary").val().trim().length == 0) {
		$("#jobSalaryTip").html("");
		$("#jobSalaryTip").html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^[0-9]+(\.[0-9]+){0,1}$/.test($("#jobSalary").val().trim())) {
		$("#jobSalary").val("");
		$("#jobSalaryTip").html("");
		$("#jobSalaryTip").html("<font color='red'>请输入数字!</font>");
		return;
	}
	if ($("#jobEmail").val().trim().length == 0) {
		$("#jobEmailTip").html("");
		$("#jobEmailTip").html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($("#jobEmail").val().trim())) {
		$("#jobEmail").val("");
		$("#jobEmailTip").html("");
		$("#jobEmailTip").html("<font color='red'>邮箱格式有误!</font>");
		return;
	}
	$("#addJobForm").submit();
});
$("#searchJobBtn").click(function() {
	$("#searchJobForm").submit();
});
$("#clearBtn").click(function() {
	$("#queryJobName").val("");
	$("#time").find("option[value='4']").attr("selected", true);
});
$('#companyName').click(function() {
	$('#companyNameTip').html("");
});
$('#chatterName').click(function() {
	$('#chatterNameTip').html("");
});
$('#chatterPhone').click(function() {
	$('#chatterPhoneTip').html("");
});
$("#updateCompanyBtn").click(
		function() {
			if ($("#companyName").val().trim().length == 0) {
				$("#companyNameTip").html("");
				$("#companyNameTip").html("<font color='red'>输入不能为空!</font>");
				return;
			}
			if ($("#chatterName").val().trim().length == 0) {
				$("#chatterNameTip").html("");
				$("#chatterNameTip").html("<font color='red'>输入不能为空!</font>");
				return;
			}
			if ($("#chatterPhone").val().trim().length == 0) {
				$("#chatterPhoneTip").html("");
				$("#chatterPhoneTip").html("<font color='red'>输入不能为空!</font>");
				return;
			} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($("#chatterPhone").val()
					.trim())) {
				$('#chatterPhone').val("");
				$('#chatterPhoneTip').html("");
				$('#chatterPhoneTip').html("<font color='red'>号码格式有误!</font>");
				return;
			}
			$("#updateCompanyForm").submit();
		});
$('#password_old').click(function() {
	$('#companyPasswordOldTip').html("");
});
$('#password_new').click(function() {
	$('#password_newTip').html("");
});
$('#password_new2').click(function() {
	$('#companyPasswordNewConfirmTip').html("");
});
$('#phone1').click(function() {
	$('#phone1Tip').html("");
});
$('#email1').click(function() {
	$('#email1Tip').html("");
});
$('#updateCompanyAccountBtn')
		.click(
				function() {
					if (($("#password_old").val().trim()).length == 0) {
						$('#companyPasswordOldTip').html("");
						$('#companyPasswordOldTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					} else if (hex_md5($("#password_old").val()) != $(
							'#passwordValue').val()) {
						$("#password_old").val("");
						$('#companyPasswordOldTip').html("");
						$('#companyPasswordOldTip').html(
								"<font color='red'>原密码不正确!</font>");
						return;
					}
					if (($("#password_new").val().trim()).length == 0) {
						$('#password_newTip').html("");
						$('#password_newTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					} else if (($("#password_new").val().trim()).length < 4) {
						$('#password_new').val("");
						$('#password_newTip').html("");
						$('#password_newTip').html(
								"<font color='red'>长度应大于3位!</font>");
						return;
					} else if (!/^[a-z,A-Z,0-9]+$/.test($("#password_new")
							.val().trim())) {
						$('#password_new').val("");
						$('#password_newTip').html("");
						$('#password_newTip').html(
								"<font color='red'>请输字母或数字!</font>");
						return;
					}
					if (($("#password_new2").val().trim()).length == 0) {
						$('#companyPasswordNewConfirmTip').html("");
						$('#companyPasswordNewConfirmTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					} else if ($("#password_new").val().trim() != $(
							"#password_new2").val().trim()) {
						$('#password_new').val("");
						$('#password_new2').val("");
						$('#password_newTip').html("");
						$('#companyPasswordNewConfirmTip').html("");
						$('#companyPasswordNewConfirmTip').html(
								"<font color='red'>两次输入不同!</font>");
						return;
					}
					if (($("#phone1").val().trim()).length == 0) {
						$('#phone1Tip').html("");
						$('#phone1Tip')
								.html("<font color='red'>输入不能为空!</font>");
						return;
					} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($("#phone1")
							.val().trim())) {
						$('#phone1').val("");
						$('#phone1Tip').html("");
						$('#phone1Tip')
								.html("<font color='red'>号码格式有误!</font>");
						return;
					}
					if (($("#email1").val().trim()).length == 0) {
						$('#email1Tip').html("");
						$('#email1Tip')
								.html("<font color='red'>输入不能为空!</font>");
						return;
					} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($("#email1").val()
							.trim())) {
						$('#email1').val("");
						$('#email1Tip').html("");
						$('#email1Tip')
								.html("<font color='red'>邮箱格式有误!</font>");
						return;
					}
					var filepath = $("#icon").val();
					var extStart = filepath.lastIndexOf(".");
					var ext = filepath.substring(extStart, filepath.length)
							.toUpperCase();
					if (ext != ".BMP" && ext != ".PNG" && ext != ".GIF"
							&& ext != ".JPG" && ext != ".JPEG") {
						alert("图片限于bmp,png,gif,jpeg,jpg格式");
						return false;
					}
					$('#updateCompanyAccountForm').submit();
				});
$('#logoutBtnForCompany').click(function() {
	$.ajax({
		type : 'post',
		url : getRootPath() + "/company/logout.action",
		data : {},
		dataType : "json",
		success : function(data) {
			window.location = getRootPath() + "/index.jsp";
		},
		error : function() {
			alert("异常");
		}
	});
});