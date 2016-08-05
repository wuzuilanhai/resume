package com.pojo;

import java.io.Serializable;

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

	private Integer resumeId;

	private Integer jobId;

	public Integer getResumeId() {
		return resumeId;
	}

	public void setResumeId(Integer resumeId) {
		this.resumeId = resumeId;
	}

	public Integer getJobId() {
		return jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}
}