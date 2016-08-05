package com.service;

import com.pojo.Company;

/**
 * 
 * 类描述：企业公司业务层接口
 * 
 * @author: 海彪
 * @date： 日期：2016-7-26 时间：下午1:58:20
 * @version 1.0
 */
public interface CompanyService {

	/**
	 * 添加企业公司
	 * 
	 * @param company
	 *            封装企业公司信息的实体
	 */
	void addCompany(Company company) throws Exception;

	/**
	 * 根据企业名称获取企业ID
	 * 
	 * @param companyName
	 *            企业名称
	 * @return 企业ID
	 */
	Integer findCompanyIdByCompanyName(String companyName) throws Exception;

	/**
	 * 根据企业登陆名称获取企业信息
	 * 
	 * @param companyLoginName
	 *            企业登陆名称
	 * @return
	 */
	Company findCompanyByCompanyLoginName(String companyLoginName)
			throws Exception;
}
