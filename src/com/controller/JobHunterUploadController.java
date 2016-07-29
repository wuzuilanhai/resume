package com.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.pojo.JobhunterUpload;

/**
 * 类描述：求职者上传图片的控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/jobHunterUpload")
public class JobHunterUploadController extends BasicController {
	/**
	 * 添加求职者上传图片
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addJobHunterUpload")
	public String addJobHunterUpload(MultipartFile uploadPic,
			Integer jobhunterId, HttpServletRequest request) throws Exception {
		// 图片原始名称
		String originalFilename = uploadPic.getOriginalFilename();
		// 上传图片
		if (uploadPic != null && originalFilename != null
				&& originalFilename.length() > 0) {
			// 获取项目根路径
			String path = request.getSession().getServletContext()
					.getRealPath("uploads");
			// 存储图片的物理路径
			String uploadLocation = path + "\\"
					+ new SimpleDateFormat("yyyy\\MM\\dd").format(new Date())
					+ "\\";
			// 创建文件夹
			File dir = new File(uploadLocation);
			if (!dir.exists())
				dir.mkdirs();
			String uploadName = UUID.randomUUID()
					+ originalFilename.substring(originalFilename
							.lastIndexOf("."));
			String uploadType = uploadPic.getContentType();

			// 将新图片信息存入数据库
			JobhunterUpload jobhunterUpload = new JobhunterUpload();
			jobhunterUpload.setJobhunterId(jobhunterId);
			jobhunterUpload.setUploadLocation(uploadLocation);
			jobhunterUpload.setUploadName(uploadName);
			jobhunterUpload.setUploadType(uploadType);
			jobhunterUpload.setUploadTime(new Date());
			jobHunterUploadService.addJobHunterUpload(jobhunterUpload);

			// 新图片
			File file = new File(uploadLocation + uploadName);
			// 将内存中的数据写入磁盘
			uploadPic.transferTo(file);

			return "success";
		} else {
			return "failed";
		}
	}
}
