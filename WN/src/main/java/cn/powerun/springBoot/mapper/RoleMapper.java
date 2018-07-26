package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.user.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
public interface RoleMapper {
    //查找所有角色
    public  List<Role> findAllRole();

    //保存角色
    public void saveRole(Role role);

    //删除选中角色
    public void deleteRole(@Param("roleIds") String[] roleIds);

    //查找角色信息
    public Role findByRoleId(String roleId);

    //修改角色信息
    public void updateRole(Role role);

    //查找角色所拥有的模块
    List<String> findRoleModuleById(String roleId);

    //删除角色原有的模块，防止重复提交
    void deleteModule(String roleId);

    //保存角色对应的模块信息
    void saveRoleModule(@Param("roleId") String roleId, @Param("moduleId") String moduleId);
}
