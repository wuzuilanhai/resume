package com.mapper;

import java.util.List;

import com.pojo.Page;
import com.pojo.Resume;
import com.pojo.ResumeCustom;
import com.pojo.ResumeQueryVo;

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

	ResumeCustom findResumeJob(Integer resumeId) throws Exception;

	ResumeCustom findResumeByResumeId(Integer resumeId) throws Exception;

	Integer findAllResumes() throws Exception;

	List<ResumeCustom> findAllResumesByPage(Page page) throws Exception;

	Integer findAllResumesByCondition(ResumeQueryVo resumeQueryVo)
			throws Exception;

	List<ResumeCustom> findResumesByCondition(ResumeQueryVo resumeQueryVo)
			throws Exception;
}