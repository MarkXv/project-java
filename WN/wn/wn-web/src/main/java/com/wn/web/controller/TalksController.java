package com.wn.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.UUID;

/**
 * Created by Administrator on 2017/10/22.
 */
@Controller
@RequestMapping("/talk")
public class TalksController {

	// 当前最新信息
	private String newMessage = "test1";
	// 当前最新信息的UUID
	public String cUUID = null;

	@RequestMapping("/add")
	@ResponseBody
	public String add(@RequestParam("msg") String msg) {
		newMessage = msg;
		cUUID = UUID.randomUUID().toString();
		// System.out.println("add>>>"+Thread.currentThread().getName()+":UUID:"+
		// cUUID+":msg:"+newMessage);
		return "addOk";
	}

	@RequestMapping("/get")
	@ResponseBody
	public String get(@RequestParam("UUID") String UUID) throws InterruptedException {
		// boolean flag = false;
		// while(!flag){
		// if(newMessage!=null&&(!UUID.equals(cUUID))){
		// //有新信息
		// flag = true;
		// }
		// Thread.currentThread().sleep(1000);
		// System.out.println(Thread.currentThread().getName());
		// }
		// System.out.println("get>>>UUID:"+Thread.currentThread().getName()+"-"+UUID);
		// Thread.currentThread().sleep(2000);
		// return "{'cUUID':'"+cUUID+"','newMessage':'"+newMessage+"'}";
		if ((cUUID != null) && (!cUUID.equals(UUID))) {
			// 有新信息
			// 返回新信息和对应UUID
			return cUUID + ":" + newMessage;
		} else {
			// 暂无新信息，返回无新信息标识
			// System.out.println("无");
			return "-1";
		}

	}

	// public checkNew(){
	// final Timer timer = new Timer();
	// timer.schedule(new TimerTask() {
	// @Override
	// public void run() {
	// Thread.currentThread().su
	// if(newMessage!=null){
	// timer.cancel();
	// Thread.currentThread().notify();
	// }
	// }
	// },500);
	// }

}
