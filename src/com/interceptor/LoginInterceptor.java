package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 类描述：登陆拦截类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-29 时间：下午2:16:41
 * @version 1.0
 */
public class LoginInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
	}

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURI();
		if (url.indexOf("Login.action") >= 0) {
			// 放行
			return true;
		}
		HttpSession session = request.getSession();
		if (session.getAttribute("adminName") != null) {
			return true;
		}
		response.sendRedirect(request.getSession().getServletContext().getContextPath()+"/index.jsp");
		// return false表示拦截，不向下执行
		// return true表示放行
		return false;
	}

}
