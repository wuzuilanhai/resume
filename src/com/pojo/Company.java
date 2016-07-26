package com.pojo;

/**
 * 
 * 类描述：企业公司实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class Company {
	private Integer companyId;

	private String companyName;

	private String companyLocation;

	private Integer industryId;

	private String chatterName;

	private String chatterSex;

	private String phoneNumber;

	public Integer getCompanyId() {
		return companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName == null ? null : companyName.trim();
	}

	public String getCompanyLocation() {
		return companyLocation;
	}

	public void setCompanyLocation(String companyLocation) {
		this.companyLocation = companyLocation == null ? null : companyLocation
				.trim();
	}

	public Integer getIndustryId() {
		return industryId;
	}

	public void setIndustryId(Integer industryId) {
		this.industryId = industryId;
	}

	public String getChatterName() {
		return chatterName;
	}

	public void setChatterName(String chatterName) {
		this.chatterName = chatterName == null ? null : chatterName.trim();
	}

	public String getChatterSex() {
		return chatterSex;
	}

	public void setChatterSex(String chatterSex) {
		this.chatterSex = chatterSex == null ? null : chatterSex.trim();
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber == null ? null : phoneNumber.trim();
	}
}