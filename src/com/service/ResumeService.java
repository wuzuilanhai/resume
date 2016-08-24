package com.service;

import java.util.List;

import com.pojo.Page;
import com.pojo.Resume;
import com.pojo.ResumeCustom;
import com.pojo.ResumeQueryVo;

/**
 * 类描述：简历业务类接口
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-26 时间：下午1:49:16
 * @version 1.0
 */
public interface ResumeService {

	/**
	 * 添加简历
	 * 
	 * @param resume
	 *            封装简历信息的实体类
	 */
	void addResume(Resume resume) throws Exception;

	/**
	 * 查找求职者简历数据信息
	 * 
	 * @param jobhunterId
	 *            求职者Id
	 * @return 封装简历的数据信息
	 */
	Resume findResumeByJobhunterId(Integer jobhunterId) throws Exception;

	/**
	 * 更新简历信息
	 * 
	 * @param resume
	 *            封装简历信息的实体
	 */
	void updateResume(Resume resume) throws Exception;

	/**
	 * 根据简历id查找投递给相关职位的信息
	 * 
	 * @param resumeId
	 *            简历id
	 * @return 相关职位的信息
	 */
	ResumeCustom findResumeJob(Integer resumeId) throws Exception;

	/**
	 * 根据简历id查找相关简历的信息
	 * 
	 * @param resumeId
	 *            简历id
	 * @return 相关简历的信息
	 */
	ResumeCustom findResumeByResumeId(Integer resumeId) throws Exception;

	/**
	 * 查找所有简历记录
	 * 
	 * @return 简历数量
	 */
	Integer findAllResumes() throws Exception;

	/**
	 * 分页查找简历信息列表
	 * 
	 * @param page
	 *            封装分页信息的实体
	 * @return 简历信息列表
	 */
	List<ResumeCustom> findAllResumesByPage(Page page) throws Exception;

	/**
	 * 根据条件查询简历数量
	 * 
	 * @param resumeQueryVo
	 * @return
	 */
	Integer findAllResumesByCondition(ResumeQueryVo resumeQueryVo)
			throws Exception;

	/**
	 * 根据条件查询简历信息列表
	 * 
	 * @param resumeQueryVo
	 * @return
	 */
	List<ResumeCustom> findResumesByCondition(ResumeQueryVo resumeQueryVo)
			throws Exception;

	/**
	 * 准备10个热门简历数据信息
	 * 
	 * @return
	 */
	List<ResumeCustom> findResumeByVisitNumberLimit10() throws Exception;

	/**
	 * 读取每个行业的4个简历数据信息
	 * 
	 * @param industryId
	 * @return
	 */
	List<ResumeCustom> findResumeByVisitNumberAndIndustryId(int industryId)
			throws Exception;

}
