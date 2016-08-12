package com.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pojo.Position;
import com.service.PositionService;

/**
 * 类描述：职能业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class PositionServiceImpl extends BasicServiceImpl implements
		PositionService {

	public void addPosition(Position position) throws Exception {
		positionMapper.addPosition(position);
	}

	public Integer findPositionIdByPositionName(String positionName)
			throws Exception {
		return positionMapper.findPositionIdByPositionName(positionName);
	}

	public List<Position> findPositionsByIndustryId(Integer industryId)
			throws Exception {
		return positionMapper.findPositionsByIndustryId(industryId);
	}

	public List<Position> findPositionByParentId(Integer parentid)
			throws Exception {
		return positionMapper.findPositionByParentId(parentid);
	}

}
