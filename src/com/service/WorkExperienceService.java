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

	/**
	 * 根据id查找工作经历
	 * 
	 * @param id
	 *            工作经历id
	 * @return 封装工作经历信息的实体
	 */
	WorkExperience findWorkExperienceById(Integer id) throws Exception;

	/**
	 * 更新工作经历
	 * 
	 * @param workExperience
	 *            封装工作经历信息的实体
	 */
	void updateWorkExperience(WorkExperience workExperience) throws Exception;

	/**
	 * 根据id删除工作经历
	 * 
	 * @param wexperienceId
	 *            工作经历id
	 */
	void deleteWorkExperienceById(Integer wexperienceId) throws Exception;

}
