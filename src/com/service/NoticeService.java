package com.service;

import java.util.List;

import com.pojo.Notice;

/**
 * 类描述：公告业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface NoticeService {

	/**
	 * 添加公告
	 * 
	 * @param notice
	 *            封装的公告信息
	 */
	void addNotice(Notice notice) throws Exception;

	/**
	 * 查看所有公告
	 * 
	 * @return 公告列表
	 */
	List<Notice> findNotices() throws Exception;

}
