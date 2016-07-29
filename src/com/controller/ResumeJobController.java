package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.ResumeJob;

/**
 * 类描述：简历-职位关系控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/resumeJob")
public class ResumeJobController extends BasicController {
	/**
	 * 添加简历-职位关系
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addResumeJob")
	public String addResumeJob(ResumeJob resumeJob) throws Exception {
		resumeJobService.addResumeJob(resumeJob);
		return "success";
	}
}
