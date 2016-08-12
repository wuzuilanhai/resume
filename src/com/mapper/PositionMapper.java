package com.mapper;

import java.util.List;

import com.pojo.Position;

/**
 * 
 * 类描述：职能持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface PositionMapper {
	void addPosition(Position position) throws Exception;

	Integer findPositionIdByPositionName(String positionName) throws Exception;

	List<Position> findPositionsByIndustryId(Integer industryId)
			throws Exception;

	List<Position> findPositionByParentId(Integer parentid) throws Exception;

}