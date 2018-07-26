package com.wn.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wn.web.pojo.Spots;
import com.wn.web.service.SpotsService;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/10/22.
 */
@Controller
public class PageController {
    @Autowired
    private SpotsService spotsService;
    /**
     * 页面显示后跳
     * @return
     */
    @RequestMapping("/count")
    public String count(Integer count,Model model){
        List<Spots> spotsList = spotsService.findByPage(count);
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
        //获取景点的数量
        List<Spots> spotsAll = spotsService.findAll();
        int allCount = ((spotsAll.size()/9*10)+5)/10;
        System.out.println(allCount);
        model.addAttribute("spotsList",spotsList);
        List<Integer> countList =  new ArrayList<Integer>();
            Integer dcount = count-3;
            if(dcount>0){
                for (int i = 0; i < 4; i++) {
                    if(count+3 > allCount){
                        break;
                    }else{
                        dcount = dcount + 1;
                        countList.add(dcount);
                    }
                }
            }else{
                for(int i = 0;i < 4;i++ ){
                    countList.add(i+1);
                }
            }
        model.addAttribute("countList",countList);
        return "pages/main/spots";
    }
    //首页
    @RequestMapping("/laquo")
    public String laquo(Model model){
        Integer  count=1;
        List<Spots> spotsList = spotsService.findByPage(count);
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

        List<Spots> spotsAll = spotsService.findAll();
        int allCount = ((spotsAll.size()/9*10)+5)/10;
        model.addAttribute("spotsList",spotsList);
        List<Integer> countList =  new ArrayList<Integer>();
        if( allCount >4){
            for(int i=0;i<4;i++){
                countList.add(i+1);
            }
        }else{
            for(int i=0;i<allCount;i++){
                countList.add(i+1);
            }
        }
        model.addAttribute("countList",countList);
        return "pages/main/spots";
    }


    //尾页
    @RequestMapping("/raquo")
    public String raquo(Model model){
        List<Spots> spotsAll = spotsService.findAll();
        int count = ((spotsAll.size()/9*10)+5)/10;
        List<Spots> spotsList = spotsService.findByPage(count-2);

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
        List<Integer> countList =  new ArrayList<Integer>();
        model.addAttribute("countList",countList);
        return "pages/main/spots";
    }
}
