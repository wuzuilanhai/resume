package com.pojo;

import java.io.Serializable;

/**
 * 
 * 类描述：职业倾向实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class CareerIntention implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6929827969755213603L;

	private Integer cintentionId;

	private Integer industryId;

	private Integer positionId;

	private String expectWorksite;

	private Double expectSalary;

	private Double currentSalary;

	public Integer getCintentionId() {
		return cintentionId;
	}

	public void setCintentionId(Integer cintentionId) {
		this.cintentionId = cintentionId;
	}

	public Integer getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}

	public Integer getPositionId() {
		return positionId;
	}

	public void setPositionId(Integer positionId) {
		this.positionId = positionId;
	}

	public String getExpectWorksite() {
		return expectWorksite;
	}

	public void setExpectWorksite(String expectWorksite) {
		this.expectWorksite = expectWorksite == null ? null : expectWorksite
				.trim();
	}

	public Double getExpectSalary() {
		return expectSalary;
	}

	public void setExpectSalary(Double expectSalary) {
		this.expectSalary = expectSalary;
	}

	public Double getCurrentSalary() {
		return currentSalary;
	}

	public void setCurrentSalary(Double currentSalary) {
		this.currentSalary = currentSalary;
	}
}