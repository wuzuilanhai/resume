package com.service.impl;

import org.springframework.stereotype.Service;

import com.exception.MyException;
import com.pojo.Admin;
import com.service.AdminService;

/**
 * 
 * 类描述：管理员业务层实现类
 * 
 * @author: 海彪
 * @date： 日期：2016-7-25 时间：下午3:57:46
 * @version 1.0
 */
@Service
public class AdminServiceImpl extends BasicServiceImpl implements AdminService {

	public Admin findAdminByNameAndPassword(Admin admin) throws Exception {
		Admin admin2 = adminMapper.findAdminByNameAndPassword(admin);
		if (admin2 == null) {
			throw new MyException("管理员账户和密码不符合！");
		}
		return admin2;
	}

}
