package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 类描述：简历查询结果包装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-18 时间：上午11:14:01
 * @version 1.0
 */
public class ResumeCustom extends Resume implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5897088870335991918L;

	private String jobhunterRealName;

	private String jobhunterBirthday;

	private String jobhunterQualification;

	private String jobhunterAddress;

	private Date submitTime;

	private String uploadLocation;

	private String uploadName;

	public String getJobhunterRealName() {
		return jobhunterRealName;
	}

	public void setJobhunterRealName(String jobhunterRealName) {
		this.jobhunterRealName = jobhunterRealName;
	}

	public String getJobhunterBirthday() {
		return jobhunterBirthday;
	}

	public void setJobhunterBirthday(String jobhunterBirthday) {
		this.jobhunterBirthday = jobhunterBirthday;
	}

	public String getJobhunterQualification() {
		return jobhunterQualification;
	}

	public void setJobhunterQualification(String jobhunterQualification) {
		this.jobhunterQualification = jobhunterQualification;
	}

	public String getJobhunterAddress() {
		return jobhunterAddress;
	}

	public void setJobhunterAddress(String jobhunterAddress) {
		this.jobhunterAddress = jobhunterAddress;
	}

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public String getUploadLocation() {
		return uploadLocation;
	}

	public void setUploadLocation(String uploadLocation) {
		this.uploadLocation = uploadLocation;
	}

	public String getUploadName() {
		return uploadName;
	}

	public void setUploadName(String uploadName) {
		this.uploadName = uploadName;
	}

}
