package com.xv.Snake.demo1;



public class SHead extends Link{
	
	
	//贪吃蛇的头的位置初始化，以及移动方向的确定
	SHead(){
		image = Snake.head;
		x = 500;
		y = 300; 
	}
	
	public void move(int x,int y){
		
		int x1 = x - this.x;
		int y1 = y - this.y;
		
		x = x + x1/100;
		y = y + y1/100;
		
	}
	
	
	
}
