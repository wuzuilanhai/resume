package com.service;

import com.pojo.EducationExperience;

/**
 * 类描述：教育经历业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface EducationExperienceService {

	/**
	 * 添加教育经历
	 * 
	 * @param educationExperience
	 *            封装教育经历的实体
	 */
	void addEducationExperience(EducationExperience educationExperience)
			throws Exception;

}
