package com.mapper;

import java.util.List;

import com.pojo.Notice;

/**
 * 
 * 类描述：公告持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface NoticeMapper {
	void addNotice(Notice notice) throws Exception;

	List<Notice> findNotices() throws Exception;
}