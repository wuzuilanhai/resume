package com.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * 类描述：项目经验实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class ProjectExperience implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3933994297681323640L;

	private Integer pexperienceId;

	private String projectName;

	private String companyName;

	private String projectPosition;

	private Date startTime;

	private Date endTime;

	private String projectDescription;

	private String projectResponsibility;

	private String projectAchievement;

	public Integer getPexperienceId() {
		return pexperienceId;
	}

	public void setPexperienceId(Integer pexperienceId) {
		this.pexperienceId = pexperienceId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName == null ? null : projectName.trim();
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName == null ? null : companyName.trim();
	}

	public String getProjectPosition() {
		return projectPosition;
	}

	public void setProjectPosition(String projectPosition) {
		this.projectPosition = projectPosition == null ? null : projectPosition
				.trim();
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

	public String getProjectDescription() {
		return projectDescription;
	}

	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription == null ? null
				: projectDescription.trim();
	}

	public String getProjectResponsibility() {
		return projectResponsibility;
	}

	public void setProjectResponsibility(String projectResponsibility) {
		this.projectResponsibility = projectResponsibility == null ? null
				: projectResponsibility.trim();
	}

	public String getProjectAchievement() {
		return projectAchievement;
	}

	public void setProjectAchievement(String projectAchievement) {
		this.projectAchievement = projectAchievement == null ? null
				: projectAchievement.trim();
	}
}