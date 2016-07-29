package com.service;

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

}
