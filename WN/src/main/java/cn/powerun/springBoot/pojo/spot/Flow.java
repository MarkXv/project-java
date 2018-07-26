package cn.powerun.springBoot.pojo.spot;

import cn.powerun.springBoot.pojo.user.BaseEntity;

/**
 * Created by Administrator on 2017/10/19.
 */
//流量表
public class Flow extends BaseEntity{
    private String spotsId;     //景点ID；
    private String sportName;   //景点名称
    private String city;         //城市
    private Integer clickValume;   //点击量
    private Integer tradingValume;  //成交量

    public String getSpotsId() {
        return spotsId;
    }

    public void setSpotsId(String spotsId) {
        this.spotsId = spotsId;
    }

    public String getSportName() {
        return sportName;
    }

    public void setSportName(String sportName) {
        this.sportName = sportName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public Integer getClickValume() {
        return clickValume;
    }

    public void setClickValume(Integer clickValume) {
        this.clickValume = clickValume;
    }

    public Integer getTradingValume() {
        return tradingValume;
    }

    public void setTradingValume(Integer tradingValume) {
        this.tradingValume = tradingValume;
    }

    @Override
    public String toString() {
        return "Flow{" +
                "spotsId='" + spotsId + '\'' +
                ", sportName='" + sportName + '\'' +
                ", city='" + city + '\'' +
                ", clickValume=" + clickValume +
                ", tradingValume=" + tradingValume +
                '}';
    }
}
