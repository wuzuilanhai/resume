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