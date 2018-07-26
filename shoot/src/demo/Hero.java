package demo;

import java.awt.image.BufferedImage;
import java.util.Random;

public class Hero extends FlyingObject{
	
	int life;
	
	public int getLife() {
		return life;
	}
	public void setLife(int life) {
		this.life = life;
	}


	private int doubleFire;
	
	private BufferedImage[] images = {Shoot.hero0,Shoot.hero1};
	
	private int index = 0;
	
	public Hero() {
		
		image = Shoot.hero0;
		
		width = image.getWidth();
		
		height = image.getHeight();
		
		x = 150;
		
		y = 400;
		
		life = 3;
		
		doubleFire = 5;
		
		images = new BufferedImage[] {Shoot.hero0,Shoot.hero1};
		
		index = 0;
		
		
	}
	public void moveTo(int x,int y){
		
		this.x = x - image.getWidth()/2;
		
		this.y = y - image.getHeight()/2;
		
		
		
	}
	public void move(){
		Random rand = new Random();
		int a = rand.nextInt(2);
		image = images[a];
		
		/*
		 * index ++;
		 * int a = index/10;
		 * int b = a%2;
		 * image = images[a];
		 * 
		 */
	}
	
	public Bullet[] shoot(){
		
		int xStep = this.width/4;
		int yStep = 20;
		
		if(doubleFire > 1){
			Bullet[] bs = new Bullet[2];
			
			bs[0] = new Bullet(this.x + xStep , this.y - yStep);
			bs[1] = new Bullet(this.x + 3*xStep , this.y - yStep);
			
			doubleFire --;
			
			return bs;
			
		}
		else{
			
			Bullet[] bs = new Bullet[1];
			bs[0] = new Bullet(this.x + 2*xStep , this.y - yStep);
			
			return bs;
			
		}
		
	}
	
	
	public void addLife(){
		life++;
	}
	public void addDoubleFire(){
		
		doubleFire += 10;
		
	}
	
	public void dead(){
		
		life--;
	}
	public void cleanDoubleFire(){
		
		doubleFire = 0;
	}
	
	
	public boolean attrack(FlyingObject other){
		
		int x1 = other.x - this.x / 2;
		int x2 = other.x + other.width + this.width / 2;//
		int y1 = other.y - this.height / 2;
		int y2 = other.y + other.height + this.height / 2;
		int x = this.x + this.width / 2;// 英雄机的x
		int y = this.y + this.height /2;// 英雄机的y
		
		if(x > x1 && x < x2 && y > y1 && y < y2){
			
			return true;
			
		}else
		
		return false;
		
		
		
	}
	
	

}
