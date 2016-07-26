/**
 * 
 */
package com.service.impl;

import javax.annotation.Resource;

import com.mapper.AdminMapper;
import com.mapper.CareerIntentionMapper;
import com.mapper.CompanyMapper;
import com.mapper.EducationExperienceMapper;
import com.mapper.IndustryMapper;
import com.mapper.JobAcquireMapper;
import com.mapper.JobMapper;
import com.mapper.JobhunterMapper;
import com.mapper.JobhunterUploadMapper;
import com.mapper.MailMapper;
import com.mapper.NoticeMapper;
import com.mapper.PositionMapper;
import com.mapper.ProjectExperienceMapper;
import com.mapper.ResumeJobMapper;
import com.mapper.ResumeMapper;
import com.mapper.WorkExperienceMapper;

/**
 * 类描述：业务层实现类父类,封装了mapper对象
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:38:25
 * @version 1.0
 */
public class BasicServiceImpl {
	@Resource
	protected AdminMapper adminMapper;
	@Resource
	protected CareerIntentionMapper careerIntentionMapper;
	@Resource
	protected CompanyMapper companyMapper;
	@Resource
	protected EducationExperienceMapper educationExperienceMapper;
	@Resource
	protected IndustryMapper industryMapper;
	@Resource
	protected JobMapper jobMapper;
	@Resource
	protected JobAcquireMapper acquireMapper;
	@Resource
	protected JobhunterMapper jobhunterMapper;
	@Resource
	protected JobhunterUploadMapper jobhunterUploadMapper;
	@Resource
	protected MailMapper mailMapper;
	@Resource
	protected NoticeMapper noticeMapper;
	@Resource
	protected PositionMapper positionMapper;
	@Resource
	protected ProjectExperienceMapper projectExperienceMapper;
	@Resource
	protected ResumeMapper resumeMapper;
	@Resource
	protected ResumeJobMapper resumeJobMapper;
	@Resource
	protected WorkExperienceMapper workExperienceMapper;
}
