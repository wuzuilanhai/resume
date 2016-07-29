package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.JobhunterUpload;
import com.service.JobHunterUploadService;

/**
 * 类描述：求职者上传图片类业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class JobHunterUploadServiceImpl extends BasicServiceImpl implements
		JobHunterUploadService {

	public void addJobHunterUpload(JobhunterUpload jobhunterUpload)
			throws Exception {
		jobhunterUploadMapper.addJobHunterUpload(jobhunterUpload);
	}

}
