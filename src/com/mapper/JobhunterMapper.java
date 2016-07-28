package com.mapper;

import com.pojo.Jobhunter;

/**
 * 
 * 类描述：求职者持久层映射文件接口类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午2:38:15
 * @version 1.0
 */
public interface JobhunterMapper {
	void addJobHunter(Jobhunter jobhunter) throws Exception;

	void updateJobHunterByDetails(Jobhunter jobhunter) throws Exception;

	Jobhunter findJobHunterByPhone(String phone) throws Exception;
}