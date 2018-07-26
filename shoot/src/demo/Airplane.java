package demo;
import java.util.Random;

public class Airplane extends FlyingObject implements Enemy {
	
	private int speed = 2;
	
	public Airplane() {
		
		image = Shoot.airplne;
		
		width = image.getWidth();
		
		height = image.getHeight();
		
		Random rand = new Random();
		
		x = rand.nextInt(Shoot.WIDTH - this.width);
		
		y = -this.height;
		
		// TODO Auto-generated constructor stub
	}
	

	
	@Override
	public int getSocer() {
		// TODO Auto-generated method stub
		return 5;
	}
	
	public void move(){
		
		y += speed;
	}
	
	public boolean outBound(){
		if(y > Shoot.HEIGHT + image.getHeight()){
			
			return true;
			
		}else{
			
			return false;
		}
	}
	
	
	
	public boolean attack(){

			
		return true;
		
	}
	
	
	
	

}
