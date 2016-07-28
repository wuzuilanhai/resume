package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.EducationExperience;

/**
 * 类描述：教育经历控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/educationExperience")
public class EducationExperienceController extends BasicController {
	/**
	 * 添加教育经历
	 * 
	 * @param educationExperience
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addEducationExperience")
	public String addEducationExperience(EducationExperience educationExperience)
			throws Exception {
		educationExperience.setStartTime(new Date());
		educationExperience.setEndTime(new Date());
		educationExperienceService.addEducationExperience(educationExperience);
		return "success";
	}
}
