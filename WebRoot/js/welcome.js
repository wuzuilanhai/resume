$('#pagescroll').fullpage(
		{
			navigation : true,
			loopTop : true,
			loopBottom : true,
			resize : false,
			scrollingSpeed : 1500,
			navigationTooltips : [ '首页', '优质服务', '专业管理团队', '品牌优势', '视觉化交互',
					'马上体验' ],
			afterRender : function() {
			},
			afterLoad : function(anchorLink, index) {
				if (index == 1) {
					// $('#frame1_1').removeClass('fadeOutUp').addClass('animated
					// fadeInRight');
					// $('#frame1_2').removeClass('fadeOutUp').addClass('animated
					// fadeInUp');
					// $('#frame1_3').removeClass('fadeOutUp').addClass('animated
					// fadeInLeft');
					// $('#frame1_4').removeClass('fadeOutUp').addClass('animated
					// fadeInDown');
					// $('#frame1_5').removeClass('fadeOutUp').addClass('animated
					// fadeInDown');
					// $('#frame1_6').removeClass('fadeOutUp').addClass('animated
					// fadeInDown');
				}
				if (index == 2) {
					$('#frame2_1').removeClass('fadeOutUp').addClass(
							'animated fadeInLeft');
					// $('#frame2_2').removeClass('fadeOutUp').addClass('animated
					// fadeInUp');
					$('#frame2_3').removeClass('fadeOutUp').addClass(
							'animated fadeInDown');
				}
				if (index == 3) {
					$('#frame3_1').removeClass('fadeOutUp').addClass(
							'animated fadeInRight');
					// $('#frame3_2').removeClass('fadeOutUp').addClass('animated
					// fadeInUp');
					$('#frame3_3').removeClass('fadeOutUp').addClass(
							'animated fadeInUp');
				}
				if (index == 4) {
					$('#frame4_1').removeClass('fadeOutUp').addClass(
							'animated fadeInLeft');
					// $('#frame4_2').removeClass('fadeOutUp').addClass('animated
					// fadeInDown');
					$('#frame4_3').removeClass('fadeOutUp').addClass(
							'animated fadeInDown');
				}
				if (index == 5) {
					$('#frame5_1').removeClass('fadeOutUp').addClass(
							'animated fadeInRight');
					// $('#frame5_2').removeClass('fadeOutUp').addClass('animated
					// fadeInUp');
					$('#frame5_3').removeClass('fadeOutUp').addClass(
							'animated fadeInUp');
				}
				if (index == 6) {
					$('#frame6_1').removeClass('fadeOutUp').addClass(
							'animated fadeInDown');
					$('#frame6_2').removeClass('fadeOutUp').addClass(
							'animated fadeInUp');
					// $('#frame6_3').removeClass('fadeOutUp').addClass('animated
					// fadeInUp');
					$('#frame6_4').removeClass('fadeOutUp').addClass(
							'animated fadeInDown');
				}
			},
			onLeave : function(index, direction) {
				if (index == 1) {
					$('#frame1_1').addClass('fadeOutUp');
					$('#frame1_2').addClass('fadeOutUp');
					$('#frame1_3').addClass('fadeOutUp');
					$('#frame1_4').addClass('fadeOutUp');
					$('#frame1_5').addClass('fadeOutUp');
					// $('#frame1_6').addClass('fadeOutUp');
				}
				if (index == 2) {
					$('#frame2_1').addClass('fadeOutUp');
					// $('#frame2_2').addClass('fadeOutUp');
					$('#frame2_3').addClass('fadeOutUp');
				}
				if (index == 3) {
					$('#frame3_1').addClass('fadeOutUp');
					// $('#frame3_2').addClass('fadeOutUp');
					$('#frame3_3').addClass('fadeOutUp');
				}
				if (index == 4) {
					$('#frame4_1').addClass('fadeOutUp');
					// $('#frame4_2').addClass('fadeOutUp');
					$('#frame4_3').addClass('fadeOutUp');
				}
				if (index == 5) {
					$('#frame5_1').addClass('fadeOutUp');
					// $('#frame5_2').addClass('fadeOutUp');
					$('#frame5_3').addClass('fadeOutUp');
				}
				if (index == 6) {
					$('#frame6_1').addClass('fadeOutUp');
					$('#frame6_2').addClass('fadeOutUp');
					// $('#frame6_3').addClass('fadeOutUp');
					$('#frame6_4').addClass('fadeOutUp');
				}
			}
		});
function show() {
	var h = document.body.clientHeight;
	var w = document.body.clientWidth;

	document.getElementById('framemain1').style.height = h;
	document.getElementById('framemain2').style.height = h;
	document.getElementById('framemain3').style.height = h;
	document.getElementById('framemain4').style.height = h;
	document.getElementById('framemain5').style.height = h;
	document.getElementById('framemain6').style.height = h;
	document.getElementById('framemain7').style.height = h;
	document.getElementById('framemain7').style.width = w;
}
window.onload = show;
window.onresize = show;
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
function showselect() {
	document.getElementById("select").style.display = "block";
	document.getElementById("framemain7").style.display = "block";
	$('#black').fadeIn(1500);
	$('#frame7_1').delay(1500).fadeIn(500);
	$('#frame7_2').delay(1500).fadeIn(1000);
	$('#frame7_3').delay(1500).fadeIn(1500);
	$('#frame7_4').delay(1500).fadeIn(2000);
	document.getElementById("framemain6").className = 'blur';
}
function returnselect() {
	document.getElementById("black").style.display = "none";
	document.getElementById("select").style.display = "none";
	document.getElementById("framemain7").style.display = "none";
	document.getElementById("framemain6").className = '';
}