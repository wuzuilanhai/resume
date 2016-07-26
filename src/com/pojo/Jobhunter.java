package com.pojo;

import java.util.Date;

/**
 * 
 * 类描述：求职者实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Jobhunter {
	private Integer jobhunterId;

	private String jobhunterName;

	private String jobhunterPassword;

	private String jobhunterSex;

	private Date jobhunterBirthday;

	private String jobhunterMaritalStatus;

	private String jobhunterPhone;

	private String jobhunterEmail;

	private String jobhunterNativePlace;

	private String jobhuntEntranceStatus;

	private String jobhunterSelfAppraisal;

	private String jobhunterQualification;

	private Date jobhunterJoindate;

	private Date jobhunterLastLogindate;

	private Integer jobhunterEditStatus;

	private String jobhunterExtraMessage;

	public Integer getJobhunterId() {
		return jobhunterId;
	}

	public void setJobhunterId(Integer jobhunterId) {
		this.jobhunterId = jobhunterId;
	}

	public String getJobhunterName() {
		return jobhunterName;
	}

	public void setJobhunterName(String jobhunterName) {
		this.jobhunterName = jobhunterName == null ? null : jobhunterName
				.trim();
	}

	public String getJobhunterPassword() {
		return jobhunterPassword;
	}

	public void setJobhunterPassword(String jobhunterPassword) {
		this.jobhunterPassword = jobhunterPassword == null ? null
				: jobhunterPassword.trim();
	}

	public String getJobhunterSex() {
		return jobhunterSex;
	}

	public void setJobhunterSex(String jobhunterSex) {
		this.jobhunterSex = jobhunterSex == null ? null : jobhunterSex.trim();
	}

	public Date getJobhunterBirthday() {
		return jobhunterBirthday;
	}

	public void setJobhunterBirthday(Date jobhunterBirthday) {
		this.jobhunterBirthday = jobhunterBirthday;
	}

	public String getJobhunterMaritalStatus() {
		return jobhunterMaritalStatus;
	}

	public void setJobhunterMaritalStatus(String jobhunterMaritalStatus) {
		this.jobhunterMaritalStatus = jobhunterMaritalStatus == null ? null
				: jobhunterMaritalStatus.trim();
	}

	public String getJobhunterPhone() {
		return jobhunterPhone;
	}

	public void setJobhunterPhone(String jobhunterPhone) {
		this.jobhunterPhone = jobhunterPhone == null ? null : jobhunterPhone
				.trim();
	}

	public String getJobhunterEmail() {
		return jobhunterEmail;
	}

	public void setJobhunterEmail(String jobhunterEmail) {
		this.jobhunterEmail = jobhunterEmail == null ? null : jobhunterEmail
				.trim();
	}

	public String getJobhunterNativePlace() {
		return jobhunterNativePlace;
	}

	public void setJobhunterNativePlace(String jobhunterNativePlace) {
		this.jobhunterNativePlace = jobhunterNativePlace == null ? null
				: jobhunterNativePlace.trim();
	}

	public String getJobhuntEntranceStatus() {
		return jobhuntEntranceStatus;
	}

	public void setJobhuntEntranceStatus(String jobhuntEntranceStatus) {
		this.jobhuntEntranceStatus = jobhuntEntranceStatus == null ? null
				: jobhuntEntranceStatus.trim();
	}

	public String getJobhunterSelfAppraisal() {
		return jobhunterSelfAppraisal;
	}

	public void setJobhunterSelfAppraisal(String jobhunterSelfAppraisal) {
		this.jobhunterSelfAppraisal = jobhunterSelfAppraisal == null ? null
				: jobhunterSelfAppraisal.trim();
	}

	public String getJobhunterQualification() {
		return jobhunterQualification;
	}

	public void setJobhunterQualification(String jobhunterQualification) {
		this.jobhunterQualification = jobhunterQualification == null ? null
				: jobhunterQualification.trim();
	}

	public Date getJobhunterJoindate() {
		return jobhunterJoindate;
	}

	public void setJobhunterJoindate(Date jobhunterJoindate) {
		this.jobhunterJoindate = jobhunterJoindate;
	}

	public Date getJobhunterLastLogindate() {
		return jobhunterLastLogindate;
	}

	public void setJobhunterLastLogindate(Date jobhunterLastLogindate) {
		this.jobhunterLastLogindate = jobhunterLastLogindate;
	}

	public Integer getJobhunterEditStatus() {
		return jobhunterEditStatus;
	}

	public void setJobhunterEditStatus(Integer jobhunterEditStatus) {
		this.jobhunterEditStatus = jobhunterEditStatus;
	}

	public String getJobhunterExtraMessage() {
		return jobhunterExtraMessage;
	}

	public void setJobhunterExtraMessage(String jobhunterExtraMessage) {
		this.jobhunterExtraMessage = jobhunterExtraMessage == null ? null
				: jobhunterExtraMessage.trim();
	}
}