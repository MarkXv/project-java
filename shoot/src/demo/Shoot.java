package demo;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.lang.management.GarbageCollectorMXBean;
import java.util.Arrays;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Shoot extends JPanel{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	public static final int WIDTH = 400;
	public static final int HEIGHT = 654;

	public static BufferedImage airplne;
	public static BufferedImage background;
	public static BufferedImage bee;
	public static BufferedImage bullet;
	public static BufferedImage gameover;
	public static BufferedImage hero0;
	public static BufferedImage hero1;
	public static BufferedImage pause;
	public static BufferedImage start;
	
	public static int STATE = 0;
	
	private Hero hero = new Hero();
	
	private Bullet[] bullets = {};
	
	private FlyingObject[] flyings = {};
	

	static{
		try {
			
			airplne = ImageIO.read(Shoot.class.getResource("airplane.png"));
			background = ImageIO.read(Shoot.class.getResource("background.png"));
			bee = ImageIO.read(Shoot.class.getResource("bee.png"));
			bullet = ImageIO.read(Shoot.class.getResource("bullet.png"));
			gameover = ImageIO.read(Shoot.class.getResource("gameover.png"));
			hero0 = ImageIO.read(Shoot.class.getResource("hero0.png"));
			hero1 = ImageIO.read(Shoot.class.getResource("hero1.png"));
			pause = ImageIO.read(Shoot.class.getResource("pause.png"));
			start = ImageIO.read(Shoot.class.getResource("start.png"));
			
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public FlyingObject nextOne(){
		
		Random rand = new Random();
		
		int type = rand.nextInt(20);
		
		if(type == 0){
			
			return new Bee();
			
		}
		
		else{
			
			return new Airplane();
			
		}

	}
	
	

	int flyEnterIndex = 0;
	
	public void enterAction(){
		
		flyEnterIndex ++;
		
		if(flyEnterIndex%40 == 0){
					
				FlyingObject f0 = nextOne();
				
				flyings = Arrays.copyOf(flyings, flyings.length+1);
				
				flyings[flyings.length-1] = f0;
					
		}
				
	}
	
	
	public void flyingObjectMove(){
		
		hero.move();
		
		for(int i = 0 ; i < flyings.length ;i ++ ){
			
			flyings[i].move();
		}
		
		for(int i = 0 ; i < bullets.length ; i++ ){
			
			bullets[i].move();
		}
	
	}
	
	
	public void bang(){
		
		if(flyEnterIndex%20 == 0){
			
			Bullet[] bs = hero.shoot();
			
			bullets = Arrays.copyOf(bullets, bullets.length + bs.length);
			
			System.arraycopy(bs, 0, bullets, bullets.length-bs.length, bs.length);
			
		}
		
	}
	
	public void outBoundClean(){
		
		Bullet[] b0 = new Bullet[bullets.length];
		
		int index = 0;
		
		for(int i = 0 ; i < bullets.length ; i++){
			
			Bullet b = bullets[i];
			
			if(!b.outBound()){
				
				b0[index] = b;
				
				index++;	
				
			}
			
		}
		
		bullets = Arrays.copyOf(b0,index);
		
		
		FlyingObject[] f0 = new FlyingObject[flyings.length];
		
		index = 0;
		
		for(int i = 0 ; i < flyings.length ; i++){
			
			FlyingObject f = flyings[i];
			
			if(!f.outBound()){
							
				f0[index] = flyings[i];
				
				index++;
				
			}
			
			
		}
		
		flyings = Arrays.copyOf(f0, index);
		
	}
	
	int scoer = 0;
	
	
	
	public void attrackAction(Bullet b){
		
		int index = -1;
		
		for(int i = 0 ; i < flyings.length ; i++){
			
			FlyingObject f = flyings[i];
			
			if(f.attrack(b)){
				
				index = i;
				
				break;
			}
			
		}
		
		if(index != -1){
			
			FlyingObject one  = flyings[index];
			
			if(one instanceof Enemy){
				Enemy e = (Enemy)one;
				scoer += e.getSocer();
				
			}
			
			if(one instanceof Award){
				
				Award a = (Award)one;
				
				int type = a.getType();
				
				switch(type){
				case Award.DOUBLEFIRE : 
					hero.addDoubleFire();
					break;
				case Award.LIFE : 
					hero.addLife();
					break;
				}
				
				
				
			}
			
			for(int i = 0 ; i < flyings.length  ; i++){
				
				FlyingObject f0 = new FlyingObject();
				
				if(flyings[i].attrack(b) ){
					
					f0 = flyings[i];
					
					flyings[i] = flyings[flyings.length - 1];
					
					flyings[flyings.length - 1] = f0;
					
					flyings = Arrays.copyOf(flyings, flyings.length - 1);
					
				}
				
				
			}
			
			
		}
		
	}
	public void attrack(){
		
		for(int i = 0; i < bullets.length ;i++){
			System.out.println(i+",");
			
			Bullet b = bullets[i];
			
			attrackAction(b);
			
			
		}
		
	
		
		
		for(int i = 0 ; i < flyings.length ; i++){
			
			
			
			
			
			FlyingObject f = flyings[i];
			
			if(hero.attrack(f)){
				
					
					
					hero.cleanDoubleFire();
					
					hero.dead();
					
					
				
					
					FlyingObject f0 = new FlyingObject();
					
			
						f0 = flyings[i];
						
						flyings[i] = flyings[flyings.length - 1];
						
						flyings[flyings.length - 1] = f0;
						
						flyings = Arrays.copyOf(flyings, flyings.length - 1);
						
					
					
				
				
			}
			
			
				
				
			
			
		}
		
		
		/*
		for(int i = 0 ; i < bullets.length ; i++){
			attrackAction(bullets[i]);
			
		}
		
		*/
		
		/*
		
		
		for(int i = 0 ; i < bullets.length ; i++){
			
			Bullet b = bullets[i];
			
			for(int j = 0 ; j < flyings.length ; j ++){
				
				System.out.println(i+","+ j);
				
				FlyingObject f = flyings[j];
				

				if(f.attrack(b)){
					
					System.out.println(i+","+j);
					
					FlyingObject f0 = new FlyingObject();
					
					f0 = flyings[j];
					
					flyings[j] = flyings[flyings.length - 1];
					
					flyings[flyings.length - 1] = f0;
					
					flyings = Arrays.copyOf(flyings, flyings.length - 1);
				}
			}
			
			
			
		}
		
	*/
		
		
	}
	/*
	 * 
	 */
	
	public boolean isGameOver(){
		
		if(hero.getLife() <= 0){
			
			return true;
			
		}
		
		return false;
		
		
	} 
	
	public void chickGameOver(){
		if(isGameOver()){
			STATE = 3;
		}
	}

	public void action(){
		
		MouseAdapter l = new MouseAdapter() {
			
			public void mouseMoved(MouseEvent e){
				
				int x = e.getX();
				
				int y = e.getY();
				
				hero.moveTo(x , y);
			}
			
			public  void mouseClicked(MouseEvent e){
				
				switch(STATE){
				case 0:STATE = 1;
				break;
				case 3:STATE = 0;
				scoer = 0;
				hero = new Hero();
				flyings = new FlyingObject[0];
				bullets = new Bullet[0];
				repaint();
				break;
				}
				
				
			}
			
			public void mouseEntered(MouseEvent e){
				if(STATE == 2){
					STATE = 1;
				}
				
			}
			
			public void mouseExited(MouseEvent e) {
				if(STATE == 1){
					 STATE = 2;
				}
				
			}

		};
		
		this.addMouseListener(l);
		this.addMouseMotionListener(l);
		
		
		Timer timer = new Timer();
		
		int intever = 10;
		
		timer.schedule(new TimerTask(){
			

			public void run() {
				
				if(STATE == 1){
					System.out.println(STATE);
					
					enterAction();
					
					bang();
					
					outBoundClean();
					
					flyingObjectMove();
					
					attrack();
					
					chickGameOver();
					
					repaint();
				}
				
				
	
			}}, intever , intever);

	}
	
	

	public void paint(Graphics g){
		
		g.drawImage(Shoot.background,0, 0, null);
		paintHero(g);
		paintFlyingObject(g);
		paintBullets(g);
		paintLifeAndSocer(g);
		paintState(g);
	}
	
	public void paintState(Graphics g){
		switch(STATE){
		case 0:g.drawImage(start, 0, 0, null);
		break;
		
		case 2:g.drawImage(pause,0,0,null);
		break;
		
		case 3:g.drawImage(gameover, 0, 0, null);
		break;
		
		}
		
	}
	public void paintLifeAndSocer(Graphics g){
		
		g.setColor(Color.blue);
		
		g.setFont(new Font(Font.DIALOG,  Font.BOLD, 30));
		
		g.drawString("SOCER:" + scoer , 10, 30 );
		
		g.drawString("   " + "LIFE: " + hero.getLife(), 0, 60);
		
	}
	
	
	public void paintHero(Graphics g){
		
		
		
		g.drawImage(hero.image, hero.x ,hero.y ,null);
		
		
	}
	
	
	public void paintBullets(Graphics g){
		
		for(int i = 0 ; i < bullets.length ; i++){
			
			Bullet b = bullets[i];
			
			g.drawImage(b.image,b.x,b.y,null);
		}
		
	}

	
	public void paintFlyingObject(Graphics g){
		
		for(int i = 0; i < flyings.length; i++){
			
			FlyingObject f = flyings[i];
			
			g.drawImage(f.image, f.x,f.y,null);
		}	

	}
		
	
	public static void main(String[] args) {
		
		
		
		System.out.println(STATE);
		
		
		JFrame jf = new JFrame("fly");
		
		Shoot shoot = new Shoot();
		
		jf.add(shoot);
		
		jf.setSize(WIDTH,HEIGHT);
		jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		jf.setAlwaysOnTop(true);
		jf.setLocationRelativeTo(null);     
		jf.setVisible(true);
		
		shoot.action();
		
	}

}
