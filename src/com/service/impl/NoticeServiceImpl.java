package com.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pojo.Notice;
import com.service.NoticeService;

/**
 * 类描述：公告业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class NoticeServiceImpl extends BasicServiceImpl implements
		NoticeService {

	public void addNotice(Notice notice) throws Exception {
		noticeMapper.addNotice(notice);
	}

	public List<Notice> findNotices() throws Exception {
		return noticeMapper.findNotices();
	}

}
