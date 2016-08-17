package com.pojo;

import java.io.Serializable;

/**
 * 类描述：项目经验mapper查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-16 时间：上午11:34:56
 * @version 1.0
 */
public class ProjectExperienceQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -120400591494889475L;

	private ProjectExperience projectExperience;

	private Integer projectExperienceId;

	private Integer startYear;

	private Integer endYear;

	private Integer startMonth;

	private Integer endMonth;

	public ProjectExperience getProjectExperience() {
		return projectExperience;
	}

	public void setProjectExperience(ProjectExperience projectExperience) {
		this.projectExperience = projectExperience;
	}

	public Integer getProjectExperienceId() {
		return projectExperienceId;
	}

	public void setProjectExperienceId(Integer projectExperienceId) {
		this.projectExperienceId = projectExperienceId;
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
