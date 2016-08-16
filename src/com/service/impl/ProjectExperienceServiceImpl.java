package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.ProjectExperience;
import com.service.ProjectExperienceService;

/**
 * 类描述：项目经验业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class ProjectExperienceServiceImpl extends BasicServiceImpl implements
		ProjectExperienceService {

	public void addProjectExperience(ProjectExperience projectExperience)
			throws Exception {
		projectExperienceMapper.addProjectExperience(projectExperience);
	}

	public ProjectExperience findProjectExperiencesById(Integer id)
			throws Exception {
		return projectExperienceMapper.findProjectExperiencesById(id);
	}

}
