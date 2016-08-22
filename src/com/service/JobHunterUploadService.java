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

	/**
	 * 根据求职者id查找上传的头像
	 * 
	 * @param jobhunterId
	 *            求职者id
	 * @return 封装上传头像信息的实体
	 */
	JobhunterUpload findJobhunterUploadByJobhunterId(Integer jobhunterId)
			throws Exception;

	/**
	 * 更新求职者上传头像
	 * 
	 * @param jobhunterUpload
	 *            封装上传头像信息的实体
	 */
	void updateJobHunterUpload(JobhunterUpload jobhunterUpload)
			throws Exception;

	/**
	 * 根据企业id获取企业上传头像
	 * 
	 * @param companyId
	 *            企业id
	 * @return 封装上传头像信息的实体
	 */
	JobhunterUpload findCompanyUploadByCompanyId(Integer companyId)
			throws Exception;

}
