package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pojo.Company;
import com.util.MD5Utils;

/**
 * 类描述：企业公司控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/company")
public class CompanyController extends BasicController {
	/**
	 * 添加企业公司
	 * 
	 * @param company
	 * @param industryName
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addCompany")
	public String addCompany(Company company, String industryName)
			throws Exception {
		// MD5加密密码
		company.setCompanyPassword(MD5Utils.md5(company.getCompanyPassword()));
		Integer industryId = industryService
				.findIndustryIdByIndustryName(industryName);
		company.setIndustryId(industryId);
		companyService.addCompany(company);
		return "success";
	}
}
