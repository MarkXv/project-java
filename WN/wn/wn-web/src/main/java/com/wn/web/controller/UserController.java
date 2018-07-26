package com.wn.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.init.ScriptUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.wn.common.util.CookieUtils;
import com.wn.common.vo.SysResult;
import com.wn.web.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	private static final ObjectMapper obejctMapper = new ObjectMapper();
	private static final Logger logger = Logger.getLogger(UserController.class);

	@RequestMapping("/login")
	public String login(Model model, String username, String password, HttpServletResponse response,
			HttpServletRequest request) {
		SysResult sysResult = userService.login(username, password);
		String ticket = (String) sysResult.getData();
		if (!StringUtils.isEmpty(ticket)) {
			CookieUtils.setCookie(request, response, "WN_TICKET", ticket);
			return "redirect:/home";
		} else {
			model.addAttribute("errorInfo", sysResult.getMsg());
			return "pages/login";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpServletResponse response,
			HttpServletRequest request) {
		String ticket=CookieUtils.getCookieValue(request, "WN_TICKET");
		// 移除redis
		userService.logout(ticket);
		CookieUtils.deleteCookie(request, response, "WN_TICKET");
		return "redirect:/home";
	}
}
