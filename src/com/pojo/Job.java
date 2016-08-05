package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：职位实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Job  implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 531091338659949870L;

	private Integer jobId;

	private String jobName;

	private String worksite;

	private Date jobSubtime;

	private Integer positionId;

	private Double jobSalary;

	private Integer jobStatus;

	private String jobDescription;

	private String jobEmail;

	private Integer companyId;

	public Integer getJobId() {
		return jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName == null ? null : jobName.trim();
	}

	public String getWorksite() {
		return worksite;
	}

	public void setWorksite(String worksite) {
		this.worksite = worksite == null ? null : worksite.trim();
	}

	public Date getJobSubtime() {
		return jobSubtime;
	}

	public void setJobSubtime(Date jobSubtime) {
		this.jobSubtime = jobSubtime;
	}

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public Double getJobSalary() {
		return jobSalary;
	}

	public void setJobSalary(Double jobSalary) {
		this.jobSalary = jobSalary;
	}

	public Integer getJobStatus() {
		return jobStatus;
	}

	public void setJobStatus(Integer jobStatus) {
		this.jobStatus = jobStatus;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription == null ? null : jobDescription
				.trim();
	}

	public String getJobEmail() {
		return jobEmail;
	}

	public void setJobEmail(String jobEmail) {
		this.jobEmail = jobEmail == null ? null : jobEmail.trim();
	}

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
}