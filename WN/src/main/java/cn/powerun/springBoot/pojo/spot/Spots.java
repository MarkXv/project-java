package cn.powerun.springBoot.pojo.spot;

import cn.powerun.springBoot.pojo.user.BaseEntity;

import java.util.List;

/**
 * 景点表
 */
public class Spots extends BaseEntity {
    private String spotsId;         //景点ID
    private String spotsName;       //景点名称
    private String ticketPrice;     //门票价
    private String remark;           //景点说明
    private String telephone;        //景区联系方式
    private String longitude;         //经度
    private String latitude;         //纬度
    private String traffic;          //交通
    private String station;          //地点
    private Integer orderNo;         //排序号
    private String openTime;         //开放时间
    private String addr;              //网址
    private Integer state;                //状态
    private List<Picture> pictureList; //景点的图片列表
    private Category category;          //景点的类别
    private Flow flow;                  //浏览量对象

    public Flow getFlow() {
        return flow;
    }

    public void setFlow(Flow flow) {
        this.flow = flow;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public void setPictureList(List<Picture> pictureList) {
        this.pictureList = pictureList;
    }

    public List<Picture> getPictureList() {

        return pictureList;
    }

    public String getSpotsId() {
        return spotsId;
    }

    public void setSpotsId(String spotsId) {
        this.spotsId = spotsId;
    }

    public String getSpotsName() {
        return spotsName;
    }

    public void setSpotsName(String spotsName) {
        this.spotsName = spotsName;
    }

    public String getTicketPrice() {
        return ticketPrice;
    }

    public void setTicketPrice(String ticketPrice) {
        this.ticketPrice = ticketPrice;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public String getLatitude() {
        return latitude;
    }

    public String getTraffic() {
        return traffic;
    }

    public void setTraffic(String traffic) {
        this.traffic = traffic;
    }

    public String getStation() {
        return station;
    }

    public void setStation(String station) {
        this.station = station;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public String getOpenTime() {
        return openTime;
    }

    public void setOpenTime(String openTime) {
        this.openTime = openTime;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Spots() {
    }

    public Spots(String spotsId, String spotsName, String ticketPrice, String remark, String telephone, String longitude, String latitude, String traffic, String station, Integer orderNo, String openTime, String addr, Integer state, List<Picture> pictureList, Category category, Flow flow) {
        this.spotsId = spotsId;
        this.spotsName = spotsName;
        this.ticketPrice = ticketPrice;
        this.remark = remark;
        this.telephone = telephone;
        this.longitude = longitude;
        this.latitude = latitude;
        this.traffic = traffic;
        this.station = station;
        this.orderNo = orderNo;
        this.openTime = openTime;
        this.addr = addr;
        this.state = state;
        this.pictureList = pictureList;
        this.category = category;
        this.flow = flow;
    }

    @Override
    public String toString() {
        return "Spots{" +
                "spotsId='" + spotsId + '\'' +
                ", spotsName='" + spotsName + '\'' +
                ", ticketPrice='" + ticketPrice + '\'' +
                ", remark='" + remark + '\'' +
                ", telephone='" + telephone + '\'' +
                ", longitude='" + longitude + '\'' +
                ", latitude='" + latitude + '\'' +
                ", traffic='" + traffic + '\'' +
                ", station='" + station + '\'' +
                ", orderNo=" + orderNo +
                ", openTime='" + openTime + '\'' +
                ", addr='" + addr + '\'' +
                ", state=" + state +
                ", pictureList=" + pictureList +
                ", category=" + category +
                ", flow=" + flow +
                '}';
    }

    //TODO
    public String getClickValume() {
        return clickValume;
    }
    private String clickValume; //点击量
    public void setClickValume(String clickValume) {
        this.clickValume = clickValume;
    }
    //TODO
    private String tradingValume; //点击量
    //TODO
    private String imgurl; //点击量

    public String getTradingValume() {
        return tradingValume;
    }

    public void setTradingValume(String tradingValume) {
        this.tradingValume = tradingValume;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }
}
