package com.mapper;

import com.pojo.Company;

/**
 * 
 * 类描述：企业公司持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface CompanyMapper {
	void addCompany(Company company) throws Exception;

	Integer findCompanyIdByCompanyName(String companyName) throws Exception;

	Company findCompanyByCompanyLoginName(String companyLoginName)
			throws Exception;
}