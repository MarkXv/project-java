package com.wn.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wn.web.pojo.Picture;
import com.wn.web.pojo.Spots;
import com.wn.web.pojo.User;
import com.wn.web.service.HomeService;
import com.wn.web.service.PictureService;
import com.wn.web.service.SpotsService;
import com.wn.web.service.UserService;

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

	/**
	 * 用于处理页面的第一次访问
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/home")
	public String toIndex(HttpSession session, Model model) {
		/**
		 * 获取TOP3的景点数据
		 */
		List<Spots> SpotTop3List = homeService.findTop3();
		model.addAttribute("SpotTop3List", SpotTop3List);
		/*
		 * for (Spots s:SpotTop3List) { System.out.println(s); }
		 */
		// 初始值为1
		/**
		 * 获取主页全部的景点的初始化数据 第一次显示的是数据库前16条数据
		 */
		Integer n = 0;
		List<Spots> SpotsAll = homeService.findAll(n);
		model.addAttribute("SpotsAll", SpotsAll);
		/**
		 * 主页的描述框含有图片
		 */
		// 只需要数据库的前6条数据，并将其封装为对象
		List<Spots> spotsList = homeService.findAll6(n);
		for (int i = 0; i < spotsList.size(); i++) {
			Spots spot = spotsList.get(i);
			if (spot.getRemark().length() > 0) {
				String remark = spot.getRemark().substring(0, 50) + "...";
				spot.setRemark(remark);
			}
		}
		model.addAttribute("spotsList", spotsList);
		return "pages/main/index";
	}

	// 点击所有景点进入的页面
	@RequestMapping("/spots")
	public String tospots(Model model) {
		Integer n = 0;
		List<Spots> SpotsAll = homeService.findAll(n);
		model.addAttribute("SpotsAll", SpotsAll);
		List<Spots> spotsList = homeService.findAll6(n);
		for (int i = 0; i < spotsList.size(); i++) {
			Spots spot = spotsList.get(i);
			if (spot.getRemark().length() > 0) {
				String remark = spot.getRemark().substring(0, 50) + "...";
				spot.setRemark(remark);
			}
		}
		model.addAttribute("spotsList", spotsList);
		List<Spots> spotsAll = spotsService.findAll();
		List<Integer> countList = new ArrayList<Integer>();
		if (spotsAll.size() / 9 > 4) {
			for (int i = 0; i < 4; i++) {
				countList.add(i + 1);
			}
		} else {
			for (int i = 0; i < spotsAll.size() / 9; i++) {
				countList.add(i + 1);
			}
		}

		model.addAttribute("countList", countList);
		return "pages/main/spots";
	}

	/**
	 * 转向后台系统首页
	 * 
	 * @return
	 */
	@RequestMapping("/backend/tobackend")
	public String tobackend(Model model) {
		// Integer count=0;
		// List<Spots> spotsList = spotsService.findAll();
		// for(int i=0;i<spotsList.size();i++){
		// Spots spots = spotsList.get(i);
		// int c=0;
		// if(spots.getClickValume()==null){
		// break;
		// }else{
		// c = Integer.parseInt(spots.getClickValume());
		// }
		// count = count+c;
		// }
		// List<User> userList = userService.findAllList();
		// int userCounts = userList.size();
		// System.out.println(userCounts);
		// model.addAttribute("userCounts",userCounts);
		// model.addAttribute("count",count);
		return "redirect:http://manage.wn.com/home";
	}

	// 转向详情页面
	@RequestMapping("/toabout")
	public String toAbout(String spotsId, Model model) {
		Spots spots = spotsService.findSpotsById(spotsId);
		Integer clickValue = Integer.parseInt(spots.getClickValume());
		clickValue++;
		spotsService.updataClickValue(spotsId, clickValue);

		List<Picture> pictureList = pictureService.findTop3(spotsId);

		model.addAttribute("pictureList", pictureList);
		model.addAttribute("spots", spots);
		return "/pages/main/about";
	}

	// 转向所有图片页面
	@RequestMapping("/toallPicture")
	public String toallPicture(String spotsId, Model model) {
		List<Picture> pictureList = pictureService.findPicturesById(spotsId);
		model.addAttribute("pictureList", pictureList);
		return "pages/main/allPicture";
	}

	@RequestMapping("/login")
	public String toLogin() {
		return "pages/login";
	}

	@RequestMapping("/toregist")
	public String toRegister() {
		return "pages/regist";
	}
}
