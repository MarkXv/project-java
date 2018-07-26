package com.wn.web.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.Md5HashPassword;
import com.wn.common.service.HttpClientService;
import com.wn.common.vo.SysResult;
import com.wn.web.pojo.User;
import com.wn.web.pojo.UserInfo;

/**
 * Created by Administrator on 2017/10/19.
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private HttpClientService clientService;

	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);
	private static final ObjectMapper objectMapper = new ObjectMapper();

	@Override
	public List<User> findAllList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateState(String[] userIds, int state) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteUser(String[] userIds) {
		// TODO Auto-generated method stub

	}

	@Override
	public SysResult saveUser(User user) {
		String url = "http://sso.wn.com/user/regist";
		try {
			Map<String, String> params = new HashMap<String, String>();

			params.put("username", user.getUsername());
			params.put("password", user.getPassword());
			params.put("userId", user.getUserId());
			params.put("userInfo.email", user.getUserInfo().getEmail());
//			String userInfo = objectMapper.writeValueAsString(user.getUserInfo());
//			params.put("userInfo", userInfo);
			String sysResultJSON = clientService.doPost(url, params);
			SysResult sysResult = objectMapper.readValue(sysResultJSON, SysResult.class);
			return sysResult;
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return null;
	}

	@Override
	public User viewUser(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> finduRoleList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveUserRole(String userId, String[] roleIds) {
		// TODO Auto-generated method stub

	}

	@Override
	public User findUserByName(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> findPrililegeInfoList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SysResult login(String username, String password) {
		String url = "http://sso.wn.com/user/login?username=" + username + "&password=" + password;
		try {
			String sysResultJSON = clientService.doGet(url);
			if (!StringUtils.isEmpty(sysResultJSON)) {
				return objectMapper.readValue(sysResultJSON, SysResult.class);
			}

		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
		return SysResult.build(201, "跨域请求错误");
	}

	@Override
	public void logout(String ticket) {
		String url = "http://sso.wn.com/user/logout/" + ticket;
		try {
			String sysResultJSON = clientService.doGet(url);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
		}
	}

}
