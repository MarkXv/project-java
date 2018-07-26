package com.webSpider.springBoot.controller;

import com.webSpider.springBoot.service.ItemService;
import com.webSpider.springBoot.utils.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/webSpider")
public class ItemController {

    @Autowired
    private ItemService itemService;
    @RequestMapping("/toWebSpider")
    @ResponseBody
    public String toWebSpider(Model model) {
       // WebUtil.getItemList3("https://blog.csdn.net");
        return "success";
    }



}