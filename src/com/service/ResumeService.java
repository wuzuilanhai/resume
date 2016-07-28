package com.service;

import com.pojo.Resume;

/**
 * 类描述：简历业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface ResumeService {

	/**
	 * 添加简历
	 * 
	 * @param resume
	 *            封装简历信息的实体类
	 */
	void addResume(Resume resume) throws Exception;

}
