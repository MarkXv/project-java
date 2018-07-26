package com.wn.web.pojo;

import com.wn.common.po.BaseEntity;

/**
 * Created by Administrator on 2017/10/19.
 */
public class UserInfo extends BaseEntity {

	private String userInfoId; // 用户ID；
	private String name; // 真实姓名
	private String cardNo; // 身份证号
	private String birthday; // 生日
	private String gender; // 性别
	private String telephone; // 联系方式
	private String email; // 邮箱

	public String getUserInfoId() {
		return userInfoId;
	}

	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserInfo{" + "userInfoId='" + userInfoId + '\'' + ", name='" + name + '\'' + ", cardNo='" + cardNo
				+ '\'' + ", birthday='" + birthday + '\'' + ", gender='" + gender + '\'' + ", telephone='" + telephone
				+ '\'' + ", email='" + email + '\'' + '}';
	}
}
