package com.controller;

import java.net.URLDecoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Jobhunter;
import com.util.MD5Utils;

/**
 * 类描述：求职者控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/jobHunter")
public class JobHunterController extends BasicController {
	/**
	 * 求职者注册
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJobHunter")
	public @ResponseBody
	String addJobHunter(Jobhunter jobhunter) throws Exception {
		// 求职者资料完善状态，0：未完善，1：已完善
		jobhunter.setJobhunterEditStatus(0);
		jobhunter.setJobhunterJoindate(new Date());
		// 加密密码
		jobhunter.setJobhunterPassword(MD5Utils.md5(jobhunter
				.getJobhunterPassword()));
		jobHunterService.addJobHunter(jobhunter);
		return "success";
	}

	/**
	 * 求职者登陆验证
	 * 
	 * @param jobhunter
	 *            封装求职者信息的实体
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findJobHunterLogin")
	public @ResponseBody
	Jobhunter findJobHunterLogin(Jobhunter jobhunter, HttpServletRequest request)
			throws Exception {
		jobhunter.setJobhunterPassword(MD5Utils.md5(jobhunter
				.getJobhunterPassword()));
		Jobhunter jobhunter2 = jobHunterService.findJobHunterLogin(jobhunter);
		if (jobhunter2 != null) {
			request.getSession().setAttribute("jobhunterName",
					jobhunter2.getJobhunterName());
		}
		return jobhunter2;
	}

	/**
	 * 完善求职者资料
	 * 
	 * @param jobhunter
	 *            封装求职者的详细信息
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("updateJobHunterByDetails")
	public @ResponseBody
	String updateJobHunterByDetails(Jobhunter jobhunter) throws Exception {
		// 通过手机号码取出要完善的求职者信息
		Jobhunter jobhunter2 = jobHunterService
				.findJobHunterByPhone("18814092579");
		jobhunter2.setJobhunterName(jobhunter.getJobhunterName());
		jobhunter2.setJobhunterBirthday(new Date());
		// 修改求职者信息完善状态为1，表示已完善
		jobhunter2.setJobhunterEditStatus(1);
		jobHunterService.updateJobHunterByDetails(jobhunter2);
		return "success";
	}

	/**
	 * 验证验证码正确性和登陆名称唯一性
	 * 
	 * @param validationImg
	 *            用户输入的验证码
	 * @param jobhunterName
	 *            用户输入的登陆名称
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("checkValiImgAndName")
	public @ResponseBody
	String checkValiImgAndName(String validationImg, String jobhunterName,
			HttpSession session) throws Exception {
		validationImg = URLDecoder.decode(validationImg, "utf-8");
		jobhunterName=URLDecoder.decode(jobhunterName, "utf-8");
		Jobhunter jobhunter=jobHunterService.findJobHunterByName(jobhunterName);
		Map<String, String> map = new HashMap<String, String>();
		if(jobhunter!=null){
			map.put("nameInfo", "exist");
		}else{
			map.put("nameInfo", "notExist");
		}
		if (validationImg.equals(session.getAttribute("valiStr"))) {
			map.put("valiInfo", "success");
		} else {
			map.put("valiInfo", "failed");
		}
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(map);
	}

}
