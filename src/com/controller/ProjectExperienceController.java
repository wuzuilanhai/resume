package com.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.EducationExperienceQueryVo;
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

	/**
	 * 更新项目经验
	 * 
	 * @param educationExperienceQueryVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateProjectExperience")
	public String updateProjectExperience(
			ProjectExperienceQueryVo projectExperienceQueryVo) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		projectExperienceQueryVo.getProjectExperience().setStartTime(
				(format.parse(projectExperienceQueryVo.getStartYear() + "-"
						+ projectExperienceQueryVo.getStartMonth())));
		projectExperienceQueryVo.getProjectExperience().setEndTime(
				(format.parse(projectExperienceQueryVo.getEndYear() + "-"
						+ projectExperienceQueryVo.getEndMonth())));
		projectExperienceQueryVo.getProjectExperience().setPexperienceId(
				projectExperienceQueryVo.getProjectExperienceId());
		projectExperienceService
				.updateProjectExperience(projectExperienceQueryVo
						.getProjectExperience());
		return "redirect:/resume/showResume.action";
	}

	/**
	 * 根据id删除项目经验
	 * 
	 * @param eexperienceId
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteProjectExperienceById")
	public String deleteProjectExperienceById(Integer pexperienceId,
			HttpSession session) throws Exception {
		projectExperienceService.deleteProjectExperienceById(pexperienceId);
		// 更新resume中数据
		Resume resume = (Resume) session.getAttribute("resume");
		String ids = resume.getProjectExperienceIds();
		StringBuffer buffer = new StringBuffer();
		int i = 1;
		for (String str : ids.split(",")) {
			if (i == ids.split(",").length
					&& Integer.parseInt(str) != pexperienceId) {
				buffer.append(str);
				break;
			}
			if (Integer.parseInt(str) != pexperienceId) {
				buffer.append(str + ",");
			}
			i++;
		}
		String newIds = buffer.toString();
		if ((newIds.lastIndexOf(",") + 1) == newIds.length()) {
			newIds = newIds.substring(0, newIds.lastIndexOf(","));
		}
		resume.setProjectExperienceIds(newIds);
		resumeService.updateResume(resume);
		return "redirect:/resume/showResume.action";
	}

}
