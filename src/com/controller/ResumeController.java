package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exception.MyException;
import com.pojo.CareerIntention;
import com.pojo.EducationExperience;
import com.pojo.Jobhunter;
import com.pojo.JobhunterUpload;
import com.pojo.Position;
import com.pojo.ProjectExperience;
import com.pojo.Resume;
import com.pojo.ResumeCustom;
import com.pojo.WorkExperience;

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
					.findCareerIntentionById(resume.getCareerIntentionId());
			List<Position> positions = null;
			if (careerIntention != null) {
				positions = positionService
						.findPositionsByIndustryId(careerIntention
								.getIndustryId());
			}
			// 准备工作经历数据信息
			List<WorkExperience> workExperiences = new ArrayList<WorkExperience>();
			String workExperienceIds = resume.getWorkExperienceIds();
			if (workExperienceIds != null) {
				for (String str : workExperienceIds.split(",")) {
					Integer id = Integer.parseInt(str);
					workExperiences.add(workExperienceService
							.findWorkExperienceById(id));
				}
			}
			long latest = 0L;
			long original = (new Date()).getTime();
			WorkExperience latestWorkExperience = null;
			for (WorkExperience workExperience : workExperiences) {
				if (workExperience.getEndTime().getTime() > latest) {
					latest = workExperience.getEndTime().getTime();
					latestWorkExperience = workExperience;
				}
				if (workExperience.getStartTime().getTime() < original) {
					original = workExperience.getStartTime().getTime();
				}
			}
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
			// 就职时间
			String startTime = format.format(latestWorkExperience
					.getStartTime());
			String startYear = startTime.split("-")[0];
			String startMonth = startTime.split("-")[1];
			// 准备教育经历数据信息
			List<EducationExperience> educationExperiences = new ArrayList<EducationExperience>();
			String educationExperienceIds = resume.getEducationExperienceIds();
			if (educationExperienceIds != null) {
				for (String str : educationExperienceIds.split(",")) {
					Integer id = Integer.parseInt(str);
					educationExperiences.add(educationExperienceService
							.findEducationExperiencesById(id));
				}
			}
			// 准备项目经验数据信息
			List<ProjectExperience> projectExperiences = new ArrayList<ProjectExperience>();
			String projectExperienceIds = resume.getProjectExperienceIds();
			if (projectExperienceIds != null) {
				for (String str : projectExperienceIds.split(",")) {
					Integer id = Integer.parseInt(str);
					projectExperiences.add(projectExperienceService
							.findProjectExperiencesById(id));
				}
			}
			// 准备求职者头像信息
			JobhunterUpload jobhunterUpload = jobHunterUploadService
					.findJobhunterUploadByJobhunterId(jobhunter
							.getJobhunterId());
			// 准备投递记录信息resume_job
			ResumeCustom resumeCustom = resumeService.findResumeJob(resume
					.getResumeId());

			session.setAttribute("workTime", (latest - original) / 1000 / 60
					/ 60 / 24);
			session.setAttribute("year", year);
			session.setAttribute("month", month);
			session.setAttribute("startYear", startYear);
			session.setAttribute("startMonth", startMonth);
			session.setAttribute("resume", resume);
			session.setAttribute("careerIntention", careerIntention);
			session.setAttribute("positions", positions);
			session.setAttribute("latestWorkExperience", latestWorkExperience);
			session.setAttribute("workExperiences", workExperiences);
			session.setAttribute("educationExperiences", educationExperiences);
			session.setAttribute("projectExperiences", projectExperiences);
			session.setAttribute("jobhunterUpload", jobhunterUpload);
			session.setAttribute("resumeCustom", resumeCustom);
			return "resume/myResume";
		} else {
			throw new MyException("用户还未登录！");
		}
	}
}
