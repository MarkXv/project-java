package com.wn.web.pojo;

import java.util.List;

import com.wn.common.po.BaseEntity;

/**
 * Created by Administrator on 2017/10/19.
 */
public class User extends BaseEntity {

	private String userId; // 用户ID
	private String username; // 用户名
	private UserInfo userInfo; // 用户详细信息
	private String password; // 密码
	private Integer orderNo; // 排序号
	private Integer state; // 状态
	/* private List<Role> roleList; //角色对象数组 */
	/*
	 * public List<Role> getRoleList() { return roleList; }
	 * 
	 * public void setRoleList(List<Role> roleList) { this.roleList = roleList;
	 * }
	 */

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "User{" + "userId='" + userId + '\'' + ", username='" + username + '\'' + ", userInfo=" + userInfo
				+ ", password='" + password + '\'' + ", orderNo=" + orderNo + ", state=" + state + '}';
	}
}
