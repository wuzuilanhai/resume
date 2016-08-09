package com.mapper;

import java.util.List;

import com.pojo.Job;
import com.pojo.JobCustom;

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
}