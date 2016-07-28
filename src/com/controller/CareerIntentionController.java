package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.CareerIntention;

/**
 * 类描述：职业倾向控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/careerIntention")
public class CareerIntentionController extends BasicController {
	/**
	 * 添加职业意向
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addCareerIntention")
	public String addCareerIntention(CareerIntention careerIntention,
			String industryName, String positionName) throws Exception {
		Integer industryId = industryService
				.findIndustryIdByIndustryName(industryName);
		Integer positionId = positionService
				.findPositionIdByPositionName(positionName);
		careerIntention.setIndustryId(industryId);
		careerIntention.setPositionId(positionId);
		careerIntentionService.addCareerIntention(careerIntention);
		return "success";
	}
}
