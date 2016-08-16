package com.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.ProjectExperienceQueryVo;
import com.pojo.Resume;

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
	public String addProjectExperience(
			ProjectExperienceQueryVo projectExperienceQueryVo,
			HttpSession session) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		projectExperienceQueryVo.getProjectExperience().setStartTime(
				(format.parse(projectExperienceQueryVo.getStartYear() + "-"
						+ projectExperienceQueryVo.getStartMonth())));
		projectExperienceQueryVo.getProjectExperience().setEndTime(
				(format.parse(projectExperienceQueryVo.getEndYear() + "-"
						+ projectExperienceQueryVo.getEndMonth())));
		projectExperienceService.addProjectExperience(projectExperienceQueryVo
				.getProjectExperience());
		// 更新resume
		Resume resume = (Resume) session.getAttribute("resume");
		String ids = resume.getProjectExperienceIds();
		if (ids != null && ids.length() > 0) {
			resume.setProjectExperienceIds(ids
					+ ","
					+ projectExperienceQueryVo.getProjectExperience()
							.getPexperienceId());
		}
		resumeService.updateResume(resume);
		return "redirect:/resume/showResume.action";
	}
}
