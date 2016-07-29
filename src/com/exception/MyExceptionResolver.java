package com.exception;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

/**
 * 类描述：全局异常处理器
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-29 时间：下午1:42:26
 * @version 1.0
 */
public class MyExceptionResolver implements HandlerExceptionResolver {

	public ModelAndView resolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex) {
		MyException myException = null;
		if (ex instanceof MyException) {
			myException = (MyException) ex;
		} else {
			myException = new MyException("未知错误");
		}
		// 错误信息
		String message = myException.getMessage();
		ModelAndView modelAndView = new ModelAndView();
		// 将错误信息传到页面
		modelAndView.addObject("message", message);
		// 指向错误页面
		modelAndView.setViewName("error");
		return modelAndView;
	}

}
