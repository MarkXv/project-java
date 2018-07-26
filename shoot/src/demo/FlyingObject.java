package demo;

import java.awt.image.BufferedImage;

public class FlyingObject {
	
	protected BufferedImage image;
	
	protected int width;
	
	protected int height;
	
	protected int x;
	
	protected int y;
	
	public void move(){
		
	}
	
	public boolean outBound(){
		return true;
	}
	
	public boolean attrack(Bullet f){
		
		int x1 = this.x;
		int x2 = this.x + this.width;
		int y1 = this.y;
		int y2 = this.y + this.height;
		
		int x = f.x;
		int y = f.y;
		
		
		if(x > x1 && x <x2 && y > y1 && y < y2){
			
				return true;
			}
			
			else
				
			return false;
	}
	

}
