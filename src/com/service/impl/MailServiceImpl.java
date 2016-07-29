package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.Mail;
import com.service.MailService;

/**
 * 类描述：邮件业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class MailServiceImpl extends BasicServiceImpl implements MailService {

	public void addMail(Mail mail) throws Exception {
		mailMapper.addMail(mail);
	}

}
