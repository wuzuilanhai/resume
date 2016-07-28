package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		if(jobhunter==null){
			return "failed";
		}
		resume.setJobhunterId(jobhunter.getJobhunterId());
		resume.setLastEditTime(new Date());
		resumeService.addResume(resume);
		return "success";
	}
}
