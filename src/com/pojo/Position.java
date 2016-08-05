package com.pojo;

import java.io.Serializable;

/**
 * 
 * 类描述：职能实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Position implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1730386729040700736L;

	private Integer positionId;

	private String positionName;

	private Integer industryId;

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public String getPositionName() {
		return positionName;
	}

	public void setPositionName(String positionName) {
		this.positionName = positionName == null ? null : positionName.trim();
	}

	public Integer getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}
}