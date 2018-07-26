package cn.powerun.springBoot.service;

import cn.powerun.springBoot.pojo.user.User;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserService {

    //查询所有用户
    public List<User> findAllList();

    //修改用户状态
    public void updateState(String[] userIds, int state);

    //删除用户
    public void deleteUser(String[] userIds);

    //保存用户信息
    public void saveUser(User user);

    //查看用户详细信息
    public User viewUser(String userId);

    //修改用户信息小
    public void updateUser(User user);

    //查询用户拥有的角色信息
    List<String> finduRoleList(String userId);

    /**
     * 保存用户角色表
     * @param userId
     * @param roleIds
     */
    void saveUserRole(String userId, String[] roleIds);

    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    User findUserByName(String username);

    /**
     * 根据用户id查找权限列表
     * @param userId
     * @return
     */
    List<String> findPrililegeInfoList(String userId);
}
