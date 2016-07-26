package com.service;

import com.pojo.Admin;

/**
 * 
 * 类描述：管理员业务层接口
 * 
 * @author: 海彪
 * @date： 日期：2016-7-25 时间：下午3:58:20
 * @version 1.0
 */
public interface AdminService {
	/**
	 * 验证管理员账户和密码是否正确
	 * 
	 * @param admin
	 *            传递过来的信息包装在admin中
	 * @return
	 */
	public Admin findAdminByNameAndPassword(Admin admin) throws Exception;
}
