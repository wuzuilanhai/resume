package com.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exception.MyException;
import com.pojo.Jobhunter;
import com.pojo.Resume;

/**
 * 类描述：简历控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/resume")
public class ResumeController extends BasicController {
	/**
	 * 添加简历
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addResume")
	public String addResume(Resume resume, String jobhunterPhone)
			throws Exception {
		Jobhunter jobhunter = jobHunterService
				.findJobHunterByPhone(jobhunterPhone);
		if (jobhunter == null) {
			return "failed";
		}
		resume.setJobhunterId(jobhunter.getJobhunterId());
		resume.setLastEditTime(new Date());
		resumeService.addResume(resume);
		return "success";
	}

	/**
	 * 显示简历详细信息
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showResume")
	public String showResume(HttpSession session) throws Exception {
		// 判断求职者是否已经登录
		if (session.getAttribute("jobhunter") != null) {
			return "resume/myResume";
		} else {
			throw new MyException("用户还未登录！");
		}
	}

}
