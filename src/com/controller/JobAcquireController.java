package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.JobAcquire;

/**
 * 类描述：职位要求控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/jobAcquire")
public class JobAcquireController extends BasicController {
	/**
	 * 添加职位要求
	 * 
	 * @param jobAcquire
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJobAcquire")
	public String addJobAcquire(JobAcquire jobAcquire) throws Exception {
		jobAcquireService.addJobAcquire(jobAcquire);
		return "success";
	}
}
