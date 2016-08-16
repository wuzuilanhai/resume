package com.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Industry;

/**
 * 类描述：行业控制类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:16:49
 * @version 1.0
 */
@Controller
@RequestMapping("/industry")
public class IndustryController extends BasicController {

	/**
	 * 添加行业
	 * 
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/addIndustry")
	public String addIndustry(Industry industry, String parentIndustryName)
			throws Exception {
		Integer parentId = 0;
		if (!"".equals(parentIndustryName)) {
			// 由行业名称查找行业ID
			parentId = industryService
					.findIndustryIdByIndustryName(parentIndustryName);
			if (parentId == null) {
				return "failed";
			}
			industry.setParentid(parentId);
		}
		industryService.addIndustry(industry);
		return "success";
	}

	/**
	 * 通过父行业id寻找子行业
	 * 
	 * @param parentid
	 *            父行业id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findChildrenIndustry")
	public @ResponseBody
	List<Industry> findChildrenIndustry(Integer parentid) throws Exception {
		return industryService.findChildrenIndustry(parentid);
	}

}
