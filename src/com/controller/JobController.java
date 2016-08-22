package com.controller;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Company;
import com.pojo.Industry;
import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.JobQueryVo;
import com.pojo.Jobhunter;
import com.pojo.Page;
import com.pojo.Resume;
import com.pojo.ResumeJob;

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
	public String addJob(Job job, HttpSession session) throws Exception {
		Company company = (Company) session.getAttribute("company");
		job.setJobSubtime(new Date());
		// 设置发布的职位状态，0：已失效，1：有效
		job.setJobStatus(1);
		job.setCompanyId(company.getCompanyId());
		jobService.addJob(job);
		return "redirect:/company/companyManage.action";
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
		Page page = new Page(currentPage, pageSize, recordCount, null, session
				.getServletContext().getContextPath());
		List<JobCustom> pageJobCustoms = jobService.findAllJobsByPage(page);
		page.setRecordList(pageJobCustoms);
		session.setAttribute("page", page);
		List<Industry> industries = industryService.findParentIndustry();
		session.setAttribute("industries", industries);
		return "job/searchJob";
	}

	/**
	 * 根据提交的表单数据来查找职位
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findJobsByCondition")
	public String findJobsByCondition(JobQueryVo jobQueryVo,
			Integer currentPage, HttpSession session, HttpServletRequest request)
			throws Exception {
		Integer iId = jobQueryVo.getJob().getIndustryId();
		if (currentPage == null) {
			currentPage = 1;
		}
		// 判断传递的方法为get还是post
		if ("GET".equalsIgnoreCase(request.getMethod())) {
			jobQueryVo.getJob().setJobName(
					URLDecoder
							.decode(jobQueryVo.getJob().getJobName(), "utf-8"));
			jobQueryVo.setProvince(URLDecoder.decode(jobQueryVo.getProvince(),
					"utf-8"));
			jobQueryVo
					.setCity(URLDecoder.decode(jobQueryVo.getCity(), "utf-8"));
		}
		switch (jobQueryVo.getTime()) {
		case 1:
			// 计算一天前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 1
					* 24 * 60 * 60 * 1000));
			break;
		case 2:
			// 计算一周前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 7
					* 24 * 60 * 60 * 1000));
			break;
		case 3:
			// 计算一月前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 30
					* 24 * 60 * 60 * 1000));
			break;
		case 4:
			jobQueryVo.setQueryTime(null);
			break;
		default:
			break;
		}
		switch (jobQueryVo.getSalary()) {
		case 1:
			// 工资在2000以下
			jobQueryVo.setMinSalary(0d);
			jobQueryVo.setMaxSalary(2000d);
			break;
		case 2:
			// 工资在2000-4000
			jobQueryVo.setMinSalary(2000d);
			jobQueryVo.setMaxSalary(4000d);
			break;
		case 3:
			// 工资在4000-6000
			jobQueryVo.setMinSalary(2000d);
			jobQueryVo.setMaxSalary(4000d);
			break;
		case 4:
			// 工资在6000-8000
			jobQueryVo.setMinSalary(6000d);
			jobQueryVo.setMaxSalary(8000d);
			break;
		case 5:
			// 工资在8000-10000
			jobQueryVo.setMinSalary(8000d);
			jobQueryVo.setMaxSalary(10000d);
			break;
		case 6:
			// 工资在10000以上
			jobQueryVo.setMinSalary(10000d);
			break;
		default:
			break;
		}
		if (jobQueryVo.getJob().getIndustryId() == 0) {
			jobQueryVo.getJob().setIndustryId(null);
		}
		if (jobQueryVo.getTypeId() == 0) {
			jobQueryVo.setTypeId(null);
		}
		if (jobQueryVo.getProvince().equals("省份")) {
			jobQueryVo.setProvince(null);
		}
		if (jobQueryVo.getCity().equals("城市")) {
			jobQueryVo.setCity(null);
		}
		if (jobQueryVo.getTypeId() != null) {
			jobQueryVo.getJob().setIndustryId(jobQueryVo.getTypeId());
		}
		if (jobQueryVo.getProvince() == null && jobQueryVo.getCity() == null) {
			jobQueryVo.setLocation(null);
		} else {
			jobQueryVo
					.setLocation(jobQueryVo.getProvince() == null ? ""
							: jobQueryVo.getProvince() + jobQueryVo.getCity() == null ? ""
									: jobQueryVo.getCity());
		}
		Integer recordCount = jobService.findAllJobsByCondition(jobQueryVo);
		Page page = new Page(currentPage, pageSize, recordCount, null, session
				.getServletContext().getContextPath());
		jobQueryVo.setPage(page);
		List<JobCustom> jobQueryVoList = jobService
				.findJobsByCondition(jobQueryVo);
		page.setRecordList(jobQueryVoList);
		if (jobQueryVo.getJob().getIndustryId() == null) {
			jobQueryVo.getJob().setIndustryId(0);
		}
		if (jobQueryVo.getTypeId() == null) {
			jobQueryVo.setTypeId(0);
		}
		if (jobQueryVo.getProvince() == null) {
			jobQueryVo.setProvince("省份");
		}
		if (jobQueryVo.getCity() == null) {
			jobQueryVo.setCity("城市");
		}
		jobQueryVo.getJob().setIndustryId(iId);
		// get方式传递查询条件，url的拼凑
		StringBuffer buffer = new StringBuffer();
		if (currentPage == 1) {
			buffer.append("<a href='javascript:void(0)'>&lt;&lt;</a>&nbsp;&nbsp;");
		} else {
			buffer.append("<a href='"
					+ session.getServletContext().getContextPath()
					+ "/job/findJobsByCondition.action?currentPage="
					+ (currentPage - 1)
					+ "&job.jobName="
					+ URLEncoder.encode(URLEncoder.encode(jobQueryVo.getJob()
							.getJobName(), "utf-8"), "utf-8")
					+ "&job.industryId="
					+ jobQueryVo.getJob().getIndustryId()
					+ "&typeId="
					+ jobQueryVo.getTypeId()
					+ "&province="
					+ URLEncoder.encode(URLEncoder.encode(
							jobQueryVo.getProvince(), "utf-8"), "utf-8")
					+ "&city="
					+ URLEncoder.encode(
							URLEncoder.encode(jobQueryVo.getCity(), "utf-8"),
							"utf-8") + "&time=" + jobQueryVo.getTime()
					+ "&salary=" + jobQueryVo.getSalary()
					+ "'>&lt;&lt;</a>&nbsp;&nbsp;");
		}
		for (int i = page.getBeginPageIndex(); i <= page.getEndPageIndex(); i++) {
			buffer.append("<a href='"
					+ session.getServletContext().getContextPath()
					+ "/job/findJobsByCondition.action?currentPage="
					+ i
					+ "&job.jobName="
					+ URLEncoder.encode(URLEncoder.encode(jobQueryVo.getJob()
							.getJobName(), "utf-8"), "utf-8")
					+ "&job.industryId="
					+ jobQueryVo.getJob().getIndustryId()
					+ "&typeId="
					+ jobQueryVo.getTypeId()
					+ "&province="
					+ URLEncoder.encode(URLEncoder.encode(
							jobQueryVo.getProvince(), "utf-8"), "utf-8")
					+ "&city="
					+ URLEncoder.encode(
							URLEncoder.encode(jobQueryVo.getCity(), "utf-8"),
							"utf-8") + "&time=" + jobQueryVo.getTime()
					+ "&salary=" + jobQueryVo.getSalary() + "'>" + i + "</a>");
		}
		if (currentPage == page.getPageCount()) {
			buffer.append("&nbsp;&nbsp;<a href='javascript:void(0)'>&gt;&gt;</a>");
		} else {
			buffer.append("&nbsp;&nbsp;<a href='"
					+ session.getServletContext().getContextPath()
					+ "/job/findJobsByCondition.action?currentPage="
					+ (currentPage + 1)
					+ "&job.jobName="
					+ URLEncoder.encode(URLEncoder.encode(jobQueryVo.getJob()
							.getJobName(), "utf-8"), "utf-8")
					+ "&job.industryId="
					+ jobQueryVo.getJob().getIndustryId()
					+ "&typeId="
					+ jobQueryVo.getTypeId()
					+ "&province="
					+ URLEncoder.encode(URLEncoder.encode(
							jobQueryVo.getProvince(), "utf-8"), "utf-8")
					+ "&city="
					+ URLEncoder.encode(
							URLEncoder.encode(jobQueryVo.getCity(), "utf-8"),
							"utf-8") + "&time=" + jobQueryVo.getTime()
					+ "&salary=" + jobQueryVo.getSalary() + "'>&gt;&gt;</a>");
		}
		page.setLinks(buffer.toString());
		session.setAttribute("page", page);
		session.setAttribute("jobQueryVo", jobQueryVo);
		List<Industry> industries = industryService.findParentIndustry();
		List<Industry> childrenIndustries = industryService
				.findChildrenIndustry(iId);
		session.setAttribute("industries", industries);
		session.setAttribute("childrenIndustries", childrenIndustries);
		return "job/searchJob";
	}

	/**
	 * 根据职位id查看职位详细信息
	 * 
	 * @param jobId
	 *            职位id
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showJobDetailByJobId")
	public String showJobDetailByJobId(Integer jobId, HttpSession session)
			throws Exception {
		// 查看该简历是否已经投递过
		// 判断是否已经登录
		Jobhunter jobhunter = (Jobhunter) session.getAttribute("jobhunter");
		if (jobhunter == null) {
			session.setAttribute("hasSend", 0);
		} else {
			Resume resume = resumeService.findResumeByJobhunterId(jobhunter
					.getJobhunterId());
			Job job = new Job();
			job.setJobId(jobId);
			ResumeJob resumeJob = new ResumeJob();
			resumeJob.setResume(resume);
			resumeJob.setJob(job);
			ResumeJob record = resumeJobService
					.findResumeJobByResumeJob(resumeJob);
			if (record != null) {
				// 已投递
				session.setAttribute("hasSend", 1);
			} else {
				// 未投递
				session.setAttribute("hasSend", 0);
			}
		}
		JobCustom jobCustom = jobService.findJobDetailByJobId(jobId);
		// 准备该企业最新三个发布的职位信息
		List<JobCustom> threeLatestJobs = jobService
				.findThreeJobByCompanyId(jobCustom.getCompanyId());
		// 准备四个类似职位名称的其它职位信息（模糊查找）
		List<JobCustom> fourCommonJobs = jobService
				.findJobsByCommonNameLimitFour(jobCustom);
		session.setAttribute("jobCustom", jobCustom);
		session.setAttribute("threeLatestJobs", threeLatestJobs);
		session.setAttribute("fourCommonJobs", fourCommonJobs);
		return "job/jobDetail";
	}

	/**
	 * 更新职位信息
	 * 
	 * @param job
	 *            封装职位信息的实体
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateJob")
	public String updateJob(Job job, HttpSession session) throws Exception {
		jobService.updateJob(job);
		return "redirect:/company/companyManage.action";
	}

	/**
	 * 根据职位id删除职位信息
	 * 
	 * @param jobId
	 *            职位id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteJobByJobId")
	public String deleteJobByJobId(Integer jobId) throws Exception {
		jobService.deleteJobByJobId(jobId);
		return "redirect:/company/companyManage.action";
	}

	/**
	 * 根据条件查询职位信息
	 * 
	 * @param jobQueryVo
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/searchJob")
	public String searchJob(JobQueryVo jobQueryVo, HttpServletRequest request,
			HttpSession session) throws Exception {
		Company company = (Company) session.getAttribute("company");
		if (jobQueryVo.getJob() != null) {
			jobQueryVo.getJob().setCompanyId(company.getCompanyId());
		} else {
			Job job = new Job();
			job.setCompanyId(company.getCompanyId());
			jobQueryVo.setJob(job);
		}
		switch (jobQueryVo.getTime()) {
		case 1:
			// 计算一天前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 1
					* 24 * 60 * 60 * 1000));
			break;
		case 2:
			// 计算一周前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 7
					* 24 * 60 * 60 * 1000));
			break;
		case 3:
			// 计算一月前的日期
			jobQueryVo.setQueryTime(new Date(new Date().getTime() - (long) 30
					* 24 * 60 * 60 * 1000));
			break;
		case 4:
			jobQueryVo.setQueryTime(null);
			break;
		default:
			break;
		}
		List<JobCustom> jobCustoms = jobService.findJobsByVo(jobQueryVo);
		session.setAttribute("jobCustoms", jobCustoms);
		request.setAttribute("queryJobName", jobQueryVo.getJob().getJobName());
		request.setAttribute("time", jobQueryVo.getTime());
		return "company/companyManage";
	}

}
