package com.pojo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Job implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7075948564422789140L;

	private Integer jobId;

	private String jobName;

	private String worksite;

	private Date jobSubtime;

	private Integer industryId;

	private Double jobSalary;

	private Integer jobStatus;

	private String jobDescription;

	private String jobEmail;

	private Integer companyId;

	private Integer isHot;

	private List<Resume> resumes;

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

	public Integer getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
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

	public Integer getIsHot() {
		return isHot;
	}

	public void setIsHot(Integer isHot) {
		this.isHot = isHot;
	}

	public List<Resume> getResumes() {
		return resumes;
	}

	public void setResumes(List<Resume> resumes) {
		this.resumes = resumes;
	}
}