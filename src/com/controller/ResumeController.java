package com.controller;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exception.MyException;
import com.pojo.CareerIntention;
import com.pojo.Jobhunter;
import com.pojo.Position;
import com.pojo.Resume;

/**
 * 类描述：简历控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/resume")
public class ResumeController extends BasicController {
	/**
	 * 添加简历
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addResume")
	public String addResume(Resume resume, String jobhunterPhone)
			throws Exception {
		Jobhunter jobhunter = jobHunterService
				.findJobHunterByPhone(jobhunterPhone);
		if (jobhunter == null) {
			return "failed";
		}
		resume.setJobhunterId(jobhunter.getJobhunterId());
		resume.setLastEditTime(new Date());
		resumeService.addResume(resume);
		return "success";
	}

	/**
	 * 显示简历详细信息
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showResume")
	public String showResume(HttpSession session) throws Exception {
		// 判断求职者是否已经登录
		Jobhunter jobhunter = null;
		if ((jobhunter = (Jobhunter) session.getAttribute("jobhunter")) != null) {
			// 查找求职者简历数据信息
			Calendar cal = Calendar.getInstance();
			cal.setTime(jobhunter.getJobhunterBirthday());
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH) + 1;
			Resume resume = resumeService.findResumeByJobhunterId(jobhunter
					.getJobhunterId());
			// 准备职业意向数据信息
			CareerIntention careerIntention = careerIntentionService
					.findCareerIntentionById(resume.getResumeId());
			List<Position> positions = positionService
					.findPositionsByIndustryId(careerIntention.getIndustryId());
			// 准备工作经历数据信息
			// 准备教育经历数据信息
			// 准备求职者头像信息
			session.setAttribute("year", year);
			session.setAttribute("month", month);
			session.setAttribute("resume", resume);
			session.setAttribute("careerIntention", careerIntention);
			session.setAttribute("positions", positions);
			return "resume/myResume";
		} else {
			throw new MyException("用户还未登录！");
		}
	}

}
