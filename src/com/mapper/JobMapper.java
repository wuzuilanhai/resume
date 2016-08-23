package com.mapper;

import java.util.List;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.JobQueryVo;
import com.pojo.Page;

/**
 * 
 * 类描述：职位持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface JobMapper {

	void addJob(Job job) throws Exception;

	List<JobCustom> findHotJobLimitTenAndNew() throws Exception;

	List<JobCustom> findHotJobLimitFourAndNewByIndustryId(Integer industryId)
			throws Exception;

	Integer findAllJobs() throws Exception;

	List<JobCustom> findAllJobsByPage(Page page) throws Exception;

	Integer findAllJobsByCondition(JobQueryVo jobQueryVo) throws Exception;

	List<JobCustom> findJobsByCondition(JobQueryVo jobQueryVo) throws Exception;

	JobCustom findJobDetailByJobId(Integer jobId) throws Exception;

	List<JobCustom> findThreeJobByCompanyId(Integer companyId) throws Exception;

	List<JobCustom> findJobsByCommonNameLimitFour(JobCustom jobCustom)
			throws Exception;

	List<JobCustom> findJobsByCompanyId(Integer companyId) throws Exception;

	void updateJob(Job job) throws Exception;

	void deleteJobByJobId(Integer jobId) throws Exception;

	List<JobCustom> findJobsByVo(JobQueryVo jobQueryVo) throws Exception;

	Job findResumeJob(Integer jobId) throws Exception;
}