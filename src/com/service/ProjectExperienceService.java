package com.service;

import com.pojo.ProjectExperience;

/**
 * 类描述：项目经验业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface ProjectExperienceService {

	/**
	 * 添加项目经验
	 * 
	 * @param projectExperience
	 *            封装项目经验的实体
	 */
	void addProjectExperience(ProjectExperience projectExperience)
			throws Exception;

}
