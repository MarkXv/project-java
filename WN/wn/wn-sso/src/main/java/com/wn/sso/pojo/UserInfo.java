package com.wn.sso.pojo;

import java.util.Date;

import com.wn.common.po.BasePojo;

/**
 * Created by Administrator on 2017/10/19.
 */
public class UserInfo{

    private String userInfoId;       //鐢ㄦ埛ID锛�
    private String name;              //鐪熷疄濮撳悕
    private String cardNo;            //韬唤璇佸彿
    private String birthday;         //鐢熸棩
    private String gender;            //鎬у埆
    private String telephone;         //鑱旂郴鏂瑰紡
    private String email;             //閭
    
    private Date createTime;
	private Date updateTime;
	private String createBy;
	private String updateBy;
	
	

    public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

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
        return "UserInfo{" +
                "userInfoId='" + userInfoId + '\'' +
                ", name='" + name + '\'' +
                ", cardNo='" + cardNo + '\'' +
                ", birthday='" + birthday + '\'' +
                ", gender='" + gender + '\'' +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
