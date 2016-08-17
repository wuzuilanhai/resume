package com.mapper;

import com.pojo.JobhunterUpload;

/**
 * 
 * 类描述：求职者上传图片持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface JobhunterUploadMapper {

	void addJobHunterUpload(JobhunterUpload jobhunterUpload) throws Exception;

	JobhunterUpload findJobhunterUploadByJobhunterId(Integer jobhunterId)
			throws Exception;

	void updateJobHunterUpload(JobhunterUpload jobhunterUpload)
			throws Exception;
}