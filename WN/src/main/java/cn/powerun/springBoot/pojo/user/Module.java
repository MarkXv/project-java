package cn.powerun.springBoot.pojo.user;

/**
 * Created by Administrator on 2017/10/19.
 */
public class Module extends BaseEntity {

    private String moduleId;        //模块ID
    private Module parentModule;        //父模块ID
    private String name;             //菜单名称
    private String ctype;            //类型
    private Integer state;           //状态  0 停用   1启用
    private Integer orderNo;         //排序号
    private String remark;           //说明
    private Boolean checked;

    public String getModuleId() {
        return moduleId;
    }

    public void setModuleId(String moduleId) {
        this.moduleId = moduleId;
    }

    public Module getParentModule() {
        return parentModule;
    }

    public void setParentModule(Module parentModule) {
        this.parentModule = parentModule;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCtype() {
        return ctype;
    }

    public void setCtype(String ctype) {
        this.ctype = ctype;
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

    public String getId(){
        return this.moduleId;
    }

    public String getpId(){
        if(parentModule!=null){
            return "parentModule.moduleId";
        }
        return "";
    }

    public Boolean getChecked() {
        return checked;
    }

    public void setChecked(Boolean checked) {
        this.checked = checked;
    }

    @Override
    public String toString() {
        return "Module{" +
                "moduleId='" + moduleId + '\'' +
                ", parentModule=" + parentModule +
                ", name='" + name + '\'' +
                ", ctype='" + ctype + '\'' +
                ", state=" + state +
                ", orderNo=" + orderNo +
                ", remark='" + remark + '\'' +
                '}';
    }
}
