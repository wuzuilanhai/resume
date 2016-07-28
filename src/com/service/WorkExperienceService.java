package com.service;

import com.pojo.WorkExperience;

/**
 * 类描述：工作经历业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface WorkExperienceService {

	/**
	 * 添加工作经历
	 * 
	 * @param workExperience
	 *            封装工作经历的实体
	 */
	void addWorkExperience(WorkExperience workExperience) throws Exception;

}
