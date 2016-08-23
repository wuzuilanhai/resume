package com.service;

import java.util.List;

import com.pojo.ResumeJob;

/**
 * 类描述：简历-职位关系表的业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface ResumeJobService {

	/**
	 * 添加简历-职位关系
	 * 
	 * @param resumeJob
	 *            封装简历-职位关系信息的实体
	 */
	void addResumeJob(ResumeJob resumeJob) throws Exception;

	/**
	 * 根据职位id删除简历-职位关系表中的记录
	 * 
	 * @param jobId
	 *            职位id
	 */
	void deleteResumeJobByJobId(Integer jobId) throws Exception;

	/**
	 * 根据实体查找记录
	 * 
	 * @param resumeJob
	 * @return
	 */
	ResumeJob findResumeJobByResumeJob(ResumeJob resumeJob) throws Exception;

	/**
	 * 根据职位id查找记录
	 * 
	 * @param jobId
	 *            职位id
	 * @return
	 */
	List<ResumeJob> findResumeJobByJobId(Integer jobId) throws Exception;

	/**
	 * 删除简历-职位关系表中的记录
	 * 
	 * @param resumeJob
	 */
	void deleteResumeJob(ResumeJob resumeJob) throws Exception;

}
