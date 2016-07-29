package com.exception;

/**
 * 类描述：系统自定义异常类，针对预期的异常，需要在程序中抛出此类的异常
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-29 时间：下午1:37:53
 * @version 1.0
 */
@SuppressWarnings("serial")
public class MyException extends Exception {
	// 异常信息
	private String message;

	/**
	 * @param string
	 */
	public MyException(String message) {
		super(message);
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
