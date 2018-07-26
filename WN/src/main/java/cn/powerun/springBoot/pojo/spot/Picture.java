package cn.powerun.springBoot.pojo.spot;

import cn.powerun.springBoot.pojo.user.BaseEntity;

/**
 * Created by Administrator on 2017/10/19.
 */
//图片表
public class Picture extends BaseEntity {

    private String pictureId;       //图片Id
    private String imgurl;          //图片路径
    private Integer state;              //图片默认
    private Integer orderNo;        //排序号
    private String remark;          //图片说明

    public String getPictureId() {
        return pictureId;
    }

    public void setPictureId(String pictureId) {
        this.pictureId = pictureId;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
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

    @Override
    public String toString() {
        return "Picture{" +
                "pictureId='" + pictureId + '\'' +
                ", imgurl='" + imgurl + '\'' +
                ", state=" + state +
                ", orderNo=" + orderNo +
                ", remark='" + remark + '\'' +
                '}';
    }
}
