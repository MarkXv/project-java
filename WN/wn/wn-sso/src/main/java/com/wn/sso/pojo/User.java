package com.wn.sso.pojo;

import java.util.Date;

import com.wn.common.po.BasePojo;

public class User{

    private String userId;          //鐢ㄦ埛ID
    private String username;        //鐢ㄦ埛鍚�
    private UserInfo userInfo;      //鐢ㄦ埛璇︾粏淇℃伅
    private String password;        //瀵嗙爜
    private Integer orderNo;        //鎺掑簭鍙�
    private Integer state;          //鐘舵�
    
    private Date createTime;
 	private Date updateTime;
 	private String createBy;
 	private String updateBy;
  	
/*    private List<Role> roleList;          //瑙掕壊瀵硅薄鏁扮粍*/
/*
    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }*/

   
	

	public String getUserId() {
        return userId;
    }

    public final Date getCreateTime() {
		return createTime;
	}

	public final void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public final Date getUpdateTime() {
		return updateTime;
	}

	public final void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public final String getCreateBy() {
		return createBy;
	}

	public final void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public final String getUpdateBy() {
		return updateBy;
	}

	public final void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
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
        return "User{" +
                "userId='" + userId + '\'' +
                ", username='" + username + '\'' +
                ", userInfo=" + userInfo +
                ", password='" + password + '\'' +
                ", orderNo=" + orderNo +
                ", state=" + state +
                '}';
    }
}
