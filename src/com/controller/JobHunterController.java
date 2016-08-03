package com.controller;

import java.util.Date;

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
	Jobhunter findJobHunterLogin(Jobhunter jobhunter) throws Exception {
		jobhunter.setJobhunterPassword(MD5Utils.md5(jobhunter
				.getJobhunterPassword()));
		return jobHunterService.findJobHunterLogin(jobhunter);
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

}
