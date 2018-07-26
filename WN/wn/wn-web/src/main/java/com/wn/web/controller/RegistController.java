package com.wn.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wn.common.MailStrRandomUtil;
import com.wn.common.MailUtil;
import com.wn.common.vo.SysResult;
import com.wn.web.pojo.User;
import com.wn.web.pojo.UserInfo;
import com.wn.web.service.UserService;

import java.util.UUID;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
// @RequestMapping("/login")
public class RegistController {
	@Autowired
	private UserService userService;

	@RequestMapping("/sendmail")
	public String sendMail(String emailAddr, Model model, HttpSession session) throws MessagingException {
		System.out.println(emailAddr);
		// 生成6位随机字符串
		String text = MailStrRandomUtil.getRandomString(6);

		// 发送邮件
		MailUtil.send_mail(emailAddr, text);

		// 将验证码存入session域
		session.setAttribute("mailText", text);

		return text;
	}

	@RequestMapping("/user/regist")
	public String registIn(String username, String password, String mail, String mailNo, Model model,
			HttpSession session) {

		System.out.println("================"+username + ":" + password + ":" + mail + ":" + mailNo);
		// 判断注册是否为空
		if (StringUtils.isEmpty(username) || StringUtils.isEmpty(password) || StringUtils.isEmpty(mail)
				|| StringUtils.isEmpty(mailNo)) {

			// 为空
			model.addAttribute("errorInfo", "注册不能为空");

			// 重新注册
			return "/pages/regist";

		} else {// 不为空,校验数据
			User user = userService.findUserByName(username);
			if (user != null) {
				System.out.println("...");
				model.addAttribute("errorInfo", "用户名已存在");
				return "/pages/regist";
			} else {// user为空，则可以注册,并且用户输入了邮箱注册码
				String mailText = (String) session.getAttribute("mailText");

				if (mailNo.equals(mailText)) {// 验证码输入正确
					user = new User();
					user.setUserId(UUID.randomUUID().toString());
					user.setUsername(username);
					user.setPassword(password);
					UserInfo userInfo = new UserInfo();
					userInfo.setEmail(mail);
					user.setUserInfo(userInfo);

					SysResult sysResult= userService.saveUser(user);
					if(sysResult.getStatus()==200){
						
						model.addAttribute("errorInfo", "注册成功，请登录");
					}
					return "pages/login";
				} else {// 验证码不正确，重新注册
					model.addAttribute("errorInfo", "注册码错误，请重新注册");
					return "/pages/regist";
				}

			}

		}

	}

}
