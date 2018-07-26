package wn.backend.manage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import wn.backend.manage.pojo.Picture;
import wn.backend.manage.pojo.Spots;
import wn.backend.manage.pojo.User;
import wn.backend.manage.service.HomeService;
import wn.backend.manage.service.PictureService;
import wn.backend.manage.service.SpotsService;
import wn.backend.manage.service.UserService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by LYJ on 2017/10/17.
 */
@Controller
public class HomeController {

    @Autowired
    private HomeService homeService;
    @Autowired
    private SpotsService spotsService;
    @Autowired
    private PictureService pictureService;
    @Autowired
    private UserService userService;

    
    @RequestMapping("/home")
    public String toIndex(){
    	return "pages/backend/index";
    }

    /**
     * 转向景点管理界面
     * @return
     */
    @RequestMapping("/tospotsManage")
    public String tospotsManage(){
        return "redirect:/backend/spots/index";
    }

    /**
     * 转向景点管理界面
     * @return
     */
    @RequestMapping("/tosysadmin")
    public String tosysadmin(){
//        转向用户的首页
        return "redirect:/backend/sysadmin/user/index";
    }
    @RequestMapping("/tochart")
    public String tochart(){
        return "redirect:/backend/chart/index";
    }

    @RequestMapping("/logout")
    public String logout(){
//    	homeService.logout();
    	return "redirect:/login";
    }
}
