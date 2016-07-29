package com.service;

import com.pojo.JobhunterUpload;

/**
 * 类描述：求职者上传图片类的业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface JobHunterUploadService {

	/**
	 * 添加求职者上传图片
	 * 
	 * @param jobhunterUpload
	 *            封装求职者上传图片信息的实体
	 */
	void addJobHunterUpload(JobhunterUpload jobhunterUpload) throws Exception;

}
