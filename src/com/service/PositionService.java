package com.service;

import com.pojo.Position;

/**
 * 类描述：职能业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface PositionService {

	/**
	 * 添加职能
	 * 
	 * @param position
	 *            封装的职能信息
	 */
	void addPosition(Position position) throws Exception;

	/**
	 * 根据职能名称查找职能ID
	 * 
	 * @param positionName
	 *            职能名称
	 * @return 职能ID
	 */
	Integer findPositionIdByPositionName(String positionName) throws Exception;

}
