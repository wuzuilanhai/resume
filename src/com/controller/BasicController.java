package com.controller;

import javax.annotation.Resource;
import com.service.AdminService;
import com.service.CareerIntentionService;
import com.service.CompanyService;
import com.service.EducationExperienceService;
import com.service.IndustryService;
import com.service.JobAcquireService;
import com.service.JobHunterService;
import com.service.JobHunterUploadService;
import com.service.JobService;
import com.service.MailService;
import com.service.NoticeService;
import com.service.PositionService;
import com.service.ProjectExperienceService;
import com.service.ResumeJobService;
import com.service.ResumeService;
import com.service.WorkExperienceService;

/**
 * 类描述：控制类父类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：上午9:06:14
 * @version 1.0
 */
public class BasicController {
	@Resource
	protected AdminService adminService;
	@Resource
	protected CareerIntentionService careerIntentionService;
	@Resource
	protected CompanyService companyService;
	@Resource
	protected EducationExperienceService educationExperienceService;
	@Resource
	protected IndustryService industryService;
	@Resource
	protected JobService jobService;
	@Resource
	protected JobAcquireService jobAcquireService;
	@Resource
	protected JobHunterService jobHunterService;
	@Resource
	protected JobHunterUploadService jobHunterUploadService;
	@Resource
	protected MailService mailService;
	@Resource
	protected NoticeService noticeService;
	@Resource
	protected PositionService positionService;
	@Resource
	protected ProjectExperienceService projectExperienceService;
	@Resource
	protected ResumeService resumeService;
	@Resource
	protected ResumeJobService resumeJobService;
	@Resource
	protected WorkExperienceService workExperienceService;
}
