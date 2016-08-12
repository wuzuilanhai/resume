package com.service;

import com.pojo.Jobhunter;

/**
 * 类描述：求职者业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface JobHunterService {

	/**
	 * 求职者注册
	 * 
	 * @param jobhunter
	 *            封装求职者信息的实体
	 */
	void addJobHunter(Jobhunter jobhunter) throws Exception;

	/**
	 * 完善求职者资料
	 * 
	 * @param jobhunter
	 *            封装求职者信息的实体
	 */
	void updateJobHunterByDetails(Jobhunter jobhunter) throws Exception;

	/**
	 * 通过手机号码取出要完善的求职者信息
	 * 
	 * @param phone
	 *            手机号码
	 * @return 求职者信息
	 */
	Jobhunter findJobHunterByPhone(String phone) throws Exception;

	/**
	 * 求职者登陆验证
	 * 
	 * @param jobhunter
	 *            封装求职者信息的实体
	 * @return
	 */
	Jobhunter findJobHunterLogin(Jobhunter jobhunter) throws Exception;

	/**
	 * 通过名称取出要完善的求职者信息
	 * 
	 * @param jobhunterName
	 *            名称
	 * @return
	 */
	Jobhunter findJobHunterByName(String jobhunterName) throws Exception;

	/**
	 * 通过Id取出求职者信息
	 * 
	 * @param jobhunterId
	 *            求职者Id
	 * @return 求职者信息
	 */
	Jobhunter findJobHunterById(Integer jobhunterId) throws Exception;

}
