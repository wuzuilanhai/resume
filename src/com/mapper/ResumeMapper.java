package com.mapper;

import com.pojo.Resume;

/**
 * 
 * 类描述：简历持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface ResumeMapper {

	void addResume(Resume resume) throws Exception;

	Resume findResumeByJobhunterId(Integer jobhunterId) throws Exception;

	void updateResume(Resume resume) throws Exception;
}