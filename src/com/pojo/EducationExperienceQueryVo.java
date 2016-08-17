package com.pojo;

import java.io.Serializable;

/**
 * 类描述：教育经历mapper查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-16 时间：上午10:04:28
 * @version 1.0
 */
public class EducationExperienceQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7996515767610255774L;

	private EducationExperience educationExperience;

	private Integer educationExperienceId;

	private Integer startYear;

	private Integer endYear;

	private Integer startMonth;

	private Integer endMonth;

	public EducationExperience getEducationExperience() {
		return educationExperience;
	}

	public void setEducationExperience(EducationExperience educationExperience) {
		this.educationExperience = educationExperience;
	}

	public Integer getEducationExperienceId() {
		return educationExperienceId;
	}

	public void setEducationExperienceId(Integer educationExperienceId) {
		this.educationExperienceId = educationExperienceId;
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
