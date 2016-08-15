package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.CareerIntention;
import com.pojo.Resume;

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
	@RequestMapping("/operateCareerIntention")
	public String addCareerIntention(CareerIntention careerIntention,
			HttpSession session) throws Exception {
		Resume resume = (Resume) session.getAttribute("resume");
		if (careerIntention.getIsDiscuss() == null) {
			careerIntention.setIsDiscuss(0);
		}
		if (careerIntention.getIsShow() == null) {
			careerIntention.setIsShow(0);
		}
		// 判断是添加职业意向还是更新职业意向
		if (resume.getCareerIntentionId() == null) {
			careerIntentionService.addCareerIntention(careerIntention);
			resume.setCareerIntentionId(careerIntention.getCintentionId());
		} else {
			careerIntention.setCintentionId(resume.getCareerIntentionId());
			careerIntentionService.updateCareerIntention(careerIntention);
		}
		// 更新简历信息
		resumeService.updateResume(resume);
		session.setAttribute("resume", resume);
		session.setAttribute("careerIntention", careerIntention);
		return "resume/myResume";
	}
}
