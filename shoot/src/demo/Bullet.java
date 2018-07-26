package demo;


public class Bullet extends FlyingObject {
	
	private int speed = 3;
	
	
	public Bullet(int x,int y) {
		
		image = Shoot.bullet;
		
		width = image.getWidth();
		
		height = image.getHeight();
		
		this.x = x;
		
		this.y = y;
		
	}
	
	public void move(){
		
		y -= speed;
		
	}
	
	public boolean outBound(){
		if(y < 0){
			
			return true;
		}else
			
			return false;
		
		
	}
	
	public boolean attrack(FlyingObject f){
		
		int x1 = this.x;
		int x2 = this.x + f.width;
		int y1 = this.y;
		int y2 = this.y + f.height;
		
		int x = f.x;
		int y = f.y;
		
		
		if(x > x1 && x <x2 && y > y1 && y < y2){
			
				return true;
			}
			
			else
				
			return false;
			
		
		
		
	}
	
}
