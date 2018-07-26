package cn.powerun.springBoot.controller;

import cn.powerun.springBoot.pojo.spot.Picture;
import cn.powerun.springBoot.pojo.spot.Spots;
import cn.powerun.springBoot.service.HomeService;
import cn.powerun.springBoot.service.PictureService;
import cn.powerun.springBoot.service.SpotsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

    /**
     * 用于处理页面的第一次访问
     * @param model
     * @return
     */
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String toIndex(HttpSession session , Model model) {
        /**
         * 获取TOP3的景点数据
         */
        List<Spots> SpotTop3List = homeService.findTop3();
        model.addAttribute("SpotTop3List",SpotTop3List);
      /*  for (Spots s:SpotTop3List) {
            System.out.println(s);
        }*/
        //初始值为1
        /**
         * 获取主页全部的景点的初始化数据
         * 第一次显示的是数据库前16条数据
         */
        Integer  n = 0;
        List<Spots> SpotsAll = homeService.findAll(n);
        model.addAttribute("SpotsAll",SpotsAll);
        /**
         * 主页的描述框含有图片
         */
        //只需要数据库的前6条数据，并将其封装为对象
        List<Spots> spotsList = homeService.findAll6(n);
        for (int i = 0;i<spotsList.size();i++){
            Spots spot = spotsList.get(i);
            String remark = spot.getRemark().substring(0,50)+"...";
            spot.setRemark(remark);
        }
        model.addAttribute("spotsList",spotsList);
        return "pages/main/index";
    }
    //点击所有景点进入的页面
    @RequestMapping("/spots")
    public String tospots(Model model){
        Integer  n = 0;
        List<Spots> SpotsAll = homeService.findAll(n);
        model.addAttribute("SpotsAll",SpotsAll);
        List<Spots> spotsList = homeService.findAll6(n);
        for (int i = 0;i<spotsList.size();i++){
            Spots spot = spotsList.get(i);
            if(spot.getRemark().length()>0){
                String remark = spot.getRemark().substring(0,50)+"...";
                spot.setRemark(remark);
            }
        }
        List<Spots> spotsAll = spotsService.findAll();
        model.addAttribute("spotsList",spotsList);
        List<Integer> countList =  new ArrayList<Integer>();
        if(spotsAll.size()/9 >4){
            for(int i=0;i<4;i++){
                countList.add(i+1);
            }
        }else{
            for(int i=0;i<spotsAll.size()/9;i++){
                countList.add(i+1);
            }
        }
        model.addAttribute("countList",countList);
        return "pages/main/spots";
    }
    /**
     * 转向后台系统首页
     * @return
     */
    @RequestMapping("/tobackend")
    public String tobackend(){
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

    //转向详情页面
    @RequestMapping("/toabout")
    public String toAbout(String spotsId,Model model){
        Spots spots=spotsService.findSpotsById(spotsId);

        List<Picture> pictureList=pictureService.findTop3(spotsId);

        model.addAttribute("pictureList",pictureList);
        model.addAttribute("spots",spots);
        return "/pages/main/about";
    }
    //转向所有图片页面
    @RequestMapping("/toallPicture")
    public String toallPicture(String spotsId,Model model){
        List<Picture> pictureList=pictureService.findPicturesById(spotsId);
        model.addAttribute("pictureList", pictureList);
        return "pages/main/allPicture";
    }
}
