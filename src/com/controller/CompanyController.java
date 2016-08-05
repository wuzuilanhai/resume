package com.controller;

import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Company;
import com.pojo.Industry;
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
	public @ResponseBody
	String addCompany(Company company, String province, String city,
			Integer type) throws Exception {
		// MD5加密密码
		company.setCompanyPassword(MD5Utils.md5(company.getCompanyPassword()));
		company.setIndustryId(type);
		company.setCompanyLocation(province + city);
		companyService.addCompany(company);
		Map<String, String> map = new HashMap<String, String>();
		map.put("addInfo", "success");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(map);
	}

	/**
	 * 验证验证码正确性和企业登陆名称唯一性
	 * 
	 * @param validationImg
	 *            企业用户输入的验证码
	 * @param companyLoginName
	 *            企业用户输入的登陆名称
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/checkValiImgAndLoginName")
	public @ResponseBody
	String checkValiImgAndLoginName(String validationImg,
			String companyLoginName, HttpSession session) throws Exception {
		validationImg = URLDecoder.decode(validationImg, "utf-8");
		companyLoginName = URLDecoder.decode(companyLoginName, "utf-8");
		Company company = companyService
				.findCompanyByCompanyLoginName(companyLoginName);
		Map<String, String> map = new HashMap<String, String>();
		if (company != null) {
			map.put("nameInfo", "exist");
		} else {
			map.put("nameInfo", "notExist");
		}
		if (validationImg.equals(session.getAttribute("valiStr"))) {
			map.put("valiInfo", "success");
		} else {
			map.put("valiInfo", "failed");
		}
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(map);
	}

	/**
	 * 跳转到企业注册页面，并准备好数据(行业)
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/registerUI")
	public String registerUI(HttpSession session) throws Exception {
		List<Industry> industries = industryService.findParentIndustry();
		session.setAttribute("industries", industries);
		return "company/companyRegister";
	}

}
