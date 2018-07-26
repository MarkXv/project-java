package cn.powerun.springBoot.service;

import cn.powerun.springBoot.pojo.user.Role;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
public interface RoleService {
    //查找所有角色
    public List<Role> findAllRole();

    //保存角色信息
    public void saveRole(Role role);

    //删除角色
    public void deleteRole(String[] roleIds);

    //获取角色信息
    public Role findByRoleId(String roleId);

    //修改角色信息
    public void updateRole(Role role);

    //查找角色对应的模块信息
    List<String> findRoleModuleById(String roleId);

    //保存角色的模块
    void saveRoleModule(String roleId, String[] moduleIds);
}
