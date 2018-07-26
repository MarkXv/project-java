package cn.powerun.springBoot.controller;

import cn.powerun.springBoot.pojo.spot.Category;
import cn.powerun.springBoot.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Administrator on 2017/10/20.
 */
@Controller
@RequestMapping("/backend/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/view")
    public String toView(String categoryId,Model model) {

        Category category = categoryService.findCategoryById(categoryId);

        model.addAttribute("category",category);

        return "pages/backend/main/manage/spots/category/categoryview";
    }

    @RequestMapping("/stop")
    public String toStop(@RequestParam("categoryId") String[] categoryIds) {
        Integer state = 0;
        categoryService.updateState(categoryIds, state);
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/start")
    public String toStart(@RequestParam("categoryId")String[] categoryIds) {
        Integer state = 1;
        categoryService.updateState(categoryIds, state);
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/add")
    public String toInsert() {
        return "/pages/backend/main/manage/spots/category/categoryadd";
    }

    @RequestMapping("/save")
    public String saveSpots(Category category) {
        categoryService.saveCategory(category);
        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/update")
    public String toUpdate(Model model, String categoryId) {

        Category category = categoryService.findCategoryById(categoryId);

        model.addAttribute("category", category);


        return "pages/backend/main/manage/spots/category/categoryupdate";
    }

    @RequestMapping("/updateCategory")
    public String updateCategory(Category category) {

        categoryService.updateCategory(category);
        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }

    @RequestMapping("/delete")
    public String deleteSpots(String categoryId){

        categoryService.deleteCategory(categoryId);

        //重定向到景点主页面
        return "redirect:/backend/spots/index";
    }

}
