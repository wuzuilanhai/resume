package com.mapper;

import java.util.List;

import com.pojo.Industry;

/**
 * 
 * 类描述：行业持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface IndustryMapper {
	void addIndustry(Industry industry) throws Exception;

	Integer findIndustryIdByIndustryName(String industryName) throws Exception;

	List<Industry> findParentIndustry() throws Exception;

	List<Industry> findChildrenIndustry(Integer parentid) throws Exception;

	String findIndustryNameByIndustryId(Integer industryId) throws Exception;
}