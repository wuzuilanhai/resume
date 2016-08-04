package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.Jobhunter;
import com.service.JobHunterService;

/**
 * 类描述：求职者业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class JobHunterServiceImpl extends BasicServiceImpl implements
		JobHunterService {

	public void addJobHunter(Jobhunter jobhunter) throws Exception {
		jobhunterMapper.addJobHunter(jobhunter);
	}

	public void updateJobHunterByDetails(Jobhunter jobhunter) throws Exception {
		jobhunterMapper.updateJobHunterByDetails(jobhunter);
	}

	public Jobhunter findJobHunterByPhone(String phone) throws Exception {
		return jobhunterMapper.findJobHunterByPhone(phone);
	}

	public Jobhunter findJobHunterLogin(Jobhunter jobhunter) throws Exception {
		return jobhunterMapper.findJobHunterLogin(jobhunter);
	}

	public Jobhunter findJobHunterByName(String jobhunterName) throws Exception {
		return jobhunterMapper.findJobHunterByName(jobhunterName);
	}

}
