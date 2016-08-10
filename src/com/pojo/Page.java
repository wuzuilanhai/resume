package com.pojo;

import java.io.Serializable;
import java.util.List;

import com.exception.MyException;

/**
 * 类描述： 分页实体类
 * 
 * @author: 张海彪
 * @date： 日期：2016-8-9 时间：上午10:25:00
 * @version 1.0
 */
public class Page implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5879159465629996211L;
	// 传递的参数或配置的值
	private int currentPage; // 当前页
	private int pageSize; // 每页显示多少条记录

	// 查询数据库
	private int recordCount; // 总记录数
	private List recordList; // 本页的数据列表

	// 计算
	private int pageNums;// 当前页之前的总记录数
	private int pageCount; // 总页数
	private int beginPageIndex; // 页码列表的开始索引
	private int endPageIndex; // 页码列表的结束索引

	private String links;// 浏览器取得的分页超链接

	/**
	 * 只接受4个必要的属性值，会自动的计算出其他3个属性的值
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @param recordCount
	 * @param recordList
	 * @throws MyException
	 */
	public Page(int currentPage, int pageSize, int recordCount,
			List recordList, String url) throws Exception {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.recordCount = recordCount;
		this.recordList = recordList;
		this.pageNums = (currentPage - 1) * pageSize;

		// 计算 pageCount
		this.pageCount = (recordCount + pageSize - 1) / pageSize;
		if (pageCount == 0) {
			throw new MyException("查无结果！");
		}
		if (currentPage > pageCount) {
			throw new MyException("输入页数过大！");
		}

		// 计算beginPageIndex与endPageIndex
		// 1、总页码数<=78，就全部显示
		if (pageCount <= 8) {
			beginPageIndex = 1;
			endPageIndex = pageCount;
		}
		// 2、总页码数>8
		else {
			// 1，显示当前页附近的共8个页码（前3个+当前页+后4个）
			beginPageIndex = currentPage - 3;
			endPageIndex = currentPage + 4;
			// 2，前面不足3个页码时，显示前8个页码
			if (beginPageIndex < 1) {
				beginPageIndex = 1;
				endPageIndex = 8;
			}
			// 3，后面不足4个页码时，显示后8个页码
			else if (endPageIndex > pageCount) {
				endPageIndex = pageCount;
				beginPageIndex = pageCount - 7; // 因为显示时包含两个边界，所以这里要减7。
			}
		}
		StringBuffer buffer = new StringBuffer();
		if (currentPage == 1) {
			buffer.append("<a href='javascript:void(0)'>&lt;&lt;</a>&nbsp;&nbsp;");
		} else {
			buffer.append("<a href='" + url
					+ "/job/findAllJobs.action?currentPage="
					+ (currentPage - 1) + "'>&lt;&lt;</a>&nbsp;&nbsp;");
		}
		for (int i = beginPageIndex; i <= endPageIndex; i++) {
			buffer.append("<a href='" + url
					+ "/job/findAllJobs.action?currentPage=" + i + "'>" + i
					+ "</a>");
		}
		if (currentPage == pageCount) {
			buffer.append("&nbsp;&nbsp;<a href='javascript:void(0)'>&gt;&gt;</a>");
		} else {
			buffer.append("&nbsp;&nbsp;<a href='" + url
					+ "/job/findAllJobs.action?currentPage="
					+ (currentPage + 1) + "'>&gt;&gt;</a>");
		}
		this.links = buffer.toString();
	}

	public List getRecordList() {
		return recordList;
	}

	public void setRecordList(List recordList) {
		this.recordList = recordList;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public int getBeginPageIndex() {
		return beginPageIndex;
	}

	public void setBeginPageIndex(int beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}

	public int getEndPageIndex() {
		return endPageIndex;
	}

	public void setEndPageIndex(int endPageIndex) {
		this.endPageIndex = endPageIndex;
	}

	public String getLinks() {
		return links;
	}

	public void setLinks(String links) {
		this.links = links;
	}

	public int getPageNums() {
		return pageNums;
	}

	public void setPageNums(int pageNums) {
		this.pageNums = pageNums;
	}

}
