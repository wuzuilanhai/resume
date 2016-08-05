package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.Company;
import com.service.CompanyService;

/**
 * 类描述：企业公司业务层接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class CompanyServiceImpl extends BasicServiceImpl implements
		CompanyService {

	public void addCompany(Company company) throws Exception {
		companyMapper.addCompany(company);
	}

	public Integer findCompanyIdByCompanyName(String companyName)
			throws Exception {
		return companyMapper.findCompanyIdByCompanyName(companyName);
	}

	public Company findCompanyByCompanyLoginName(String companyLoginName)
			throws Exception {
		return companyMapper.findCompanyByCompanyLoginName(companyLoginName);
	}

	public Company findCompanyLogin(Company company) throws Exception {
		return companyMapper.findCompanyLogin(company);
	}

}
