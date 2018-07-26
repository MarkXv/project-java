package cn.powerun.springBoot.controller;

import cn.powerun.springBoot.pojo.spot.Category;
import cn.powerun.springBoot.pojo.spot.Spots;
import cn.powerun.springBoot.service.CategoryService;
import cn.powerun.springBoot.service.SpotsService;
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
@RequestMapping("/backend/spots")
public class SpotsController {

    @Autowired
    private SpotsService spotsService;
    @Autowired
    private CategoryService categoryService;

    /**
     * 请求查看景点管理首页
     *
     * @return
     */
    @RequestMapping("/index")
    public String tospots(Model model) {
        List<Spots> spotsList = spotsService.findAll();
        List<Category> categoryList = categoryService.findAll();
        model.addAttribute("spotsList", spotsList);
        model.addAttribute("categoryList",categoryList);
        return "pages/backend/main/manage/spots/spotsframe";
    }

    /**
     * 请求查看页面
     *
     * @return
     */
    @RequestMapping("/view")
    public String tospotsview(Model model, String spotsId) {
        Spots spots = spotsService.findSpotsById(spotsId);
        model.addAttribute("spots", spots);
        return "pages/backend/main/manage/spots/baseOP/spotsview";
    }

    /**
     * 修改状态为禁用状态
     *
     * @param spotsIds
     * @return
     */
    @RequestMapping("/stop")
    public String toStop(@RequestParam("spotsId") String[] spotsIds) {
        Integer state = 0;
        //测试
        /*String[] spotsIds = {"1"};*/
        System.out.println(spotsIds);
        spotsService.updateState(spotsIds, state);
        return "redirect:/backend/spots/index";
    }

    /**
     * 修改状态为启用状态
     *
     * @param spotsIds
     * @return
     */
    @RequestMapping("/start")
    public String toStart(@RequestParam("spotsId") String[] spotsIds) {
        //测试
        /*String spotsId = "200";*/
        Integer state = 1;
        spotsService.updateState(spotsIds, state);
        return "redirect:/backend/spots/index";
    }

    /**
     * 请求景点添加界面
     *
     * @return
     */
    @RequestMapping("/add")
    public String tospotsAdd(Model model) {
        List<Category> categoryList = categoryService.findAll();
       /* for (Category c : categoryList) {
            System.out.println(c);
        }*/
        model.addAttribute("categoryList", categoryList);
        return "/pages/backend/main/manage/spots/baseOP/spotsadd";
    }

    //保存景点信息
    @RequestMapping("/save")
    public String saveSpots(Spots spots/*, String imgurls*/) {
        spotsService.saveSpots(spots);
        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }

    /*@RequestMapping("")*/

    /**
     * 请求修改页面
     */
    @RequestMapping("/update")
    public String tospotsupdate(Model model, String spotsId) {
        List<Category> categoryList = categoryService.findAll();
        Spots spots = spotsService.findSpotsById(spotsId);
        model.addAttribute("categoryList", categoryList);
        model.addAttribute("spots", spots);
        return "pages/backend/main/manage/spots/baseOP/spotsupdate";
    }

    //修改景点信息
    @RequestMapping("/updatespots")
    public String updateSpots(Spots spots, String imgurls) {
        spotsService.updateSpots(spots);
        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }
    //删除景点信息
    @RequestMapping("/delete")
    public String deleteSpots(@RequestParam("spotsId")String[] spotsIds, String imgurls) {
        spotsService.deleteSpots(spotsIds);
        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }

    /**
     * 请求景点-类别页面
     *
     * @return
     */
   /* @RequestMapping("/spotscategory")
    public String tospotscategory(Model model,String spotsId) throws JsonProcessingException {
        List<Category> categoryList = categoryService.findCategoryBySpotsId(spotsId);
        return "pages/backend/main/manage/spots/spots_category";
    }*/

}
