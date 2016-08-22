package com.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.Jobhunter;
import com.pojo.Resume;
import com.pojo.ResumeCustom;
import com.pojo.ResumeJob;

/**
 * 类描述：简历-职位关系控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/resumeJob")
public class ResumeJobController extends BasicController {
	/**
	 * 添加简历-职位关系
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addResumeJob")
	public @ResponseBody
	String addResumeJob(Integer jobId, HttpSession session) throws Exception {
		Jobhunter jobhunter = (Jobhunter) session.getAttribute("jobhunter");
		if (jobhunter == null) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("info", "failed");
			ObjectMapper mapper = new ObjectMapper();
			return mapper.writeValueAsString(map);
		} else {
			Resume resume = resumeService.findResumeByJobhunterId(jobhunter
					.getJobhunterId());
			Job job = new Job();
			job.setJobId(jobId);
			ResumeJob resumeJob = new ResumeJob();
			resumeJob.setResume(resume);
			resumeJob.setJob(job);
			resumeJob.setSubmittime(new Date());
			resumeJobService.addResumeJob(resumeJob);
			Map<String, String> map = new HashMap<String, String>();
			map.put("info", "success");
			ObjectMapper mapper = new ObjectMapper();
			return mapper.writeValueAsString(map);
		}
	}

	/**
	 * 根据职位id删除简历-职位关系表中的记录
	 * 
	 * @param jobId
	 *            职位id
	 * @param session
	 * @return 新的json类型的resume_job记录
	 * @throws Exception
	 */
	@RequestMapping("/deleteResumeJobByJobId")
	public @ResponseBody
	String deleteResumeJobByJobId(Integer jobId, HttpSession session)
			throws Exception {
		resumeJobService.deleteResumeJobByJobId(jobId);
		ResumeCustom resumeCustom = resumeService
				.findResumeJob(((Resume) session.getAttribute("resume"))
						.getResumeId());
		Map<String, List<JobCustom>> map = new HashMap<String, List<JobCustom>>();
		map.put("newData", resumeCustom.getJobCustoms());
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(map);
	}
}
