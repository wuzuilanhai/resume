package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.ProjectExperience;

/**
 * 类描述：项目经验控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/projectExperience")
public class ProjectExperienceController extends BasicController {
	/**
	 * 添加项目经验
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addProjectExperience")
	public String addProjectExperience(ProjectExperience projectExperience)
			throws Exception {
		projectExperience.setStartTime(new Date());
		projectExperience.setEndTime(new Date());
		projectExperienceService.addProjectExperience(projectExperience);
		return "success";
	}
}
