package com.pojo;

import java.util.Date;

/**
 * 
 * 类描述：求职者上传图片实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public class JobhunterUpload {
	private Integer uploadId;

	private Integer jobhunterId;

	private String uploadLocation;

	private String uploadName;

	private Date uploadTime;

	private String uploadType;

	public Integer getUploadId() {
		return uploadId;
	}

	public void setUploadId(Integer uploadId) {
		this.uploadId = uploadId;
	}

	public Integer getJobhunterId() {
		return jobhunterId;
	}

	public void setJobhunterId(Integer jobhunterId) {
		this.jobhunterId = jobhunterId;
	}

	public String getUploadLocation() {
		return uploadLocation;
	}

	public void setUploadLocation(String uploadLocation) {
		this.uploadLocation = uploadLocation == null ? null : uploadLocation
				.trim();
	}

	public String getUploadName() {
		return uploadName;
	}

	public void setUploadName(String uploadName) {
		this.uploadName = uploadName == null ? null : uploadName.trim();
	}

	public Date getUploadTime() {
		return uploadTime;
	}

	public void setUploadTime(Date uploadTime) {
		this.uploadTime = uploadTime;
	}

	public String getUploadType() {
		return uploadType;
	}

	public void setUploadType(String uploadType) {
		this.uploadType = uploadType == null ? null : uploadType.trim();
	}
}