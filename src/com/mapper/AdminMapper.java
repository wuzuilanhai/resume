package com.mapper;

import com.pojo.Admin;

/**
 * 
 * 类描述：管理员持久层映射文件接口类
 * 
 * @author: 海彪
 * @date： 日期：2016-7-25 时间：下午3:58:44
 * @version 1.0
 */
public interface AdminMapper {
	public Admin findAdminByNameAndPassword(Admin admin) throws Exception;
}