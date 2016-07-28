package com.controller;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Notice;

/**
 * 类描述：公告控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/notice")
public class NoticeController extends BasicController {

	/**
	 * 添加公告
	 * 
	 * @param notice封装的公告信息
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addNotice")
	public String addNotice(Notice notice) throws Exception {
		notice.setNoticeDate(new Date());
		noticeService.addNotice(notice);
		return "redirect:success.action";
	}

	/**
	 * 成功添加公告
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/success")
	public String success() throws Exception {
		return "success";
	}

	/**
	 * 查看所有公告
	 * 
	 * @return 公告列表
	 * @throws Exception
	 */
	@RequestMapping("/findNotices")
	public @ResponseBody List<Notice> findNotices() throws Exception {
		return noticeService.findNotices();
	}

}
