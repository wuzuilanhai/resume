package com.service.impl;

import org.springframework.stereotype.Service;

import com.pojo.CareerIntention;
import com.service.CareerIntentionService;

/**
 * 类描述：职业倾向业务类接口的实现类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:59:44
 * @version 1.0
 */
@Service
public class CareerIntentionServiceImpl extends BasicServiceImpl implements
		CareerIntentionService {

	public void addCareerIntention(CareerIntention careerIntention)
			throws Exception {
		careerIntentionMapper.addCareerIntention(careerIntention);
	}

}
