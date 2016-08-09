package com.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.Page;
import com.service.JobService;

/**
 * 类描述：职位业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class JobServiceImpl extends BasicServiceImpl implements JobService {

	public void addJob(Job job) throws Exception {
		jobMapper.addJob(job);
	}

	public List<JobCustom> findHotJobLimitTenAndNew() throws Exception {
		return jobMapper.findHotJobLimitTenAndNew();
	}

	public List<JobCustom> findHotJobLimitFourAndNewByIndustryId(
			Integer industryId) throws Exception {
		return jobMapper.findHotJobLimitFourAndNewByIndustryId(industryId);
	}

	public Integer findAllJobs() throws Exception {
		return jobMapper.findAllJobs();
	}

	public List<JobCustom> findAllJobsByPage(Page page)
			throws Exception {
		return jobMapper.findAllJobsByPage(page);
	}

}
