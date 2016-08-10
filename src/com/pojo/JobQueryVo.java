package com.pojo;

import java.io.Serializable;

/**
 * 类描述：职位查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-9 时间：下午4:24:08
 * @version 1.0
 */
public class JobQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4598769632865846771L;

	private Job job;

	private Integer typeId;

	private String province;

	private String city;

	private String location;

	private Page page;

	public Job getJob() {
		return job;
	}

	public void setJob(Job job) {
		this.job = job;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
