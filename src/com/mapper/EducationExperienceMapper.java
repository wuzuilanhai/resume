package com.mapper;

import com.pojo.EducationExperience;

/**
 * 
 * 类描述：教育经历持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface EducationExperienceMapper {

	void addEducationExperience(EducationExperience educationExperience)
			throws Exception;

	EducationExperience findEducationExperiencesById(Integer id)
			throws Exception;

	void updateWorkExperience(EducationExperience educationExperience)
			throws Exception;

	void deleteEducationExperienceById(Integer eexperienceId) throws Exception;
}