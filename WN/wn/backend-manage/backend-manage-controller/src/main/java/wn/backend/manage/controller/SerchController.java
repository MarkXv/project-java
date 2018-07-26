package wn.backend.manage.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import wn.backend.manage.pojo.Spots;
import wn.backend.manage.service.SpotsService;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/10/23.
 */
@Controller
@RequestMapping("/serch")
public class SerchController {

    @Autowired
    private SpotsService spotsService;



    /**
     * 搜索所有景点
     * 按默认策略
     * @return
     */
    @RequestMapping("/condition")
    public String serchWithCondition(Model model,@RequestParam("arg") String arg){


        if(StringUtils.isEmpty(arg)){
//            查询失败或输入参数为空
            //当前策略：  跳转到所有景点页面,和点击所有景点效果一样
            return "redirect:/spots";
        }else{
            Map rsm =  spotsService.findAllWithCondition(arg);
            List<Spots> spotsList = (List<Spots>) rsm.get("resultSet");
            int counts = (Integer) rsm.get("counts");
            Spots condition = (Spots) rsm.get("condition");

            //TODO这里需要进行截取简介
            for (int i = 0;i<spotsList.size();i++){
                Spots spot = spotsList.get(i);
                int split = 50;
                if(spot.getRemark().length()>0 && split<spot.getRemark().length()){
                    String remark = spot.getRemark().substring(0,50)+"...";
                    spot.setRemark(remark);
                }else{
                    String remark = spot.getRemark().substring(0,spot.getRemark().length())+"...";
                    spot.setRemark(remark);
                }
            }
            model.addAttribute("spotsList",spotsList);
            model.addAttribute("condition",condition); //装载所搜结果
            model.addAttribute("counts",counts);  //装载搜索条数
            return "pages/main/serchResult";
        }
    }
}
