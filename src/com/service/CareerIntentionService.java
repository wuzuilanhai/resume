package com.service;

import com.pojo.CareerIntention;

/**
 * 类描述：职业倾向业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface CareerIntentionService {

	/**
	 * 添加职业意向
	 * 
	 * @param careerIntention
	 *            封装职业意向的信息
	 */
	void addCareerIntention(CareerIntention careerIntention) throws Exception;

	/**
	 * 根据简历Id查找职业意向数据信息
	 * 
	 * @param resumeId
	 *            职业意向Id
	 * @return 封装职业意向的信息
	 */
	CareerIntention findCareerIntentionById(Integer cintentionId)
			throws Exception;

}
