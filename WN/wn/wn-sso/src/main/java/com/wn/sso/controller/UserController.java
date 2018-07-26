package com.wn.sso.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wn.common.util.CookieUtils;
import com.wn.common.vo.SysResult;
import com.wn.sso.pojo.User;
import com.wn.sso.pojo.UserInfo;
import com.wn.sso.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	private static final Logger logger=Logger.getLogger(UserController.class);
	
	@RequestMapping("/regist")
	@ResponseBody
	public SysResult toRegister(User user){
		try {
			String username=userService.saveUser(user);
			return SysResult.oK(username);
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return SysResult.build(201, "注册失败");
		}
	}
	
	@RequestMapping("/login")
	@ResponseBody
	public SysResult login(String username,String password,String callback,HttpServletRequest request,
			HttpServletResponse response){
		String ticket=userService.findUserByU_P(username,password);
		if(!StringUtils.isEmpty(ticket)){
//			CookieUtils.setCookie(request, response, "WN_TICKET", ticket);
//			MappingJacksonValue jacksonValue=new MappingJacksonValue(SysResult.oK());
//			jacksonValue.setJsonpFunction(callback);
			return SysResult.oK(ticket);
		}else{
			return SysResult.build(201, "用户名或密码错误");
		}
	}
	
	@RequestMapping("/logout/{ticket}")
	@ResponseBody
	public SysResult logout(@PathVariable String ticket,HttpServletRequest request,
			HttpServletResponse response){
		try {
			userService.logout(ticket);
			CookieUtils.deleteCookie(request, response, "WN_TICKET");
			return SysResult.oK();
		} catch (Exception e) {
			e.printStackTrace();
			logger.error(e.getMessage());
			return SysResult.build(201, "登出失败");
		}
	}
	
	@RequestMapping("/getInfo/{ticket}")
	@ResponseBody
	public Object getTicket(@PathVariable String ticket,String callback){
		
		String userJSON=userService.findUserByticket(ticket);
		
		if(StringUtils.isEmpty(userJSON)){
			return SysResult.build(201, "没有查询到用信息");
		}else{
			SysResult sysResult=SysResult.oK(userJSON);
			MappingJacksonValue jacksonValue=new MappingJacksonValue(sysResult);
			jacksonValue.setJsonpFunction(callback);
			return jacksonValue;
		}
		
	}
}
