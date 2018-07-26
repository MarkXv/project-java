package com.wn.sso.service;

import com.wn.sso.pojo.User;
import com.wn.sso.pojo.UserInfo;

public interface UserService {

	String saveUser(User user);

	String findUserByU_P(String username, String password);

	String findUserByticket(String ticket);

	void logout(String ticket);

}
