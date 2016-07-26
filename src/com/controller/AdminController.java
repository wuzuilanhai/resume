package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Admin;

/**
 * 类描述：管理员控制类
 * 
 * @author: 海彪
 * @date： 日期：2016-7-25 时间：下午3:57:08
 * @version 1.0
 */
@Controller
@RequestMapping("/admin")
// 为了对url进行分类管理 ，可以在这里定义根路径，最终访问url是根路径+子路径
// 比如：/admin/findAdmin.action
public class AdminController extends BasicController {

	/**
	 * 验证管理员登陆
	 * 
	 * @param admin
	 *            传递过来的表单数据封装在admin对象中
	 * @return json数据的admin对象
	 * @throws Exception
	 */
	@RequestMapping("/findAdmin")
	public @ResponseBody
	Admin findAdmin(Admin admin) throws Exception {
		Admin admin2 = adminService.findAdminByNameAndPassword(admin);
		return admin2;
	}
}
