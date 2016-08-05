package com.pojo;

import java.io.Serializable;

/**
 * 
 * 类描述：行业实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Industry implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 6109473003459493702L;

	private Integer industryId;

	private String industryName;

	private Integer parentid;

	public Integer getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}

	public String getIndustryName() {
		return industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName == null ? null : industryName.trim();
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
}