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
@RequestMapping("/backend/sysadmin/role")
public class roleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private UserService userService;

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("/delete")
    public String deleteRole(@RequestParam("roleId") String[] roleIds){

         roleService.deleteRole(roleIds);

        return "redirect:/backend/sysadmin/user/index";

    }

    //跳转角色新增页面
    @RequestMapping("/add")
    public String toadd(){

        return "pages/backend/main/manage/sysadmin/role/roleadd";
    }

    @RequestMapping("/save")
    public String saveRole(Role role){

        roleService.saveRole(role);

        return "redirect:/backend/sysadmin/user/index";
    }

    //跳转角色修改页面
    @RequestMapping("/update")
    public String toupdate(String roleId,Model model){

        Role role = roleService.findByRoleId(roleId);

        System.out.println(role);

        model.addAttribute("role",role);

        return "pages/backend/main/manage/sysadmin/role/roleupdate";
    }

    //修改角色信息
    @RequestMapping("/roleupdate")
    public String roleupdate(Role role){

        System.out.println(role);

        roleService.updateRole(role);


        return "redirect:/backend/sysadmin/user/index";

    }

    //查看角色信息
    @RequestMapping("/view")
    public String toview(String roleId,Model model){

        Role role = roleService.findByRoleId(roleId);

        model.addAttribute("role",role);

        //查询所有用户
        List<User> userList = userService.findAllList();

        model.addAttribute("userList", userList);

        //查询所有模块信息
        List<Module> moduleList = moduleService.findAllModule();

        model.addAttribute("moduleList",moduleList);



        return "pages/backend/main/manage/sysadmin/role/roleview";
    }

    @RequestMapping("/rolemodule")
    public String torolemodule(String roleId,Model model) throws JsonProcessingException {

        //查询所有的模块信息
        List<Module> moduleList =  moduleService.findAllModule();

        //角色所拥有的模块信息
        List<String> rModuleList = roleService.findRoleModuleById(roleId);
        for(Module module1 : moduleList){

            if(rModuleList.contains(module1.getModuleId())){
                module1.setChecked(true);
            }

        }

        ObjectMapper objectMapper = new ObjectMapper();
        String zTreeJSON = objectMapper.writeValueAsString(moduleList);

        model.addAttribute("zTreeJSON",zTreeJSON);
        model.addAttribute("roleId",roleId);
        return "pages/backend/main/manage/sysadmin/role/rolemodule";
    }

    @RequestMapping("/saveRoleModule")
    public String saveRoleModule(String roleId,String[] moduleIds){

        System.out.println(roleId);

        for (String moduleId:moduleIds) {
            System.out.println(moduleId);
        }

        roleService.saveRoleModule(roleId,moduleIds);

        return "redirect:/backend/sysadmin/user/index";

    }

}
