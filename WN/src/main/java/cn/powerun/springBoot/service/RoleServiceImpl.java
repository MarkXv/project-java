package cn.powerun.springBoot.service;

import cn.powerun.springBoot.mapper.RoleMapper;
import cn.powerun.springBoot.pojo.user.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/20.
 */
@Service
public class RoleServiceImpl implements RoleService{

    @Autowired
    private RoleMapper roleMapper;


    public List<Role> findAllRole() {
        return roleMapper.findAllRole();
    }


    public void saveRole(Role role) {
       /* String roleId = UUID.randomUUID().toString();
        role.setRoleId(roleId);*/
        role.setCreateTime(new Date());
        role.setUpdateTime(role.getCreateTime());

        System.out.println(role);

        roleMapper.saveRole(role);
    }


    public void deleteRole(String[] roleIds) {


        System.out.println(Arrays.toString(roleIds));

        roleMapper.deleteRole(roleIds);
    }


    public Role findByRoleId(String roleId) {
        return roleMapper.findByRoleId(roleId);
    }


    public void updateRole(Role role) {
        role.setUpdateTime(new Date());

        roleMapper.updateRole(role);
    }

    public List<String> findRoleModuleById(String roleId) {
        return roleMapper.findRoleModuleById(roleId);
    }

    public void saveRoleModule(String roleId, String[] moduleIds) {

        //防止重复提交，在此之前先删掉原来的模块
        roleMapper.deleteModule(roleId);

        for(String moduleId : moduleIds){
            roleMapper.saveRoleModule(roleId,moduleId);

        }
    }
}
