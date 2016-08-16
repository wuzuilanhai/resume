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

function ShowFLT(i) {
	lbmc = eval('LM' + i);
	if (lbmc.style.display == 'none') {
		lbmc.style.display = '';
	} else {
		lbmc.style.display = 'none';
	}
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

$('#addWorkExperience').click(function() {
	if ($('#hiddenDivForAdd').is(':hidden')) {
		$('#hiddenDivForAdd').show();
		$('#addWorkExperience').html("取消");
	} else {
		$('#hiddenDivForAdd').hide();
		$('#addWorkExperience').html("新建");
	}
});
$('#addEducationExperience').click(function() {
	if ($('#hiddenDivForEducationExperience').is(':hidden')) {
		$('#hiddenDivForEducationExperience').show();
		$('#addEducationExperience').html("取消");
	} else {
		$('#hiddenDivForEducationExperience').hide();
		$('#addEducationExperience').html("新建");
	}
});
$('#addProjectExperience').click(function() {
	if ($('#hiddenDivForProjectExperience').is(':hidden')) {
		$('#hiddenDivForProjectExperience').show();
		$('#addProjectExperience').html("取消");
	} else {
		$('#hiddenDivForProjectExperience').hide();
		$('#addProjectExperience').html("新建");
	}
});
$('#form1 input:eq(0)').click(function() {
	$('#jobhunterRealName').html("");
});
$('#form2 input:eq(0)').click(function() {
	$('#jobhunterPhoneTip').html("");
});
$('#form2 input:eq(1)').click(function() {
	$('#jobhunterEmailTip').html("");
});
$('#form3 input:eq(0)').click(function() {
	$('#expectWorksiteTip').html("");
});
$('#form3 input:eq(1)').click(function() {
	$('#expectSalaryTip').html("");
});
$('#form3 input:eq(3)').click(function() {
	$('#currentSalaryTip').html("");
});
$('#updateJobhunter1').click(function() {
	if ($('#form1 input:eq(0)').val().trim().length == 0) {
		$('#jobhunterRealName').html("");
		$('#jobhunterRealName').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	$('#form1').submit();
});
$('#updateJobhunter2').click(function() {
	if ($('#form2 input:eq(0)').val().trim().length == 0) {
		$('#jobhunterPhoneTip').html("");
		$('#jobhunterPhoneTip').html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($("#phone").val().trim())) {
		$('#phone').val("");
		$('#jobhunterPhoneTip').html("");
		$('#jobhunterPhoneTip').html("<font color='red'>号码格式有误!</font>");
		return;
	}
	if ($('#form2 input:eq(1)').val().trim().length == 0) {
		$('#jobhunterEmailTip').html("");
		$('#jobhunterEmailTip').html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($("#email").val().trim())) {
		$('#email').val("");
		$('#jobhunterEmailTip').html("");
		$('#jobhunterEmailTip').html("<font color='red'>邮箱格式有误!</font>");
		return;
	}
	$('#form2').submit();
});
$('#industryId').change(
		function() {
			var parentid = $('#industryId').val();
			$.ajax({
				type : 'post',
				url : getRootPath()
						+ "/position/findPositionByParentId.action?parentid="
						+ parentid,
				data : {},
				dataType : "json",
				success : function(data) {
					$("#positionId  option").remove();
					$.each(data, function(name, value) {
						$("#positionId").append(
								"<option value=" + value.positionId + ">"
										+ value.positionName + "</option>");
					});
				},
				error : function() {
					alert("异常");
				}
			});
		});
$('#updateCareerIntention')
		.click(
				function() {
					if ($('#form3 input:eq(0)').val().trim().length == 0) {
						$('#expectWorksiteTip').html("");
						$('#expectWorksiteTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					}
					if ($('#form3 input:eq(1)').val().trim().length == 0) {
						$('#expectSalaryTip').html("");
						$('#expectSalaryTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					} else if (!/^[0-9]+(\.[0-9]+){0,1}$/.test($(
							"#expectSalary").val().trim())) {
						$('#expectSalary').val("");
						$('#expectSalaryTip').html("");
						$('#expectSalaryTip').html(
								"<font color='red'>请输入数字!</font>");
						return;
					}
					if ($('#form3 input:eq(3)').val().trim().length == 0) {
						$('#currentSalaryTip').html("");
						$('#currentSalaryTip').html(
								"<font color='red'>输入不能为空!</font>");
						return;
					} else if (!/^[0-9]+(\.[0-9]+){0,1}$/.test($(
							"#currentSalary").val().trim())) {
						$('#currentSalary').val("");
						$('#currentSalaryTip').html("");
						$('#currentSalaryTip').html(
								"<font color='red'>请输入数字!</font>");
						return;
					}
					$('#form3').submit();
				});
$('#isDiscuss').click(function() {
	if ($("#isDiscuss").is(':checked')) {
		$("#isDiscuss").attr("value", 1);
	} else {
		$("#isDiscuss").attr("value", 0);
	}
});
$('#isUnify').click(function() {
	if ($("#isUnify").is(':checked')) {
		$("#isUnify").attr("value", 1);
	} else {
		$("#isUnify").attr("value", 0);
	}
});
$('#isShow').click(function() {
	if ($("#isShow").is(':checked')) {
		$("#isShow").attr("value", 1);
	} else {
		$("#isShow").attr("value", 0);
	}
});
$('#companyName').click(function() {
	$('#companyNameTip').html("");
});
$('#worksite').click(function() {
	$('#worksiteTip').html("");
});
$('#positionName').click(function() {
	$('#positionNameTip').html("");
});
$('#subordinateNumber').click(function() {
	$('#subordinateNumberTip').html("");
});
$('#schoolName').click(function() {
	$('#schoolNameTip').html("");
});
$('#majorName').click(function() {
	$('#majorNameTip').html("");
});
$('#projectName').click(function() {
	$('#projectNameTip').html("");
});
$('#companyName1').click(function() {
	$('#companyNameTip1').html("");
});
$('#addWorkExperienceBtn').click(function() {
	if ($('#companyName').val().trim().length == 0) {
		$('#companyNameTip').html("");
		$('#companyNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($('#worksite').val().trim().length == 0) {
		$('#worksiteTip').html("");
		$('#worksiteTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($('#positionName').val().trim().length == 0) {
		$('#positionNameTip').html("");
		$('#positionNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($('#subordinateNumber').val().trim().length == 0) {
		$('#subordinateNumberTip').html("");
		$('#subordinateNumberTip').html("<font color='red'>输入不能为空!</font>");
		return;
	} else if (!/^[0-9]*$/.test($("#subordinateNumber").val().trim())) {
		$('#subordinateNumber').val("");
		$('#subordinateNumberTip').html("");
		$('#subordinateNumberTip').html("<font color='red'>请输入数字!</font>");
		return;
	}
	$('#addWorkExperienceForm').submit();
});
$('#addEducationExperienceBtn').click(function() {
	if ($('#schoolName').val().trim().length == 0) {
		$('#schoolNameTip').html("");
		$('#schoolNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($('#majorName').val().trim().length == 0) {
		$('#majorNameTip').html("");
		$('#majorNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	$('#addEducationExperienceForm').submit();
});
$('#addProjectExperienceBtn').click(function() {
	if ($('#projectName').val().trim().length == 0) {
		$('#projectNameTip').html("");
		$('#projectNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if ($('#companyName1').val().trim().length == 0) {
		$('#companyNameTip1').html("");
		$('#companyNameTip1').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	$('#addProjectExperienceForm').submit();
});
$("input[id^='workExperienceCompanyName']").click(function() {
	var id = $(this).attr('id').substring(25);
	var newId = "#workExperienceCompanyNameTip" + id;
	$(newId).html("");
});
$("input[id^='workExperienceWorksite']").click(function() {
	var id = $(this).attr('id').substring(22);
	var newId = "#workExperienceWorksiteTip" + id;
	$(newId).html("");
});
$("input[id^='workExperiencePositionName']").click(function() {
	var id = $(this).attr('id').substring(26);
	var newId = "#workExperiencePositionNameTip" + id;
	$(newId).html("");
});
$("a[id^='updateWorkExperience']").click(
		function() {
			var id = $(this).attr("id").substring(20);
			var formId = "#workExperience" + id;
			var id1 = "#workExperienceCompanyName" + id;
			var id11 = "#workExperienceCompanyNameTip" + id;
			var id2 = "#workExperienceWorksite" + id;
			var id22 = "#workExperienceWorksiteTip" + id;
			var id3 = "#workExperiencePositionName" + id;
			var id33 = "#workExperiencePositionNameTip" + id;
			if ($(id1).val().trim().length == 0) {
				$(id11).html("");
				$(id11).html("<font color='red'>输入不能为空!</font>");
				return;
			}
			if ($(id2).val().trim().length == 0) {
				$(id22).html("");
				$(id22).html("<font color='red'>输入不能为空!</font>");
				return;
			}
			if ($(id3).val().trim().length == 0) {
				$(id33).html("");
				$(id33).html("<font color='red'>输入不能为空!</font>");
				return;
			}
			$(formId).attr(
					"action",
					getRootPath()
							+ "/workExperience/updateWorkExperience.action");
			$(formId).submit();
		});
$("a[id^='deleteWorkExperience']").click(function() {
	var id = $(this).attr("id").substring(20);
});