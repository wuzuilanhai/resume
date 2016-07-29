package com.mapper;

import com.pojo.Mail;

/**
 * 
 * 类描述：邮件持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface MailMapper {

	void addMail(Mail mail) throws Exception;
}