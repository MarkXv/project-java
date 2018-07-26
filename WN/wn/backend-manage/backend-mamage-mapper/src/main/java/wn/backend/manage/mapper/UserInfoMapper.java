package wn.backend.manage.mapper;


import org.apache.ibatis.annotations.Param;

import wn.backend.manage.pojo.UserInfo;

/**
 * Created by Administrator on 2017/10/19.
 */

public interface UserInfoMapper {

    //用户信息扩展表
    public void saveUserInfo(UserInfo info);

    //修改用户信息
    public void updateUserInfo(UserInfo info);

    //删除用户详细信息
    void deleteUser(@Param("userIds") String[] userIds);
}
