package com.pojo;

import java.io.Serializable;

/**
 * 类描述：工作经历mapper查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-15 时间：下午4:28:13
 * @version 1.0
 */
public class WorkExperienceQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2799133748209562376L;

	private Integer workExperienceId;

	private WorkExperience workExperience;

	private Integer startYear;

	private Integer endYear;

	private Integer startMonth;

	private Integer endMonth;

	public Integer getWorkExperienceId() {
		return workExperienceId;
	}

	public void setWorkExperienceId(Integer workExperienceId) {
		this.workExperienceId = workExperienceId;
	}

	public WorkExperience getWorkExperience() {
		return workExperience;
	}

	public void setWorkExperience(WorkExperience workExperience) {
		this.workExperience = workExperience;
	}

	public Integer getStartYear() {
		return startYear;
	}

	public void setStartYear(Integer startYear) {
		this.startYear = startYear;
	}

	public Integer getEndYear() {
		return endYear;
	}

	public void setEndYear(Integer endYear) {
		this.endYear = endYear;
	}

	public Integer getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(Integer startMonth) {
		this.startMonth = startMonth;
	}

	public Integer getEndMonth() {
		return endMonth;
	}

	public void setEndMonth(Integer endMonth) {
		this.endMonth = endMonth;
	}

}
