package com.wn.common;

import org.apache.commons.codec.digest.DigestUtils;

public class Md5HashPassword {

	public static String getMd5Hash(String password) {
		/*
		 * Md5Hash md5Hash = new Md5Hash(password, username, 1);
		 * System.out.println(md5Hash);
		 */
		// 1.将密码进行MD5加密
		String md5Password = DigestUtils.md5Hex(password);
		return md5Password;
	}

	public static void main(String[] args) {

		// source:明文 salt盐 hashinterations 哈希的次数
	/*	Md5Hash md5Hash = new Md5Hash("123", "admin", 1);
		getMd5Hash("123", "admin");
		System.out.println(md5Hash);*/
	}
}
