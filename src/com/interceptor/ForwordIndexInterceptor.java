package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 类描述：跳转主页拦截器
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-29 时间：下午2:40:51
 * @version 1.0
 */
public class ForwordIndexInterceptor implements HandlerInterceptor {

	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {

	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {

	}

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURI();
		System.out.println("=========>"+url);
		if (url.indexOf("index.jsp") >= 0) {
			HttpSession session = request.getSession();
			if (session.getAttribute("jobhunter") != null) {
				System.out.println("123");
				response.sendRedirect(session.getServletContext()
						.getContextPath() + "/resume/showResume.action");
				return false;
			}
			if (session.getAttribute("company") != null) {
				response.sendRedirect(session.getServletContext()
						.getContextPath() + "/company/companyManage.action");
				return false;
			}
		}
		// return false表示拦截，不向下执行
		// return true表示放行
		return true;
	}

}
