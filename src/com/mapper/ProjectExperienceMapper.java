package com.mapper;

import com.pojo.ProjectExperience;

/**
 * 
 * 类描述：项目经验持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface ProjectExperienceMapper {

	void addProjectExperience(ProjectExperience projectExperience)
			throws Exception;

	ProjectExperience findProjectExperiencesById(Integer id) throws Exception;

	void updateProjectExperience(ProjectExperience projectExperience)
			throws Exception;

	void deleteProjectExperienceById(Integer pexperienceId) throws Exception;
}