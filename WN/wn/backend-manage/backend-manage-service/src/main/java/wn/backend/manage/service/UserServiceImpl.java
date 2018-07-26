package wn.backend.manage.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wn.backend.manage.mapper.UserInfoMapper;
import wn.backend.manage.mapper.UserMapper;
import wn.backend.manage.pojo.User;
import wn.backend.manage.pojo.UserInfo;
import wn_backend.backend_common.Md5HashPassword;

import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserInfoMapper userInfoMapper;


    public List<User> findAllList() {

        return userMapper.findAllList();

    }

    public void updateState(String[] userIds, int state) {

        userMapper.updateState(userIds,state);

    }


    public void deleteUser(String[] userIds) {
        userMapper.deleteUser(userIds);
        userInfoMapper.deleteUser(userIds);
    }

    public void saveUser(User user) {
        String userId = UUID.randomUUID().toString();

        System.out.println("传进来的"+user.getPassword());

        //对密码进行md5加密后入库
        String Md5Password = Md5HashPassword.getMd5Hash(user.getPassword(),user.getUsername());
        user.setUserId(userId);
        user.setPassword(Md5Password);
        System.out.println("设进去的"+user.getPassword());
        user.setCreateTime(new Date());
        user.setUpdateTime(user.getCreateTime());

        UserInfo info = user.getUserInfo();

        info.setUserInfoId(userId);
        info.setCreateTime(user.getCreateTime());
        info.setUpdateTime(user.getUpdateTime());

        //先入主表后从表
        userMapper.saveUser(user);
        userInfoMapper.saveUserInfo(info);
    }

    public User viewUser(String userId) {
        return userMapper.viewUser(userId);
    }


    public void updateUser(User user) {
        user.setUpdateTime(new Date());

        UserInfo info = user.getUserInfo();

        info.setUserInfoId(user.getUserId());

        info.setUpdateTime(user.getUpdateTime());

        System.out.println(user);
        System.out.println(user.getUserInfo());

        userMapper.updateUser(user);
        userInfoMapper.updateUserInfo(info);

    }

    public List<String> finduRoleList(String userId) {
        return userMapper.finduRoleList(userId);
    }

    public void saveUserRole(String userId, String[] roleIds) {

        //防止重复提交，在此先删除用户对应的角色
        userMapper.deleteUserRole(userId);

        for (String roleId:roleIds) {
            userMapper.saveUserRole(userId,roleId);
        }
    }

    @Override
    public User findUserByName(String username) {
        return userMapper.findUserByName(username);
    }

    @Override
    public List<String> findPrililegeInfoList(String userId) {
        return userMapper.findPrililegeInfoList(userId);
    }


}
