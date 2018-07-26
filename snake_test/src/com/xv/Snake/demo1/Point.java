package com.xv.Snake.demo1;

import java.awt.image.BufferedImage;

/**
 * 
 * @author Mark
 * @version 1.0
 * @since 2017.3.17
 * 
 * 此类为贪吃蛇食物类
 */

public class Point {
	
	
	protected BufferedImage image = Snake.snakes;
	
	
	int x;
	int y;
	//食物位置的初始化
	Point(int x ,int y){
		
		
		this.x = x;
		this.y = y;
		
	}
	public void eated(int x,int y){
		
	}

}
