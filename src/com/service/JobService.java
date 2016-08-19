package com.service;

import java.util.List;

import com.pojo.Job;
import com.pojo.JobCustom;
import com.pojo.JobQueryVo;
import com.pojo.Page;

/**
 * 类描述：职位业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface JobService {

	/**
	 * 添加简历
	 * 
	 * @param job
	 *            封装简历信息的实体
	 */
	void addJob(Job job) throws Exception;

	/**
	 * 准备10个最新的（地区）热门职位数据信息
	 * 
	 * @return
	 */
	List<JobCustom> findHotJobLimitTenAndNew() throws Exception;

	/**
	 * 根据行业id获取相应行业最新的4个职位数据信息
	 * 
	 * @param industryId
	 *            行业id
	 * @return 职位数据信息列表
	 */
	List<JobCustom> findHotJobLimitFourAndNewByIndustryId(Integer industryId)
			throws Exception;

	/**
	 * 查找职位总记录数
	 * 
	 * @return 职位总记录数
	 */
	Integer findAllJobs() throws Exception;

	/**
	 * 分页查找职位记录
	 * 
	 * @param page
	 *            封装分页信息的实体类
	 * @return 职位记录列表
	 */
	List<JobCustom> findAllJobsByPage(Page page) throws Exception;

	/**
	 * 根据条件查询职位数量
	 * 
	 * @param jobQueryVo
	 *            封装表单数据的实体
	 * @return 职位总记录数
	 */
	Integer findAllJobsByCondition(JobQueryVo jobQueryVo) throws Exception;

	/**
	 * 根据提交的表单数据来分页查找职位
	 * 
	 * @param jobQueryVo
	 *            封装表单数据的实体
	 * @return
	 */
	List<JobCustom> findJobsByCondition(JobQueryVo jobQueryVo) throws Exception;

	/**
	 * 根据职位id查看职位详细信息
	 * 
	 * @param jobId
	 *            职位id
	 * @return
	 */
	JobCustom findJobDetailByJobId(Integer jobId) throws Exception;

	/**
	 * 根据企业id准备该企业最新三个发布的职位信息
	 * 
	 * @param companyId
	 *            企业id
	 * @return 封装企业信息的列表
	 */
	List<JobCustom> findThreeJobByCompanyId(Integer companyId) throws Exception;

	/**
	 * 根据职位名称查找四个类似此职位名称的其它职位信息（模糊查找）
	 * 
	 * @param jobCustom
	 *            职位名称
	 * @return 封装企业信息的列表
	 */
	List<JobCustom> findJobsByCommonNameLimitFour(JobCustom jobCustom)
			throws Exception;

}
