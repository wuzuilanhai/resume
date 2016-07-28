package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.WorkExperience;

/**
 * 类描述：工作经历控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/workExperience")
public class WorkExperienceController extends BasicController {
	/**
	 * 添加工作经历
	 * 
	 * @param workExperience
	 * @param companyIndustryName
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addWorkExperience")
	public String addWorkExperience(WorkExperience workExperience,
			String companyIndustryName) throws Exception {
		Integer companyIndustryId = industryService
				.findIndustryIdByIndustryName(companyIndustryName);
		workExperience.setStartTime(new Date());
		workExperience.setEndTime(new Date());
		workExperience.setCompanyIndustryId(companyIndustryId);
		workExperienceService.addWorkExperience(workExperience);
		return "success";
	}
}
