package com.controller;

import java.io.File;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.exception.MyException;
import com.pojo.Company;
import com.pojo.Industry;
import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.JobhunterUpload;
import com.pojo.ResumeCustom;
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
	 * 跳转到企业主页
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/index")
	public String index(HttpSession session) throws Exception {
		// 准备10个热门简历数据信息
		List<ResumeCustom> resumeCustoms = resumeService
				.findResumeByVisitNumberLimit10();
		List<ResumeCustom> resumeCustoms1 = new ArrayList<ResumeCustom>();
		List<ResumeCustom> resumeCustoms2 = new ArrayList<ResumeCustom>();
		int i = 1;
		for (ResumeCustom resumeCustom : resumeCustoms) {
			if (i <= 4) {
				resumeCustoms1.add(resumeCustom);
			} else {
				resumeCustoms2.add(resumeCustom);
			}
			i++;
		}
		// 读取每个行业的4个简历数据信息
		List<ResumeCustom> resumeCustoms3 = resumeService
				.findResumeByVisitNumberAndIndustryId(1);
		List<ResumeCustom> resumeCustoms4 = resumeService
				.findResumeByVisitNumberAndIndustryId(2);
		List<ResumeCustom> resumeCustoms5 = resumeService
				.findResumeByVisitNumberAndIndustryId(3);
		List<ResumeCustom> resumeCustoms6 = resumeService
				.findResumeByVisitNumberAndIndustryId(4);
		List<ResumeCustom> resumeCustoms7 = resumeService
				.findResumeByVisitNumberAndIndustryId(5);
		List<ResumeCustom> resumeCustoms8 = resumeService
				.findResumeByVisitNumberAndIndustryId(6);
		session.setAttribute("resumeCustoms1", resumeCustoms1);
		session.setAttribute("resumeCustoms2", resumeCustoms2);
		session.setAttribute("resumeCustoms3", resumeCustoms3);
		session.setAttribute("resumeCustoms4", resumeCustoms4);
		session.setAttribute("resumeCustoms5", resumeCustoms5);
		session.setAttribute("resumeCustoms6", resumeCustoms6);
		session.setAttribute("resumeCustoms7", resumeCustoms7);
		session.setAttribute("resumeCustoms8", resumeCustoms8);
		return "company/index";
	}

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
			String industryName = industryService
					.findIndustryNameByIndustryId(company.getIndustryId());
			// 准备职位头像信息
			JobhunterUpload companyUpload = jobHunterUploadService
					.findCompanyUploadByCompanyId(company.getCompanyId());
			// 准备职位数据信息
			List<JobCustom> jobCustoms = jobService.findJobsByCompanyId(company
					.getCompanyId());
			// 准备简历数据信息
			List<JobCustom> jobCustoms2 = jobService
					.findJobsByCompanyId(company.getCompanyId());
			List<Job> jobs = new ArrayList<Job>();
			for (JobCustom jobCustom : jobCustoms2) {
				Job job = jobService.findResumeJob(jobCustom.getJobId());
				jobs.add(job);
			}

			session.setAttribute("industryName", industryName);
			session.setAttribute("companyUpload", companyUpload);
			session.setAttribute("jobCustoms", jobCustoms);
			session.setAttribute("jobs", jobs);
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

	/**
	 * 修改企业账号信息
	 * 
	 * @param company
	 *            封装企业用户修改后信息的实体
	 * @param uploadPic
	 *            封装上传图片信息的实体
	 * @param session
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	@RequestMapping("/updateCompanyAccount")
	public String updateCompanyAccount(Company newCompany,
			MultipartFile uploadPic, HttpSession session,
			HttpServletRequest request) throws Exception {
		Company company = (Company) session.getAttribute("company");
		// 修改求职者信息
		newCompany.setCompanyId(company.getCompanyId());
		newCompany.setCompanyPassword(MD5Utils.md5(newCompany
				.getCompanyPassword()));
		companyService.updateCompany(newCompany);
		// 更新session中company的值
		company = companyService.findCompanyByCompanyLoginName(company
				.getCompanyLoginName());
		session.setAttribute("company", company);

		// 如果未上传过头像，存储企业头像信息，否则修改企业上传头像，并删除原来的头像
		JobhunterUpload jobhunterUpload = jobHunterUploadService
				.findCompanyUploadByCompanyId(company.getCompanyId());
		// 图片原始名称
		String originalFilename = uploadPic.getOriginalFilename();
		// 上传图片
		if (uploadPic != null && originalFilename != null
				&& originalFilename.length() > 0) {
			// 获取网站url
			String path = request.getContextPath();
			// 存储图片的物理路径
			String uploadLocation = path + "/uploads/"
					+ new SimpleDateFormat("yyyy/MM/dd").format(new Date())
					+ "/";
			String realPath = request.getRealPath("uploads") + "\\"
					+ new SimpleDateFormat("yyyy\\MM\\dd").format(new Date())
					+ "\\";
			// 创建文件夹
			File dir = new File(realPath);
			if (!dir.exists())
				dir.mkdirs();
			String uploadName = UUID.randomUUID()
					+ originalFilename.substring(originalFilename
							.lastIndexOf("."));
			String uploadType = uploadPic.getContentType();
			if (jobhunterUpload == null) {
				jobhunterUpload = new JobhunterUpload();
				jobhunterUpload.setCompanyId(company.getCompanyId());
				jobhunterUpload.setUploadLocation(uploadLocation);
				jobhunterUpload.setUploadName(uploadName);
				jobhunterUpload.setUploadType(uploadType);
				jobhunterUpload.setUploadTime(new Date());
				jobHunterUploadService.addJobHunterUpload(jobhunterUpload);
			} else {
				// 删除原来的头像
				File oldFile = new File(realPath
						+ jobhunterUpload.getUploadName());
				if (oldFile.exists()) {
					oldFile.delete();
				}
				// 将新图片信息存入数据库
				jobhunterUpload.setUploadLocation(uploadLocation);
				jobhunterUpload.setUploadName(uploadName);
				jobhunterUpload.setUploadType(uploadType);
				jobhunterUpload.setUploadTime(new Date());
				jobHunterUploadService.updateJobHunterUpload(jobhunterUpload);
			}
			// 新图片
			File file = new File(realPath + uploadName);
			// 将内存中的数据写入磁盘
			uploadPic.transferTo(file);
		}
		return "redirect:/company/companyManage.action";
	}

}
