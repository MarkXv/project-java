package cn.powerun.springBoot.controller;

import cn.powerun.springBoot.pojo.user.Module;
import cn.powerun.springBoot.pojo.user.Role;
import cn.powerun.springBoot.pojo.user.User;
import cn.powerun.springBoot.service.ModuleService;
import cn.powerun.springBoot.service.RoleService;
import cn.powerun.springBoot.service.UserService;
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
@RequestMapping("/backend/sysadmin/module")
public class moduleController {

    @Autowired
    private ModuleService moduleService;
    @Autowired
    private RoleService roleService;

    @Autowired
    private UserService userService;

    //跳转新增模块页面
    @RequestMapping("/add")
    public String toadd(Model model){
        List<Module> parentModuleList = moduleService.findAllModule();
        model.addAttribute("parentModuleList",parentModuleList);
        return "/pages/backend/main/manage/sysadmin/module/moduleadd";
    }
    @RequestMapping("/save")
    public String save(Module module){

        /*System.out.println(module);*/

        moduleService.saveModule(module);

        return "redirect:/backend/sysadmin/user/index";
    }

    @RequestMapping("/stop")
    public String toStop(@RequestParam("moduleId") String[] moduleIds) {
        Integer state = 0;
        moduleService.updateState(moduleIds, state);
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/start")
    public String toStart(@RequestParam("moduleId")String[] moduleIds) {
        Integer state = 1;
        moduleService.updateState(moduleIds, state);
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/update")
    public String toupdate(Model model,String moduleId){
        Module module = moduleService.findModuleById(moduleId);
        List<Module> parentModuleList = moduleService.findModuleExpId(moduleId);
        model.addAttribute("parentModuleList",parentModuleList);
        model.addAttribute("module",module);
        return "/pages/backend/main/manage/sysadmin/module/moduleupdate";
    }
    @RequestMapping("/updatemodule")
    public String uodate(Module module){
        System.out.println(module.getModuleId());
        moduleService.updateModule(module);
        return "redirect:/backend/sysadmin/user/index";
    }


    @RequestMapping("/view")
    public String toview(String moduleId, Model model){
        System.out.println(moduleId);

        Module module = moduleService.findModuleById(moduleId);

        model.addAttribute("module",module);

        //查询所有用户
        List<User> userList = userService.findAllList();

        model.addAttribute("userList", userList);

        //查询所有角色信息
        List<Role> roleList = roleService.findAllRole();

        model.addAttribute("roleList",roleList);

        return "pages/backend/main/manage/sysadmin/module/moduleview";
    }

    @RequestMapping("/delete")
    public String deleteModule(@RequestParam("moduleId") String[] moduleIds){


        moduleService.deleteModule(moduleIds);

        return "redirect:/backend/sysadmin/user/index";

    }






}
