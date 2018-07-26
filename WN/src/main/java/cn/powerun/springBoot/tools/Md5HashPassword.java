package cn.powerun.springBoot.tools;

import org.apache.shiro.crypto.hash.Md5Hash;


public class Md5HashPassword {


	public static String getMd5Hash(String password,String username){
		Md5Hash md5Hash = new Md5Hash(password, username, 1);
		System.out.println(md5Hash);
		return md5Hash.toString();
	}


	public static void main(String[] args) {

		//source:明文  salt盐     hashinterations  哈希的次数
		Md5Hash md5Hash = new Md5Hash("123", "admin", 1);
		getMd5Hash("123","admin");
		System.out.println(md5Hash);
	}
}
