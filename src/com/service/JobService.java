package com.service;

import java.util.List;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.Page;

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

	/**
	 * 根据行业id获取相应行业最新的4个职位数据信息
	 * 
	 * @param industryId
	 *            行业id
	 * @return 职位数据信息列表
	 */
	List<JobCustom> findHotJobLimitFourAndNewByIndustryId(Integer industryId)
			throws Exception;

	/**
	 * 查找职位总记录数
	 * 
	 * @return 职位总记录数
	 */
	Integer findAllJobs() throws Exception;

	/**
	 * 分页查找职位记录
	 * 
	 * @param page
	 *            封装分页信息的实体类
	 * @return 职位记录列表
	 */
	List<JobCustom> findAllJobsByPage(Page page) throws Exception;

}
