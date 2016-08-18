package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：简历-职位关系实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class ResumeJob implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3647714061113979444L;

	private Resume resume;

	private Job job;

	private Date submittime;

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public Date getSubmittime() {
		return submittime;
	}

	public void setSubmittime(Date submittime) {
		this.submittime = submittime;
	}

}