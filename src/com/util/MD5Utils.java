package com.util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 
 * 类描述：MD5算法加密工具类
 * 
 * @author: 张海彪
 * @date： 日期：2016-7-28 时间：上午9:23:25
 * @version 1.0
 */
public class MD5Utils {
	/**
	 * MD5算法加密密码
	 * 
	 * @param 原始密码
	 * @return md5加密后的密码
	 */
	public static String md5(String password) {
		byte[] secretBytes = null;
		try {
			secretBytes = MessageDigest.getInstance("md5").digest(
					password.getBytes());
		} catch (NoSuchAlgorithmException e) {
			throw new RuntimeException("");
		}
		return new BigInteger(1, secretBytes).toString(16);
	}
}
