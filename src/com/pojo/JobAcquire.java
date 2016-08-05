package com.pojo;

import java.io.Serializable;

/**
 * 
 * 类描述：职位要求实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class JobAcquire implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9182583509425495180L;

	private Integer jacquireId;

	private String languageAcquire;

	private String majorAcquire;

	private String qualificationAcquire;

	private Integer isUnify;

	private Integer ageMin;

	private Integer ageMax;

	private String sexAcquire;

	private Integer jobId;

	public Integer getJacquireId() {
		return jacquireId;
	}

	public void setJacquireId(Integer jacquireId) {
		this.jacquireId = jacquireId;
	}

	public String getLanguageAcquire() {
		return languageAcquire;
	}

	public void setLanguageAcquire(String languageAcquire) {
		this.languageAcquire = languageAcquire == null ? null : languageAcquire
				.trim();
	}

	public String getMajorAcquire() {
		return majorAcquire;
	}

	public void setMajorAcquire(String majorAcquire) {
		this.majorAcquire = majorAcquire == null ? null : majorAcquire.trim();
	}

	public String getQualificationAcquire() {
		return qualificationAcquire;
	}

	public void setQualificationAcquire(String qualificationAcquire) {
		this.qualificationAcquire = qualificationAcquire == null ? null
				: qualificationAcquire.trim();
	}

	public Integer getIsUnify() {
		return isUnify;
	}

	public void setIsUnify(Integer isUnify) {
		this.isUnify = isUnify;
	}

	public Integer getAgeMin() {
		return ageMin;
	}

	public void setAgeMin(Integer ageMin) {
		this.ageMin = ageMin;
	}

	public Integer getAgeMax() {
		return ageMax;
	}

	public void setAgeMax(Integer ageMax) {
		this.ageMax = ageMax;
	}

	public String getSexAcquire() {
		return sexAcquire;
	}

	public void setSexAcquire(String sexAcquire) {
		this.sexAcquire = sexAcquire == null ? null : sexAcquire.trim();
	}

	public Integer getJobId() {
		return jobId;
	}

	public void setJobId(Integer jobId) {
		this.jobId = jobId;
	}
}