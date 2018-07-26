package wn.backend.manage.pojo;

/**
 * Created by Administrator on 2017/10/19.
 */
//景点类别表
public class Category extends BaseEntity {

    private String categoryId;      //类别id
    private String categoryName;    //类别名称
    private Integer orderNo;        //排序号
    private Integer state;           //状态

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
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
        return "Category{" +
                "categoryId='" + categoryId + '\'' +
                ", categoryName='" + categoryName + '\'' +
                ", orderNo=" + orderNo +
                ", state=" + state +
                '}';
    }
}
