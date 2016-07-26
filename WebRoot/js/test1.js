$(document).ready(function() {
	$('#sendBtn').click(function() {
		var action = $('#form').attr('action');
		var Formattr = $('#form').serialize();
		$.post(action, Formattr, function(data) {
			if (data) {
				alert(data.adminName + ":" + data.adminPassword);
			} else {
				alert("查无此人！");
			}
		});
	});
});