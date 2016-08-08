package com.pojo;

import java.io.Serializable;

/**
 * 
 * 类描述：职位mapper查询结果封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-8 时间：下午4:10:33
 * @version 1.0
 */
public class JobCustom extends Job implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4791060154365764118L;

	private String companyName;

	private String industryName;

	public String getIndustryName() {
		return industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

}