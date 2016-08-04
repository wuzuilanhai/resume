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
$(".banner").swBanner();
$("div[id^='div_login']")
		.click(
				function(event) {
					$("div[id^='framemid_']").hide();
					var str = $(this).attr("id").substring(10);
					var showDivId = "#framemid_" + str;
					$(showDivId).show();
					if (str == "business") {
						$('#jobhunterRegister').attr("href",getRootPath()+"/companyRegister.jsp");
						$('#changeImgDiv a').remove();
						$('#changeImgDiv')
								.append(
										'<a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage(\'business\',\'\',\''
												+ getRootPath()
												+ '/images/index/dhh/person2.png\',1)"><img src="'
												+ getRootPath()
												+ '/images/index/dhh/person.jpg" alt="" width="80" height="30" id="business"> </a>');
					} else {
						$('#jobhunterRegister').attr("href",getRootPath()+"/jobhunterRegister.jsp");
						$('#changeImgDiv a').remove();
						$('#changeImgDiv')
								.append(
										'<a href="#" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage(\'business\',\'\',\''
												+ getRootPath()
												+ '/images/index/business2.png\',1)"><img src="'
												+ getRootPath()
												+ '/images/index/business.png" alt="" width="80" height="30" id="business"> </a>');
					}
				});
$("#form1 input").focus(function() {
	var tipId = "#" + $(this).attr("name") + "Tip";
	$(tipId).html("");
});
$('#findJobHunterBtn').click(function() {
	if (($("#form1 input:eq(0)").val().trim()).length == 0) {
		$('#jobhunterNameTip').html("<font color='red'>输入不能为空!</font>");
		return;
	}
	if (($("#form1 input:eq(1)").val().trim()).length == 0) {
		$('#jobhunterPasswordTip').html("<font color='red'>密码不能为空!</font>");
		return;
	}
	var action = $('#form1').attr('action');
	var formAttr = $('#form1').serialize();
	$.post(action, formAttr, function(data) {
		if (jQuery.isEmptyObject(data)) {
			alert("用户名与密码不相符!");
			$("#form1 input:eq(1)").val("");
		}
	});
});
