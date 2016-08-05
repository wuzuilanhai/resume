package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：教育经历实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class EducationExperience implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3011583279308363479L;

	private Integer eexperienceId;

	private String schoolName;

	private String majorName;

	private Date startTime;

	private Date endTime;

	private String qualification;

	private Integer isUnify;

	public Integer getEexperienceId() {
		return eexperienceId;
	}

	public void setEexperienceId(Integer eexperienceId) {
		this.eexperienceId = eexperienceId;
	}

	public String getSchoolName() {
		return schoolName;
	}

	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName == null ? null : schoolName.trim();
	}

	public String getMajorName() {
		return majorName;
	}

	public void setMajorName(String majorName) {
		this.majorName = majorName == null ? null : majorName.trim();
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification == null ? null : qualification
				.trim();
	}

	public Integer getIsUnify() {
		return isUnify;
	}

	public void setIsUnify(Integer isUnify) {
		this.isUnify = isUnify;
	}
}