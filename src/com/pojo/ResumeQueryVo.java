package com.pojo;

import java.io.Serializable;

/**
 * 类描述：简历mapper查询条件封装类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-24 时间：上午9:03:27
 * @version 1.0
 */
public class ResumeQueryVo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8834609830349354336L;

	private Resume resume;

	private String keyWord;

	private Page page;

	public Resume getResume() {
		return resume;
	}

	public void setResume(Resume resume) {
		this.resume = resume;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

}
