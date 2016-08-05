package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：邮件实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Mail implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1495221486663280002L;

	private Integer mailId;

	private String mailFrom;

	private String mailMsg;

	private String mailTitle;

	private String mailTo;

	private Date mailDate;

	public Integer getMailId() {
		return mailId;
	}

	public void setMailId(Integer mailId) {
		this.mailId = mailId;
	}

	public String getMailFrom() {
		return mailFrom;
	}

	public void setMailFrom(String mailFrom) {
		this.mailFrom = mailFrom == null ? null : mailFrom.trim();
	}

	public String getMailMsg() {
		return mailMsg;
	}

	public void setMailMsg(String mailMsg) {
		this.mailMsg = mailMsg == null ? null : mailMsg.trim();
	}

	public String getMailTitle() {
		return mailTitle;
	}

	public void setMailTitle(String mailTitle) {
		this.mailTitle = mailTitle == null ? null : mailTitle.trim();
	}

	public String getMailTo() {
		return mailTo;
	}

	public void setMailTo(String mailTo) {
		this.mailTo = mailTo == null ? null : mailTo.trim();
	}

	public Date getMailDate() {
		return mailDate;
	}

	public void setMailDate(Date mailDate) {
		this.mailDate = mailDate;
	}
}