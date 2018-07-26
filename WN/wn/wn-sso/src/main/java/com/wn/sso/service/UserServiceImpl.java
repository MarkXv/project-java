package com.wn.sso.service;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.sso.mapper.UserMapper;
import com.wn.sso.pojo.User;
import com.wn.sso.pojo.UserInfo;

import redis.clients.jedis.JedisCluster;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private JedisCluster jedisCluster;

	private static final ObjectMapper objectMapper = new ObjectMapper();

	@Override
	public String saveUser(User user) {
		user.setCreateTime(new Date());;
		user.setPassword(DigestUtils.md5Hex(user.getPassword()));
		user.setUpdateTime(user.getCreateTime());
		
		user.getUserInfo().setCreateTime(user.getCreateTime());
		user.getUserInfo().setUpdateTime(user.getUpdateTime());
		user.getUserInfo().setUserInfoId(user.getUserId());
		user.getUserInfo().setBirthday("");
		user.getUserInfo().setCardNo("");
		user.getUserInfo().setGender("");
		user.getUserInfo().setName("");
		user.getUserInfo().setTelephone("");
		
		userMapper.saveUserInfo(user.getUserInfo());
		userMapper.saveUser(user);
		return user.getUsername();
	}

	@Override
	public String findUserByU_P(String username, String password) {
		String passwordMd5 = DigestUtils.md5Hex(password);
		User user = userMapper.findUserByU_P(username, passwordMd5);
		try {
			if (user != null) {
				String temp =  System.currentTimeMillis() + username+password;
				String ticket = "WN_TICKET_" +DigestUtils.md5Hex(temp);

				String userJSON = objectMapper.writeValueAsString(user);
				jedisCluster.set(ticket, userJSON);
				return ticket;
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public String findUserByticket(String ticket) {
		String userJSON = jedisCluster.get(ticket);
		if (StringUtils.isEmpty(userJSON)) {
			return null;
		} else {
			return userJSON;
		}
	}

	@Override
	public void logout(String ticket) {
			jedisCluster.del(ticket);
	}

}
