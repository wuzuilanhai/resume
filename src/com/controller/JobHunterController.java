package com.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.nio.channels.FileChannel;
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

import com.pojo.JobCustom;
import com.pojo.Jobhunter;
import com.pojo.JobhunterQueryVo;
import com.pojo.JobhunterUpload;
import com.pojo.Resume;
import com.sun.org.apache.commons.beanutils.BeanUtils;
import com.util.MD5Utils;

/**
 * 类描述：求职者控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/jobHunter")
public class JobHunterController extends BasicController {
	/**
	 * 求职者注册
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJobHunter")
	@SuppressWarnings("deprecation")
	public @ResponseBody
	String addJobHunter(Jobhunter jobhunter, String year, String month,
			String province, String city, HttpServletRequest request)
			throws Exception {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		jobhunter.setJobhunterBirthday(format.parse(year + "-" + month));
		jobhunter.setJobhunterNativePlace(province + city);
		// 求职者资料完善状态，0：未完善，1：已完善
		jobhunter.setJobhunterEditStatus(1);
		jobhunter.setJobhunterJoindate(new Date());
		// 加密密码
		jobhunter.setJobhunterPassword(MD5Utils.md5(jobhunter
				.getJobhunterPassword()));
		jobHunterService.addJobHunter(jobhunter);
		// 为注册用户添加简历
		Resume resume = new Resume();
		resume.setVisitNumber(0);
		resume.setJobhunterId(jobhunter.getJobhunterId());
		resumeService.addResume(resume);
		// 为求职者添加默认头像
		File file = new File(request.getRealPath("uploads") + "/default.jpg");
		// 图片原始名称
		String originalFilename = "default.jpg";
		// 上传图片
		// 获取网站url
		String path = request.getContextPath();
		// 存储图片的物理路径
		String uploadLocation = path + "/uploads/"
				+ new SimpleDateFormat("yyyy/MM/dd").format(new Date()) + "/";
		String realPath = request.getRealPath("uploads") + "\\"
				+ new SimpleDateFormat("yyyy\\MM\\dd").format(new Date())
				+ "\\";
		// 创建文件夹
		File dir = new File(realPath);
		if (!dir.exists())
			dir.mkdirs();
		String uploadName = UUID.randomUUID()
				+ originalFilename.substring(originalFilename.lastIndexOf("."));
		String uploadType = "image/jpeg";
		JobhunterUpload jobhunterUpload = new JobhunterUpload();
		jobhunterUpload.setJobhunterId(jobhunter.getJobhunterId());
		jobhunterUpload.setUploadLocation(uploadLocation);
		jobhunterUpload.setUploadName(uploadName);
		jobhunterUpload.setUploadType(uploadType);
		jobhunterUpload.setUploadTime(new Date());
		jobHunterUploadService.addJobHunterUpload(jobhunterUpload);
		// 新图片
		File newFile = new File(realPath + uploadName);
		// 将内存中的数据写入磁盘
		FileInputStream reader = new FileInputStream(file);
		FileOutputStream writer = new FileOutputStream(newFile);
		FileChannel in = reader.getChannel();
		FileChannel out = writer.getChannel();
		in.transferTo(0, in.size(), out);
		writer.close();
		reader.close();

		Map<String, String> map = new HashMap<String, String>();
		map.put("registerInfo", "success");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(map);
	}

	/**
	 * 求职者登陆验证
	 * 
	 * @param jobhunter
	 *            封装求职者信息的实体
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findJobHunterLogin")
	public @ResponseBody
	Jobhunter findJobHunterLogin(Jobhunter jobhunter, HttpSession session)
			throws Exception {
		jobhunter.setJobhunterPassword(MD5Utils.md5(jobhunter
				.getJobhunterPassword()));
		Jobhunter jobhunter2 = jobHunterService.findJobHunterLogin(jobhunter);
		if (jobhunter2 != null) {
			JobhunterUpload jobhunterUpload = jobHunterUploadService
					.findJobhunterUploadByJobhunterId(jobhunter2
							.getJobhunterId());
			session.setAttribute("jobhunter", jobhunter2);
			session.setAttribute("jobhunterUpload", jobhunterUpload);
		}
		return jobhunter2;
	}

	/**
	 * 求职者注销
	 * 
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/logout")
	public @ResponseBody
	String logout(HttpSession session) throws Exception {
		session.removeAttribute("jobhunter");
		Map<String, String> msg = new HashMap<String, String>();
		msg.put("info", "success");
		ObjectMapper mapper = new ObjectMapper();
		return mapper.writeValueAsString(msg);
	}

	/**
	 * 完善求职者资料
	 * 
	 * @param jobhunter
	 *            封装求职者的详细信息
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("updateJobHunterByDetails")
	public @ResponseBody
	String updateJobHunterByDetails(Jobhunter jobhunter) throws Exception {
		// 通过手机号码取出要完善的求职者信息
		Jobhunter jobhunter2 = jobHunterService
				.findJobHunterByPhone("18814092579");
		jobhunter2.setJobhunterName(jobhunter.getJobhunterName());
		jobhunter2.setJobhunterBirthday(new Date());
		// 修改求职者信息完善状态为1，表示已完善
		jobhunter2.setJobhunterEditStatus(1);
		jobHunterService.updateJobHunterByDetails(jobhunter2);
		return "success";
	}

	/**
	 * 验证验证码正确性和登陆名称唯一性
	 * 
	 * @param validationImg
	 *            用户输入的验证码
	 * @param jobhunterName
	 *            用户输入的登陆名称
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("checkValiImgAndName")
	public @ResponseBody
	String checkValiImgAndName(String validationImg, String jobhunterName,
			HttpSession session) throws Exception {
		validationImg = URLDecoder.decode(validationImg, "utf-8");
		jobhunterName = URLDecoder.decode(jobhunterName, "utf-8");
		Jobhunter jobhunter = jobHunterService
				.findJobHunterByName(jobhunterName);
		Map<String, String> map = new HashMap<String, String>();
		if (jobhunter != null) {
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
	 * 跳转到个人注册页面
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/registerUI")
	public String registerUI() throws Exception {
		return "jobhunter/jobhunterRegister";
	}

	/**
	 * 跳转到求职者主页，并准备数据
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/indexUI")
	public String indexUI(HttpSession session) throws Exception {
		// 准备10个最新的（地区）热门职位数据信息
		List<JobCustom> jobCustoms = jobService.findHotJobLimitTenAndNew();
		List<JobCustom> jobCustoms1 = new ArrayList<JobCustom>();
		List<JobCustom> jobCustoms2 = new ArrayList<JobCustom>();
		int i = 1;
		for (JobCustom jobCustom : jobCustoms) {
			if (i <= 4) {
				jobCustoms1.add(jobCustom);
			} else {
				jobCustoms2.add(jobCustom);
			}
			i++;
		}
		// 读取每个行业最新的4个职位数据信息
		List<JobCustom> jobCustoms3 = jobService
				.findHotJobLimitFourAndNewByIndustryId(1);
		List<JobCustom> jobCustoms4 = jobService
				.findHotJobLimitFourAndNewByIndustryId(2);
		List<JobCustom> jobCustoms5 = jobService
				.findHotJobLimitFourAndNewByIndustryId(3);
		List<JobCustom> jobCustoms6 = jobService
				.findHotJobLimitFourAndNewByIndustryId(4);
		List<JobCustom> jobCustoms7 = jobService
				.findHotJobLimitFourAndNewByIndustryId(5);
		List<JobCustom> jobCustoms8 = jobService
				.findHotJobLimitFourAndNewByIndustryId(6);
		session.setAttribute("jobCustoms1", jobCustoms1);
		session.setAttribute("jobCustoms2", jobCustoms2);
		session.setAttribute("jobCustoms3", jobCustoms3);
		session.setAttribute("jobCustoms4", jobCustoms4);
		session.setAttribute("jobCustoms5", jobCustoms5);
		session.setAttribute("jobCustoms6", jobCustoms6);
		session.setAttribute("jobCustoms7", jobCustoms7);
		session.setAttribute("jobCustoms8", jobCustoms8);
		return "jobhunter/index";
	}

	/**
	 * 更新求职者信息
	 * 
	 * @param jobhunterQueryVo
	 *            封装求职者信息的实体
	 * @param session
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("updateJobhunter")
	public String updateJobhunter(JobhunterQueryVo jobhunterQueryVo,
			HttpSession session) throws Exception {
		if (jobhunterQueryVo.getJobhunterProvince() != null) {
			jobhunterQueryVo.getJobhunter().setJobhunterNativePlace(
					jobhunterQueryVo.getJobhunterProvince()
							+ jobhunterQueryVo.getJobhunterCity());
			String time = jobhunterQueryVo.getJobhunterYear() + "-"
					+ jobhunterQueryVo.getJobhunterMonth();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
			Date date = format.parse(time);
			jobhunterQueryVo.getJobhunter().setJobhunterBirthday(date);
		}
		// 取得更新前的求职者信息
		Jobhunter preJobhunter = (Jobhunter) session.getAttribute("jobhunter");
		Jobhunter newJobhunter = new Jobhunter();
		// 复制实体bean信息
		BeanUtils.copyProperties(newJobhunter, jobhunterQueryVo.getJobhunter());
		newJobhunter.setJobhunterId(preJobhunter.getJobhunterId());
		jobHunterService.updateJobHunterByDetails(newJobhunter);
		// 重新查询最新数据
		newJobhunter = jobHunterService.findJobHunterById(preJobhunter
				.getJobhunterId());
		session.setAttribute("jobhunter", newJobhunter);
		// Map<String, Jobhunter> map = new HashMap<String, Jobhunter>();
		// map.put("jobhunter", newJobhunter);
		// ObjectMapper mapper = new ObjectMapper();
		// return mapper.writeValueAsString(map);
		return "resume/myResume";
	}

	/**
	 * 修改账号信息
	 * 
	 * @param jobhunter
	 *            封装求职者修改后信息的实体
	 * @param uploadPic
	 *            封装上传图片信息的实体
	 * @param session
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	@RequestMapping("/updateAccountMsg")
	public String updateAccountMsg(Jobhunter newJobhunter,
			MultipartFile uploadPic, HttpSession session,
			HttpServletRequest request) throws Exception {
		Jobhunter jobhunter = (Jobhunter) session.getAttribute("jobhunter");
		// 修改求职者信息
		newJobhunter.setJobhunterId(jobhunter.getJobhunterId());
		newJobhunter.setJobhunterPassword(MD5Utils.md5(newJobhunter
				.getJobhunterPassword()));
		jobHunterService.updateJobHunterByDetails(newJobhunter);
		// 更新session中jobhunter的值
		jobhunter = jobHunterService.findJobHunterById(jobhunter
				.getJobhunterId());
		session.setAttribute("jobhunter", jobhunter);

		// 如果未上传过头像，存储求职者头像信息，否则修改求职者上传头像，并删除原来的头像
		JobhunterUpload jobhunterUpload = jobHunterUploadService
				.findJobhunterUploadByJobhunterId(jobhunter.getJobhunterId());
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
				jobhunterUpload.setJobhunterId(jobhunter.getJobhunterId());
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
		return "redirect:/resume/showResume.action";
	}

}
