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
var speed = 500;// 自定义滚动速度
// 回到顶部
$("#toTop").click(function() {
	$("html,body").animate({
		"scrollTop" : 0
	}, speed);
});
$('#forwordByPagenum').click(function() {
	var currentPage = $('#pageNum').val();
	if (!currentPage) {
		alert("请输入非空数字！");
		$('#pageNum').val("");
		return;
	} else if (!/^[0-9]*$/.test(currentPage)) {
		alert("请输入数字！");
		$('#pageNum').val("");
		return;
	}
	var href = $('#links a:eq(1)').attr("href");
	var head = href.split('&')[0];
	var tail = href.substring(head.length);
	var head1 = head.substring(0, head.length - 1) + currentPage;
	window.location.href = head1 + tail;
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
					$("#type").append("<option value=0>分类</option>");
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
$('#jobName').click(function() {
	$('#jobNameTip').html("");
});
$('#searchButton').click(function() {
	if (!$('#jobName').val()) {
		$('#jobNameTip').html("");
		$('#jobNameTip').html("<font color='red'>请输入关键词！</font>");
		return;
	}
	$('#searchForm').submit();
});
$('#cleanCondition').click(function() {
	$('#jobName').val("");
	$('#industry').val(0);
	$("#type  option").remove();
	$("#type").append("<option value=0>分类</option>");
	$('#province').val('省份');
	$('#city').val('城市');
});
$('#time').change(function() {
	if ($(this).val() != 0) {
		$('#searchForm').submit();
	}
});
$('#salary').change(function() {
	if ($(this).val() != 0) {
		$('#searchForm').submit();
	}
});
$('#addResumeJobBtn').click(
		function() {
			var jobId = $('#jobIdValue').val();
			$.ajax({
				type : 'post',
				url : getRootPath() + "/resumeJob/addResumeJob.action?jobId="
						+ jobId,
				data : {},
				dataType : "json",
				success : function(data) {
					if (data.info == "success") {
						$('#addResumeJobImg').attr("src",
								getRootPath() + "/images/job/hasSend.png");
					} else if (data.info == "failed") {
						alert("用户还未登录！");
						window.location.href = getRootPath() + "/index.jsp";
					}
				},
				error : function() {
					alert("异常");
				}
			});
		});