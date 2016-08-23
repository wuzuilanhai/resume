package com.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pojo.Page;
import com.pojo.Resume;
import com.pojo.ResumeCustom;
import com.service.ResumeService;

/**
 * 类描述：简历业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class ResumeServiceImpl extends BasicServiceImpl implements
		ResumeService {

	public void addResume(Resume resume) throws Exception {
		resumeMapper.addResume(resume);
	}

	public Resume findResumeByJobhunterId(Integer jobhunterId) throws Exception {
		return resumeMapper.findResumeByJobhunterId(jobhunterId);
	}

	public void updateResume(Resume resume) throws Exception {
		resumeMapper.updateResume(resume);
	}

	public ResumeCustom findResumeJob(Integer resumeId) throws Exception {
		return resumeMapper.findResumeJob(resumeId);
	}

	public ResumeCustom findResumeByResumeId(Integer resumeId) throws Exception {
		return resumeMapper.findResumeByResumeId(resumeId);
	}

	public Integer findAllResumes() throws Exception {
		return resumeMapper.findAllResumes();
	}

	public List<ResumeCustom> findAllResumesByPage(Page page) throws Exception {
		return resumeMapper.findAllResumesByPage(page);
	}

}
