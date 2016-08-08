package com.service;

import java.util.List;

import com.pojo.Job;
import com.pojo.JobCustom;

/**
 * 类描述：职位业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface JobService {

	/**
	 * 添加简历
	 * 
	 * @param job
	 *            封装简历信息的实体
	 */
	void addJob(Job job) throws Exception;

	/**
	 * 准备10个最新的（地区）热门职位数据信息
	 * 
	 * @return
	 */
	List<JobCustom> findHotJobLimitTenAndNew() throws Exception;

}
