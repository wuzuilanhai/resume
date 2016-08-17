package com.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.EducationExperienceQueryVo;
import com.pojo.Resume;
import com.pojo.WorkExperienceQueryVo;

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
	public String addEducationExperience(
			EducationExperienceQueryVo educationExperienceQueryVo,
			HttpSession session) throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		educationExperienceQueryVo.getEducationExperience().setStartTime(
				(format.parse(educationExperienceQueryVo.getStartYear() + "-"
						+ educationExperienceQueryVo.getStartMonth())));
		educationExperienceQueryVo.getEducationExperience().setEndTime(
				(format.parse(educationExperienceQueryVo.getEndYear() + "-"
						+ educationExperienceQueryVo.getEndMonth())));
		educationExperienceService
				.addEducationExperience(educationExperienceQueryVo
						.getEducationExperience());
		// 更新resume
		Resume resume = (Resume) session.getAttribute("resume");
		String ids = resume.getEducationExperienceIds();
		if (ids != null && ids.length() > 0) {
			resume.setEducationExperienceIds(ids
					+ ","
					+ educationExperienceQueryVo.getEducationExperience()
							.getEexperienceId());
		}
		resumeService.updateResume(resume);
		return "redirect:/resume/showResume.action";
	}

	/**
	 * 更新教育经历
	 * 
	 * @param educationExperienceQueryVo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateEducationExperience")
	public String updateEducationExperience(
			EducationExperienceQueryVo educationExperienceQueryVo)
			throws Exception {
		if (educationExperienceQueryVo.getEducationExperience().getIsUnify() == null) {
			educationExperienceQueryVo.getEducationExperience().setIsUnify(0);
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		educationExperienceQueryVo.getEducationExperience().setStartTime(
				(format.parse(educationExperienceQueryVo.getStartYear() + "-"
						+ educationExperienceQueryVo.getStartMonth())));
		educationExperienceQueryVo.getEducationExperience().setEndTime(
				(format.parse(educationExperienceQueryVo.getEndYear() + "-"
						+ educationExperienceQueryVo.getEndMonth())));
		educationExperienceQueryVo.getEducationExperience().setEexperienceId(
				educationExperienceQueryVo.getEducationExperienceId());
		educationExperienceService
				.updateWorkExperience(educationExperienceQueryVo
						.getEducationExperience());
		return "redirect:/resume/showResume.action";
	}

	/**
	 * 根据id删除教育经历
	 * 
	 * @param eexperienceId
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/deleteEducationExperienceById")
	public String deleteEducationExperienceById(Integer eexperienceId,
			HttpSession session) throws Exception {
		educationExperienceService.deleteEducationExperienceById(eexperienceId);
		// 更新resume中数据
		Resume resume = (Resume) session.getAttribute("resume");
		String ids = resume.getEducationExperienceIds();
		StringBuffer buffer = new StringBuffer();
		int i = 1;
		for (String str : ids.split(",")) {
			if (i == ids.split(",").length
					&& Integer.parseInt(str) != eexperienceId) {
				buffer.append(str);
				break;
			}
			if (Integer.parseInt(str) != eexperienceId) {
				buffer.append(str + ",");
			}
			i++;
		}
		String newIds = buffer.toString();
		if ((newIds.lastIndexOf(",") + 1) == newIds.length()) {
			newIds = newIds.substring(0, newIds.lastIndexOf(","));
		}
		resume.setEducationExperienceIds(newIds);
		resumeService.updateResume(resume);
		return "redirect:/resume/showResume.action";
	}

}
