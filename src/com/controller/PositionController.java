package com.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Position;

/**
 * 类描述：职能控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/position")
public class PositionController extends BasicController {
	/**
	 * 添加职能
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addPosition")
	public String addPosition(Position position, String industryName)
			throws Exception {
		Integer industryId = 0;
		if (!"".equals(industryName)) {
			// 由行业名称查找行业ID
			industryId = industryService
					.findIndustryIdByIndustryName(industryName);
			if (industryId == null) {
				return "failed";
			}
			position.setIndustryId(industryId);
		}
		positionService.addPosition(position);
		return "success";
	}
	
	/**
	 * 通过父行业id寻找职能信息列表
	 * 
	 * @param parentid
	 *            父行业id
	 * @return 职能信息列表
	 * @throws Exception
	 */
	@RequestMapping("/findPositionByParentId")
	public @ResponseBody
	List<Position> findPositionByParentId(Integer parentid) throws Exception {
		return positionService.findPositionByParentId(parentid);
	}
	
}
