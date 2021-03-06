package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.WorkExperience;
import com.service.WorkExperienceService;

/**
 * 类描述：工作经历业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class WorkExperienceServiceImpl extends BasicServiceImpl implements
		WorkExperienceService {

	public void addWorkExperience(WorkExperience workExperience)
			throws Exception {
		workExperienceMapper.addWorkExperience(workExperience);
	}

	public WorkExperience findWorkExperienceById(Integer id) throws Exception {
		return workExperienceMapper.findWorkExperienceById(id);
	}

	public void updateWorkExperience(WorkExperience workExperience)
			throws Exception {
		workExperienceMapper.updateWorkExperience(workExperience);
	}

	public void deleteWorkExperienceById(Integer wexperienceId)
			throws Exception {
		workExperienceMapper.deleteWorkExperienceById(wexperienceId);
	}

}
