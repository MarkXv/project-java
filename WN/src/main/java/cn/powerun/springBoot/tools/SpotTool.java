package cn.powerun.springBoot.tools;

/**
 * Created by Administrator on 2017/10/21.
 */
public class SpotTool {
    private String name;
    private String clickVlnum;
    private String categoryName;
    private Integer sumSpots;

    public SpotTool() {

    }

    public SpotTool(String name, String clickVlnum) {
        this.name = name;
        this.clickVlnum = clickVlnum;
    }

    public SpotTool(String name, String clickVlnum, String categoryName, Integer sumSpots) {
        this.name = name;
        this.clickVlnum = clickVlnum;
        this.categoryName = categoryName;
        this.sumSpots = sumSpots;
    }

    public String getClickVlnum() {
        return clickVlnum;
    }

    public void setClickVlnum(String clickVlnum) {
        this.clickVlnum = clickVlnum;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }


    public Integer getSumSpots() {
        return sumSpots;
    }

    public void setSumSpots(Integer sumSpots) {
        this.sumSpots = sumSpots;
    }

    @Override
    public String toString() {
        return "SpotTool{" +
                "name='" + name + '\'' +
                ", clickVlnum='" + clickVlnum + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", sumSpots='" + sumSpots + '\'' +
                '}';
    }
}
