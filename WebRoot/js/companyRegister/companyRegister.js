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
$("#registerForm input").focus(function() {
	var tipId = "#" + $(this).attr("name") + "Tip";
	$(tipId).html("");
});
$('#province').click(function() {
	$('#companyLocationTip').html("");
});
$('#city').click(function() {
	$('#companyLocationTip').html("");
});
$('#industry').click(function() {
	$('#industryIdTip').html("");
});
$('#type').click(function() {
	$('#industryIdTip').html("");
});
$('#industry').change(
		function() {
			var parentid = $('#industry').val();
			if (parentid == "行业")
				return;
			$.ajax({
				type : 'post',
				url : getRootPath()
						+ "/industry/findChildrenIndustry.action?parentid="
						+ parentid,
				data : {},
				dataType : "json",
				success : function(data) {
					$("#type  option").remove();
					$("#type").append("<option>分类</option>");
					$.each(data, function(name, value) {
						$("#type").append(
								"<option value=" + value.industryId + ">"
										+ value.industryName + "</option>");
					});
				},
				error : function() {
					alert("异常");
				}
			});
		});
$("div[id^='next_btn']")
		.click(
				function() {
					var divName = $(this).attr("id").substring(9);
					var number = parseInt($(this).attr("id").substring(12));
					// 字段验证
					switch (number) {
					case 1:
						if (($("#companyLoginName").val().trim()).length == 0) {
							$('#companyLoginNameTip').html("");
							$('#companyLoginNameTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						}
						if (($("#companyPassword").val().trim()).length == 0) {
							$('#companyPasswordTip').html("");
							$('#companyPasswordTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (($("#companyPassword").val().trim()).length < 4) {
							$('#companyPassword').val("");
							$('#companyPasswordTip').html("");
							$('#companyPasswordTip').html(
									"<font color='red'>长度应大于3位!</font>");
							return;
						} else if (!/^[a-z,A-Z,0-9]+$/.test($(
								"#companyPassword").val().trim())) {
							$('#companyPassword').val("");
							$('#companyPasswordTip').html("");
							$('#companyPasswordTip').html(
									"<font color='red'>请输字母或数字!</font>");
							return;
						}
						if (($("#companyPasswordRepeat").val().trim()).length == 0) {
							$('#companyPasswordRepeatTip').html("");
							$('#companyPasswordRepeatTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if ($("#companyPassword").val().trim() != $(
								"#companyPasswordRepeat").val().trim()) {
							$('#companyPassword').val("");
							$('#companyPasswordRepeat').val("");
							$('#companyPasswordTip').html("");
							$('#companyPasswordRepeatTip').html("");
							$('#companyPasswordRepeatTip').html(
									"<font color='red'>两次输入不同!</font>");
							return;
						}
						if (($("#phoneNumber").val().trim()).length == 0) {
							$('#phoneNumberTip').html("");
							$('#phoneNumberTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($(
								"#phoneNumber").val().trim())) {
							$('#phoneNumber').val("");
							$('#phoneNumberTip').html("");
							$('#phoneNumberTip').html(
									"<font color='red'>号码格式有误!</font>");
							return;
						}
						if (($("#companyEmail").val().trim()).length == 0) {
							$('#companyEmailTip').html("");
							$('#companyEmailTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($(
								"#companyEmail").val().trim())) {
							$('#companyEmail').val("");
							$('#companyEmailTip').html("");
							$('#companyEmailTip').html(
									"<font color='red'>邮箱格式有误!</font>");
							return;
						}
						if (($("#validationImg").val().trim()).length == 0) {
							$('#validationImgTip').html("");
							$('#validationImgTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						}
						$
								.ajax({
									type : 'post',
									url : getRootPath()
											+ "/company/checkValiImgAndLoginName.action?validationImg="
											+ encodeURI(encodeURI($(
													'#validationImg').val()))
											+ "&companyLoginName="
											+ encodeURI(encodeURI($(
													'#companyLoginName').val())),
									data : {},
									dataType : "json",
									success : function(data) {
										if (data.nameInfo == "exist") {
											$('#companyLoginNameTip').html("");
											$('#companyLoginNameTip')
													.html(
															"<font color='red'>用户名已存在!</font>");
											$('#companyLoginName').val("");
										}
										if (data.valiInfo == "success"
												&& data.nameInfo == "notExist") {
											if (number < 2) {
												number += 1;
											}
											var divId = "#div" + number;
											$("div[id^='div']").hide();
											$(divId).show();
										} else if (data.valiInfo == "failed") {
											$('#validationImgTip').html("");
											$('#validationImgTip')
													.html(
															"<font color='red'>验证码输入错误!</font>");
											$('#validationImg').val("");
											$('#valiImg').attr(
													"src",
													getRootPath()
															+ "/valiImgUtils?"
															+ Math.random());
											return;
										}
									},
									error : function() {
										alert("异常");
									}
								});
						break;
					case 2:
						if (($("#companyName").val().trim()).length == 0) {
							$('#companyNameTip').html("");
							$('#companyNameTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						}
						if ($('#province').val() == "省份"
								|| $('#city').val() == "城市") {
							$('#companyLocationTip').html("");
							$('#companyLocationTip').html(
									"<font color='red'>请选择所在地!</font>");
							return;
						}
						if ($('#industry').val() == "行业"
								|| $('#type').val() == "分类") {
							$('#industryIdTip').html("");
							$('#industryIdTip').html(
									"<font color='red'>请选择所属行业!</font>");
							return;
						}
						if (($("#chatterName").val().trim()).length == 0) {
							$('#chatterNameTip').html("");
							$('#chatterNameTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						}
						if ($("#chatterSex input[type='radio']:checked").length <= 0) {
							$('#chatterSexTip').html("");
							$('#chatterSexTip').html(
									"<font color='red'>请选择性别!</font>");
							return;
						}
						if (($("#chatterPhone").val().trim()).length == 0) {
							$('#chatterPhoneTip').html("");
							$('#chatterPhoneTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($(
								"#chatterPhone").val().trim())) {
							$('#chatterPhone').val("");
							$('#chatterPhoneTip').html("");
							$('#chatterPhoneTip').html(
									"<font color='red'>号码格式有误!</font>");
							return;
						}
						$.ajax({
							type : 'post',
							url : $('#registerForm').attr("action"),
							data : $('#registerForm').serialize(),
							dataType : "json",
							success : function(data) {
								if (number <= 2) {
									number += 1;
								}
								var divId = "#div" + number;
								$("div[id^='div']").hide();
								$(divId).show();
							},
							error : function() {
								alert("注册失败!");
								// 重新加载页面
								window.location.reload();
							}
						});
						break;
					default:
						break;
					}
				});
$("div[id^='previous_btn']").click(function() {
	var divName = $(this).attr("id").substring(13);
	var number = parseInt($(this).attr("id").substring(16));
	if (number > 1) {
		number -= 1;
	}
	var divId = "#div" + number;
	$("div[id^='div']").hide();
	$(divId).show();
});
$('#logoutBtn').click(function() {
	$.ajax({
		type : 'post',
		url : getRootPath() + "/jobHunter/logout.action",
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