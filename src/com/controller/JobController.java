package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.Page;

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

	public Integer pageSize = 4;

	/**
	 * 添加简历
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJob")
	public String addJob(Job job, String positionName, String companyName)
			throws Exception {
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

	/**
	 * 查找所有职位，分页显示
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findAllJobs")
	public String findAllJobs(Integer currentPage, HttpSession session)
			throws Exception {
		if (currentPage == null) {
			currentPage = 1;
		}
		Integer recordCount = jobService.findAllJobs();
		Page page = new Page(currentPage, pageSize, recordCount,
				null, session.getServletContext().getContextPath());
		List<JobCustom> pageJobCustoms = jobService.findAllJobsByPage(
				page);
		page.setRecordList(pageJobCustoms);
		session.setAttribute("page", page);
		return "job/searchJob";
	}

}
