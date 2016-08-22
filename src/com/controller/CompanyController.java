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

import com.exception.MyException;
import com.pojo.Company;
import com.pojo.Industry;
import com.pojo.JobCustom;
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

	/**
	 * 企业用户登陆验证
	 * 
	 * @param company
	 *            封装企业用户信息的实体
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findCompanyLogin")
	public @ResponseBody
	Company findCompanyLogin(Company company, HttpSession session)
			throws Exception {
		company.setCompanyPassword(MD5Utils.md5(company.getCompanyPassword()));
		Company company2 = companyService.findCompanyLogin(company);
		if (company2 != null) {
			session.setAttribute("company", company2);
		}
		return company2;
	}

	/**
	 * 根据职位id查看企业详细信息
	 * 
	 * @param jobId
	 *            职位id
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/showCompanyDetailByJobId")
	public String showCompanyDetailByJobId(Integer jobId, HttpSession session)
			throws Exception {
		JobCustom jobCustom = jobService.findJobDetailByJobId(jobId);
		// 准备该企业最新三个发布的职位信息
		List<JobCustom> threeLatestJobs = jobService
				.findThreeJobByCompanyId(jobCustom.getCompanyId());
		session.setAttribute("jobCustom", jobCustom);
		session.setAttribute("threeLatestJobs", threeLatestJobs);
		return "company/companyDetail";
	}

	/**
	 * 企业版的管理页面
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/companyManage")
	public String companyManage(HttpSession session) throws Exception {
		// 判断企业是否已经登录
		Company company = (Company) session.getAttribute("company");
		if (company != null) {
			// 准备职位数据信息
			List<JobCustom> jobCustoms = jobService.findJobsByCompanyId(company
					.getCompanyId());
			// 准备简历数据信息
			session.setAttribute("jobCustoms", jobCustoms);
			return "company/companyManage";
		} else {
			throw new MyException("企业用户还未登录！");
		}
	}

	/**
	 * 更新企业信息
	 * 
	 * @param company
	 *            封装企业信息的实体
	 * @param province
	 *            省份
	 * @param city
	 *            城市
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/updateCompany")
	public String updateCompany(Company company, String province, String city,
			HttpSession session) throws Exception {
		company.setCompanyLocation(province + city);
		companyService.updateCompany(company);
		// 重新查询
		Company company2 = companyService
				.findCompanyByCompanyLoginName(((Company) session
						.getAttribute("company")).getCompanyLoginName());
		session.setAttribute("company", company2);
		return "company/companyManage";
	}

}
