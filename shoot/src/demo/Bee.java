package demo;

import java.util.Random;

public class Bee extends FlyingObject implements Award {

	private int xSpeed = 1;
	private int ySpeed = 2;
	
	private int awardType;
	
	public Bee() {
		
		image = Shoot.bee;
		
		width = image.getWidth();
		
		height = image.getHeight();
		
		Random rand = new Random();
		
		x = rand.nextInt(Shoot.WIDTH - this.width);
		
		y = -this.height;
		
		awardType = rand.nextInt(2);
		
		
		
	}
	
	
	
	@Override
	public int getType() {
		Random rand = new Random();
		return rand.nextInt(2);
	}
	
	public void move(){
		
		y += ySpeed;
		
		x += xSpeed;
		
		if(x >= Shoot.WIDTH - image.getWidth()){
			xSpeed = -1;
		}
		if(x < 0){
			x = 1;
		}
		
		
	}
	public boolean outBound(){
		if(y > Shoot.HEIGHT + image.getHeight()){
			
			return true;
			
		}else{
			
			return false;
		}
	}
	
	
	public boolean attrack(){
		
			
		return false;
		
		
	}
	
}
