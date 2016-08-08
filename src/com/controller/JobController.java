package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Job;

/**
 * 类描述：职位控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/job")
public class JobController extends BasicController {
	/**
	 * 添加简历
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJob")
	public String addJob(Job job, String positionName, String companyName)
			throws Exception {
		Integer positionId = positionService
				.findPositionIdByPositionName(positionName);
		Integer companyId = companyService
				.findCompanyIdByCompanyName(companyName);
		job.setCompanyId(companyId);
		job.setJobSubtime(new Date());
		// 设置发布的职位状态，0：已失效，1：有效
		job.setJobStatus(1);
		jobService.addJob(job);
		System.out.println("==========>" + job.getJobId());
		return "success";
	}
}
