package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.ResumeJob;
import com.service.ResumeJobService;

/**
 * 类描述：简历-职位关系表业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class ResumeJobServiceImpl extends BasicServiceImpl implements
		ResumeJobService {

	public void addResumeJob(ResumeJob resumeJob) throws Exception {
		resumeJobMapper.addResumeJob(resumeJob);
	}

	public void deleteResumeJobByJobId(Integer jobId) throws Exception {
		resumeJobMapper.deleteResumeJobByJobId(jobId);
	}

	public ResumeJob findResumeJobByResumeJob(ResumeJob resumeJob)
			throws Exception {
		return resumeJobMapper.findResumeJobByResumeJob(resumeJob);
	}

}
