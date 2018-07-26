package com.wn.common.po;


import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2017/10/19.
 */
public abstract class BaseEntity implements Serializable{

    private String createBy;    //创建人
    private String updateBy;    //修改人
    private Date createTime;    //创建时间
    private Date updateTime;    //修改时间

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
}
