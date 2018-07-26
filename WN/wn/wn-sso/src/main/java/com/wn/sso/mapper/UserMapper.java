package com.wn.sso.mapper;

import org.apache.ibatis.annotations.Param;

import com.wn.sso.pojo.User;
import com.wn.sso.pojo.UserInfo;


public interface UserMapper extends com.wn.common.mapper.SysMapper<User> {

	int findCheckUser(@Param("param")String param,@Param("collum")String collum);

	User findUserByU_P(@Param("username")String username, @Param("password")String passwordMd5);

	void saveUser(User user);

	void saveUserInfo(UserInfo userInfo);

}
