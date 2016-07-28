package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.Resume;
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

}
