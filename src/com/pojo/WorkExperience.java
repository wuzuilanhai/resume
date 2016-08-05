package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：工作经历实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class WorkExperience implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -807237424000139121L;

	private Integer wexperienceId;

	private String companyName;

	private Integer companyIndustryId;

	private String positionName;

	private String worksite;

	private Integer subordinateNumber;

	private Date startTime;

	private Date endTime;

	private String duty;

	public Integer getWexperienceId() {
		return wexperienceId;
	}

	public void setWexperienceId(Integer wexperienceId) {
		this.wexperienceId = wexperienceId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName == null ? null : companyName.trim();
	}

	public Integer getCompanyIndustryId() {
		return companyIndustryId;
	}

	public void setCompanyIndustryId(Integer companyIndustryId) {
		this.companyIndustryId = companyIndustryId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName == null ? null : positionName.trim();
	}

	public String getWorksite() {
		return worksite;
	}

	public void setWorksite(String worksite) {
		this.worksite = worksite == null ? null : worksite.trim();
	}

	public Integer getSubordinateNumber() {
		return subordinateNumber;
	}

	public void setSubordinateNumber(Integer subordinateNumber) {
		this.subordinateNumber = subordinateNumber;
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

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty == null ? null : duty.trim();
	}
}