package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.EducationExperience;
import com.service.EducationExperienceService;

/**
 * 类描述：教育经历业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class EducationExperienceServiceImpl extends BasicServiceImpl implements
		EducationExperienceService {

	public void addEducationExperience(EducationExperience educationExperience)
			throws Exception {
		educationExperienceMapper.addEducationExperience(educationExperience);
	}

	public EducationExperience findEducationExperiencesById(Integer id)
			throws Exception {
		return educationExperienceMapper.findEducationExperiencesById(id);
	}

}
