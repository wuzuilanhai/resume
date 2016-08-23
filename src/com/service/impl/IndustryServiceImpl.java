package com.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pojo.Industry;
import com.service.IndustryService;

/**
 * 类描述：行业业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class IndustryServiceImpl extends BasicServiceImpl implements
		IndustryService {
	public void addIndustry(Industry industry) throws Exception {
		industryMapper.addIndustry(industry);
	}

	public Integer findIndustryIdByIndustryName(String industryName)
			throws Exception {
		return industryMapper.findIndustryIdByIndustryName(industryName);
	}

	public List<Industry> findParentIndustry() throws Exception {
		return industryMapper.findParentIndustry();
	}

	public List<Industry> findChildrenIndustry(Integer parentid)
			throws Exception {
		return industryMapper.findChildrenIndustry(parentid);
	}

	public String findIndustryNameByIndustryId(Integer industryId)
			throws Exception {
		return industryMapper.findIndustryNameByIndustryId(industryId);
	}

}
