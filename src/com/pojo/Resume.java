package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：简历实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Resume implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8135509861998878314L;

	private Integer resumeId;

	private Integer jobhunterId;

	private Integer careerIntentionId;

	private String workExperienceIds;

	private String educationExperienceIds;

	private String projectExperienceIds;

	private Integer visibility;

	private Integer visitNumber;

	private Date lastEditTime;

	public Integer getResumeId() {
		return resumeId;
	}

	public void setResumeId(Integer resumeId) {
		this.resumeId = resumeId;
	}

	public Integer getJobhunterId() {
		return jobhunterId;
	}

	public void setJobhunterId(Integer jobhunterId) {
		this.jobhunterId = jobhunterId;
	}

	public Integer getCareerIntentionId() {
		return careerIntentionId;
	}

	public void setCareerIntentionId(Integer careerIntentionId) {
		this.careerIntentionId = careerIntentionId;
	}

	public String getWorkExperienceIds() {
		return workExperienceIds;
	}

	public void setWorkExperienceIds(String workExperienceIds) {
		this.workExperienceIds = workExperienceIds == null ? null
				: workExperienceIds.trim();
	}

	public String getEducationExperienceIds() {
		return educationExperienceIds;
	}

	public void setEducationExperienceIds(String educationExperienceIds) {
		this.educationExperienceIds = educationExperienceIds == null ? null
				: educationExperienceIds.trim();
	}

	public String getProjectExperienceIds() {
		return projectExperienceIds;
	}

	public void setProjectExperienceIds(String projectExperienceIds) {
		this.projectExperienceIds = projectExperienceIds == null ? null
				: projectExperienceIds.trim();
	}

	public Integer getVisibility() {
		return visibility;
	}

	public void setVisibility(Integer visibility) {
		this.visibility = visibility;
	}

	public Integer getVisitNumber() {
		return visitNumber;
	}

	public void setVisitNumber(Integer visitNumber) {
		this.visitNumber = visitNumber;
	}

	public Date getLastEditTime() {
		return lastEditTime;
	}

	public void setLastEditTime(Date lastEditTime) {
		this.lastEditTime = lastEditTime;
	}
}