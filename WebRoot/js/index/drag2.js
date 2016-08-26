/* 
 * drag 1.0
 * create by tony@jentian.com
 * date 2015-08-18
 * 拖动滑块
 */
(function($) {
	$.fn.drag2 = function(options) {
		var x2, drag2 = this, isMove2 = false, defaults2 = {};
		var options2 = $.extend(defaults2, options);
		// 添加背景，文字，滑块
		var html2 = '<div class="drag_bg2"></div>'
				+ '<div class="drag_text2" onselectstart="return false;" unselectable="on">拖动滑块验证</div>'
				+ '<div class="handler2 handler_bg2"></div>';
		this.append(html2);

		var handler2 = drag2.find('.handler2');
		var drag_bg2 = drag2.find('.drag_bg2');
		var text2 = drag2.find('.drag_text2');
		var maxWidth2 = drag2.width() - handler2.width(); // 能滑动的最大间距

		// 鼠标按下时候的x轴的位置
		handler2.mousedown(function(e) {
			isMove2 = true;
			x2 = e.pageX - parseInt(handler2.css('left'), 10);
		});

		// 鼠标指针在上下文移动时，移动距离大于0小于最大间距，滑块x轴位置等于鼠标移动距离
		$(this).mousemove(function(e) {
			if (isOk2 == 0) {
				var _x = e.pageX - x2;
				if (isMove2) {
					if (_x > 0 && _x <= maxWidth2) {
						handler2.css({
							'left' : _x
						});
						drag_bg2.css({
							'width' : _x
						});
					} else if (_x > maxWidth2) { // 鼠标指针移动距离达到最大时清空事件
						dragOk();
					}
				}
			}
		}).mouseup(function(e) {
			isMove2 = false;
			var _x = e.pageX - x2;
			if (_x < maxWidth2) { // 鼠标松开时，如果没有达到最大距离位置，滑块就返回初始位置
				handler2.css({
					'left' : 0
				});
				drag_bg2.css({
					'width' : 0
				});
			}
		});

		// 清空事件
		function dragOk() {
			isOk2 = 1;
			handler2.removeClass('handler_bg2').addClass('handler_ok_bg2');
			text2.text('验证通过');
			drag2.css({
				'color' : 'fff'
			});
			$(this).unbind('mousedown');
			$(this).unbind('mousemove');
			$(this).unbind('mouseup');
		}
	};
})(jQuery);
