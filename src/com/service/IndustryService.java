package com.service;

import java.util.List;

import com.pojo.Industry;

/**
 * 类描述：行业业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface IndustryService {

	/**
	 * 添加行业
	 * 
	 * @param industry
	 *            封装的行业信息
	 */
	void addIndustry(Industry industry) throws Exception;

	/**
	 * 由行业名称查找行业ID
	 * 
	 * @param industryName
	 *            行业名称
	 * @return 行业ID
	 */
	Integer findIndustryIdByIndustryName(String industryName) throws Exception;

	/**
	 * 查找所有的父行业
	 * 
	 * @return 所有的父行业
	 */
	List<Industry> findParentIndustry() throws Exception;

	/**
	 * 通过父行业id寻找子行业
	 * 
	 * @param parentid
	 *            父行业id
	 * @return
	 */
	List<Industry> findChildrenIndustry(Integer parentid) throws Exception;

}
