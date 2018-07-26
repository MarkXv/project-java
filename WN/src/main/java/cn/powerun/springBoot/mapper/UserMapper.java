package cn.powerun.springBoot.mapper;

import cn.powerun.springBoot.pojo.user.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/10/19.
 */
public interface UserMapper {

    //查询所有用户
    public List<User> findAllList();

    //修改状态
    public void updateState(@Param("userIds") String[] userIds, @Param("state") int state);

    //删除用户
    public void deleteUser(@Param("userIds") String[] userIds);

    //保存用户
    public void saveUser(User user);

    //查看用户信息
    public  User viewUser(String userId);

    //修改用户信息
    public void updateUser(User user);

    //查询用户拥有的角色信息
    List<String> finduRoleList(String userId);

    /**
     * 根据userID删除对应的角色
     * @param userId
     */
    void deleteUserRole(String userId);

    /**
     * 根据用户id保存对应的角色信息
     * @param userId
     * @param roleId
     */
    void saveUserRole(@Param("userId") String userId, @Param("roleId") String roleId);

    /**
     * 根据用户名查找用户对象
     * @param username
     * @return
     */
    User findUserByName(String username);

    /**
     * 根据用户id查找对应的用户权限
     * @param userId
     * @return
     */
    List<String> findPrililegeInfoList(String userId);
}
