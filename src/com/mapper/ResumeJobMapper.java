package com.mapper;

import com.pojo.ResumeJob;

/**
 * 
 * 类描述：简历-职位关系持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface ResumeJobMapper {

	void addResumeJob(ResumeJob resumeJob) throws Exception;

	void deleteResumeJobByJobId(Integer jobId) throws Exception;
}