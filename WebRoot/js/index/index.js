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
function tipDisappear() {
	alert("123");
	alert($(this).name);
}
$(".banner").swBanner();
$("div[id^='div_login']").click(function(event) {
	$("div[id^='framemid_']").hide();
	var showDivId = "#framemid_" + $(this).attr("id").substring(10);
	$(showDivId).show();
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
