package com.service;

import com.pojo.JobAcquire;

/**
 * 类描述：职位要求业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface JobAcquireService {

	/**
	 * 添加职位要求
	 * 
	 * @param jobAcquire
	 *            封装简历要求的实体
	 */
	void addJobAcquire(JobAcquire jobAcquire) throws Exception;

}
