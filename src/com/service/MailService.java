package com.service;

import com.pojo.Mail;

/**
 * 类描述：邮件业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface MailService {

	/**
	 * 发送邮件
	 * 
	 * @param mail
	 *            封装邮件信息的实体
	 */
	void addMail(Mail mail) throws Exception;

}
