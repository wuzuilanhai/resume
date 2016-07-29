package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Mail;

/**
 * 类描述：邮件控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/mail")
public class MailController extends BasicController {
	/**
	 * 发送邮件
	 * 
	 * @param mail
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addMail")
	public String addMail(Mail mail) throws Exception {
		mail.setMailDate(new Date());
		mailService.addMail(mail);
		return "success";
	}
}
