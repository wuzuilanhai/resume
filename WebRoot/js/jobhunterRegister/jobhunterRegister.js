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
$("div[id^='next_btn']")
		.click(
				function() {
					var divName = $(this).attr("id").substring(9);
					var number = parseInt($(this).attr("id").substring(12));
					// 字段验证
					switch (number) {
					case 1:
						if (($("#jobhunterName").val().trim()).length == 0) {
							$('#jobhunterNameTip').html("");
							$('#jobhunterNameTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						}
						if (($("#jobhunterPassword").val().trim()).length == 0) {
							$('#jobhunterPasswordTip').html("");
							$('#jobhunterPasswordTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (($("#jobhunterPassword").val().trim()).length < 4) {
							$('#jobhunterPassword').val("");
							$('#jobhunterPasswordTip').html("");
							$('#jobhunterPasswordTip').html(
									"<font color='red'>长度应大于3位!</font>");
							return;
						} else if (!/^[a-z,A-Z,0-9]+$/.test($(
								"#jobhunterPassword").val().trim())) {
							$('#jobhunterPassword').val("");
							$('#jobhunterPasswordTip').html("");
							$('#jobhunterPasswordTip').html(
									"<font color='red'>请输字母或数字!</font>");
							return;
						}
						if (($("#jobhunterPasswordRepeat").val().trim()).length == 0) {
							$('#jobhunterPasswordRepeatTip').html("");
							$('#jobhunterPasswordRepeatTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if ($("#jobhunterPassword").val().trim() != $(
								"#jobhunterPasswordRepeat").val().trim()) {
							$('#jobhunterPassword').val("");
							$('#jobhunterPasswordRepeat').val("");
							$('#jobhunterPasswordTip').html("");
							$('#jobhunterPasswordRepeatTip').html("");
							$('#jobhunterPasswordRepeatTip').html(
									"<font color='red'>两次输入不同!</font>");
							return;
						}
						if (($("#jobhunterPhone").val().trim()).length == 0) {
							$('#jobhunterPhoneTip').html("");
							$('#jobhunterPhoneTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (!/^(\+\d{2,3}\-)?\d{11}$/.test($(
								"#jobhunterPhone").val().trim())) {
							$('#jobhunterPhone').html("");
							$('#jobhunterPhoneTip').html("");
							$('#jobhunterPhoneTip').html(
									"<font color='red'>号码格式有误!</font>");
							return;
						}
						if (($("#jobhunterEmail").val().trim()).length == 0) {
							$('#jobhunterEmailTip').html("");
							$('#jobhunterEmailTip').html(
									"<font color='red'>输入不能为空!</font>");
							return;
						} else if (!/^\w{3,}@\w+(\.\w+)+$/.test($(
								"#jobhunterEmail").val().trim())) {
							$('#jobhunterEmail').html("");
							$('#jobhunterEmailTip').html("");
							$('#jobhunterEmailTip').html(
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
											+ "/jobHunter/checkValiImgAndName.action?validationImg="
											+ encodeURI(encodeURI($(
													'#validationImg').val()))
											+ "&jobhunterName="
											+ encodeURI(encodeURI($(
													'#jobhunterName').val())),
									data : {},
									dataType : "json",
									success : function(data) {
										if (data.nameInfo == "exist") {
											$('#jobhunterNameTip').html("");
											$('#jobhunterNameTip')
													.html(
															"<font color='red'>用户名已存在!</font>");
											$('#jobhunterName').val("");
										}
										if (data.valiInfo == "success"
												&& data.nameInfo == "notExist") {
											if (number < 3) {
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
						break;
					case 3:
						break;
					default:
						break;
					}
				});
$("div[id^='previous_btn']").click(function() {
	var divName = $(this).attr("id").substring(13);
	var number = parseInt($(this).attr("id").substring(16));
	// 字段验证
	switch (number) {
	case 1:
		break;
	case 2:
		break;
	case 3:
		break;
	default:
		break;
	}
	if (number > 1) {
		number -= 1;
	}
	var divId = "#div" + number;
	$("div[id^='div']").hide();
	$(divId).show();
});