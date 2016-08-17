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

	/**
	 * 根据id查找项目经验
	 * 
	 * @param id
	 *            项目id
	 * @return 封装项目经验信息的实体
	 */
	ProjectExperience findProjectExperiencesById(Integer id) throws Exception;

	/**
	 * 更新项目经验
	 * 
	 * @param projectExperience
	 *            封装项目经验信息的实体
	 */
	void updateProjectExperience(ProjectExperience projectExperience)
			throws Exception;

	/**
	 * 根据id删除项目经验
	 * 
	 * @param pexperienceId
	 *            项目经验id
	 */
	void deleteProjectExperienceById(Integer pexperienceId) throws Exception;

}
