package wn.backend.manage.controller;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import wn.backend.manage.pojo.Module;
import wn.backend.manage.pojo.Role;
import wn.backend.manage.pojo.User;
import wn.backend.manage.service.ModuleService;
import wn.backend.manage.service.RoleService;
import wn.backend.manage.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
@RequestMapping("/backend/sysadmin/user")
public class userController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("/index")
    public String tosysadmin(Model model){

        //查询所有用户
        List<User> userList = userService.findAllList();

        model.addAttribute("userList", userList);

        //查询所有角色信息
        List<Role> roleList = roleService.findAllRole();

        model.addAttribute("roleList",roleList);

        //查询所有模块信息
        List<Module> moduleList = moduleService.findAllModule();

        model.addAttribute("moduleList",moduleList);

        return "pages/backend/main/manage/sysadmin/index";

    }

    @RequestMapping("/delete")
    public String deleteUser(@RequestParam("userId") String[] userIds){

        userService.deleteUser(userIds);

        return "redirect:/backend/sysadmin/user/index";

    }

    //跳转到新增用户页面
    @RequestMapping("/add")
    public String toadd(){
        return "pages/backend/main/manage/sysadmin/user/useradd";
    }

    //保存用户信息
    @RequestMapping("/save")
    public String saveUser(User user){

        userService.saveUser(user);

        return "redirect:/backend/sysadmin/user/index";

    }

    //跳转用户修改页面，并准备用户信息
    @RequestMapping("/update")
    public String toupdate(String userId,Model model){

        //获取用户信息
        User user = userService.viewUser(userId);

        model.addAttribute("user",user);

        return "pages/backend/main/manage/sysadmin/user/userupdate";

    }

    @RequestMapping("/userupdate")
    public String userupdate(User user){



        userService.updateUser(user);

        return "redirect:/backend/sysadmin/user/index";

    }

    //查看用户详细信息
    @RequestMapping("/view")
    public String toview( String userId,Model model){

        User user = userService.viewUser(userId);

        model.addAttribute("user", user);

        return "pages/backend/main/manage/sysadmin/user/userview";
    }


    @RequestMapping("/userrole")
    public String torolemodule(String userId,Model model) throws JsonProcessingException {
        //用于显示所有复选框的角色
        List<Role> roleList=roleService.findAllRole();
        for (Role role:roleList) {
            System.out.println(role);
        }
        //根据userID查询用户已经拥有的角色信息
        List<String> uRoleList = userService.finduRoleList(userId);

        for(Role role : roleList){
            if(uRoleList.contains(role.getRoleId())){
                //证明用户已经拥有该角色信息，需要将checked属性设置为true
                role.setChecked(true);
            }
        }

        ObjectMapper objectMapper = new ObjectMapper();
        String zTreeJSON=objectMapper.writeValueAsString(roleList);
       /* System.out.println("zTreeJSON"+zTreeJSON);*/
        model.addAttribute("zTreeJSON",zTreeJSON);
        model.addAttribute("userId",userId);
        return "pages/backend/main/manage/sysadmin/user/userrole";
    }

    /**
     * 保存用户角色
     * @return
     */
    @RequestMapping("/saveUserRole")
    public String saveUserRole(String userId,String[] roleIds){

        userService.saveUserRole(userId,roleIds);
        return "redirect:/backend/sysadmin/user/index";
    }

    @RequestMapping("/userInfo")
    public String toUserInfo(String userId,Model model){
        User  user=userService.viewUser(userId);
        model.addAttribute("user",user);
        return "/pages/backend/main/manage/sysadmin/user/userInfo";
    }

}
