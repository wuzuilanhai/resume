package com.controller;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Resume;
import com.pojo.WorkExperienceQueryVo;

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
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addWorkExperience")
	public String addWorkExperience(
			WorkExperienceQueryVo workExperienceQueryVo, HttpSession session)
			throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		workExperienceQueryVo.getWorkExperience().setStartTime(
				(format.parse(workExperienceQueryVo.getStartYear() + "-"
						+ workExperienceQueryVo.getStartMonth())));
		workExperienceQueryVo.getWorkExperience().setEndTime(
				(format.parse(workExperienceQueryVo.getEndYear() + "-"
						+ workExperienceQueryVo.getEndMonth())));
		workExperienceService.addWorkExperience(workExperienceQueryVo
				.getWorkExperience());
		// 更新resume
		Resume resume = (Resume) session.getAttribute("resume");
		String ids = resume.getWorkExperienceIds();
		if (ids != null && ids.length() > 0) {
			resume.setWorkExperienceIds(ids
					+ ","
					+ workExperienceQueryVo.getWorkExperience()
							.getWexperienceId());
		}
		resumeService.updateResume(resume);
		return "redirect:/resume/showResume.action";
	}
}
