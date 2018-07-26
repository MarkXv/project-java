package cn.powerun.springBoot.controller;

import cn.powerun.springBoot.pojo.user.User;
import cn.powerun.springBoot.tools.Md5HashPassword;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
//@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/tologin")
    public String login(){
        //跳转到登录页面
        return "/pages/login";
    }

    @RequestMapping("/login")
    public String loginIn(String username, String password, Model model, HttpSession session){
        //判断用户名和密码是否为空
        if(StringUtils.isEmpty(username) || StringUtils.isEmpty(password)){
            //为空
            model.addAttribute("errorInfo","用户名或密码不能为空");
            //跳转到用户登录页面，重新登录
            return "/pages/login";

        }
        //通过subject进行登录操作
        Subject subject = SecurityUtils.getSubject();
        //获取shiro安全令牌,用户名和密码的填写是否错误将交给shiro判断

        //密码加密处理后让shiro比较数据库中的真实密码
        String MD5Password = Md5HashPassword.getMd5Hash(password,username);

        System.out.println("登录密码"+password);
        System.out.println("登录密文"+MD5Password);
        UsernamePasswordToken token = new UsernamePasswordToken(username,MD5Password);

        try {
            subject.login(token);//拿着令牌进行登录，判断交给realm
            //判断成功后执行下一步
            //获取用户真实信息

            User user = (User) subject.getPrincipal();
            //将用户信息存入session，方便记住用户名和密码
            session.setAttribute("userSession",user);

            //重定向到前台首页

            return  "redirect:/";

        }catch (AuthenticationException e){
            e.printStackTrace();
            //表示realm判断与真实密码不匹配，即不正确
            model.addAttribute("errorInfo","用户名和密码不正确");
            return "/pages/login";
        }


    }

    @RequestMapping("/logout")
    public String loginOut(HttpSession httpSession){

        //将user对象从session域中删除
        httpSession.removeAttribute("userSession");
        //页面应该跳转到登陆页面
        return "/pages/login";
    }


}
