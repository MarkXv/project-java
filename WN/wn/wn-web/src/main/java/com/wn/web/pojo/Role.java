package com.wn.web.pojo;

import com.wn.common.po.BaseEntity;

/**
 * Created by Administrator on 2017/10/19.
 */
public class Role extends BaseEntity {

	private String roleId; // 角色ID
	private String name; // 角色等级
	private Integer orderNo; // 排序号
	private String remark; // 说明
	private Boolean checked;

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public String getId() {
		return this.roleId;
	}

	@Override
	public String toString() {
		return "Role{" + "roleId='" + roleId + '\'' + ", name='" + name + '\'' + ", orderNo=" + orderNo + ", remark='"
				+ remark + '\'' + ", checked=" + checked + '}';
	}
}
