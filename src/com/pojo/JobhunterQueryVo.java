package com.pojo;

import java.io.Serializable;

/**
 * 类描述：求职者mapper查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-12 时间：上午11:03:08
 * @version 1.0
 */
public class JobhunterQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2494606358390157108L;

	private Jobhunter jobhunter;

	private String jobhunterProvince;

	private String jobhunterCity;

	private Integer jobhunterYear;

	private Integer jobhunterMonth;

	public Jobhunter getJobhunter() {
		return jobhunter;
	}

	public void setJobhunter(Jobhunter jobhunter) {
		this.jobhunter = jobhunter;
	}

	public String getJobhunterProvince() {
		return jobhunterProvince;
	}

	public void setJobhunterProvince(String jobhunterProvince) {
		this.jobhunterProvince = jobhunterProvince;
	}

	public String getJobhunterCity() {
		return jobhunterCity;
	}

	public void setJobhunterCity(String jobhunterCity) {
		this.jobhunterCity = jobhunterCity;
	}

	public Integer getJobhunterYear() {
		return jobhunterYear;
	}

	public void setJobhunterYear(Integer jobhunterYear) {
		this.jobhunterYear = jobhunterYear;
	}

	public Integer getJobhunterMonth() {
		return jobhunterMonth;
	}

	public void setJobhunterMonth(Integer jobhunterMonth) {
		this.jobhunterMonth = jobhunterMonth;
	}

}
