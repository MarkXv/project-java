package com.xv.Snake.demo1;

import java.awt.Graphics;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Arrays;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;



/**
 * 
 * @author Mark
 * @version 1.0
 * @since 2017.3.17
 * 
 * 此类为贪吃蛇主类
 */
public class Snake extends JPanel{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected static final KeyEvent Snake = null;
	public static int Height = 1030;
	public static int Width = 600;
	int fenShu=0,Speed=0;
	
	Random rand = new Random();
	//初始化开始条件，应用启动时为停止状态
	Thread nThread;
	
	public static BufferedImage background;
	public static BufferedImage head;
	public static BufferedImage snakes;
	
	public static BufferedImage gameover;
	
	public static int direct = 1;
		
	static{
		try {
			background = ImageIO.read(Snake.class.getResource("background.jpg"));
			head = ImageIO.read(Snake.class.getResource("head.jpg"));
			snakes = ImageIO.read(Snake.class.getResource("snanks.jpg"));
		
			gameover = ImageIO.read(Snake.class.getResource("gameover.jpg"));
			
			
			
		} catch (IOException e) {
			System.out.println("文件未找到"+e.toString());
		}
		
		
	}
	
	Random random = new Random();
	private Point point;
	
	
	Link[]list = {};
	
	
	
	public void makePoint(){
		
			
			point= new Point(
					random.nextInt(1030),
					random.nextInt(600));
			
			
			
		
	}
	Link s = new SHead();
	/**
	 * 
	 */
	public void makeSlink(){
		
		
		
		int index = 0 ;
		for(int i = 0 ;i <= 3 ; i++){
			index ++;
			list = (Link[]) Arrays.copyOf(list, index);
			if(i == 0){
				list[0] = s;
				System.out.println(list);
			}
			else{
				
				list[i] = (new SLink(s.getX()+s.image.getWidth()*(index-1),s.getY()));
				
				//System.out.println(list);
			}
			
		}
		
			
		
		
	}
	
	
	
	public void snakeMove(){
		
		
		Link l = new Link();
		
		l.x = list[0].x++;
		l.y = list[0].y++;
		l.image = list[0].image;
		
		
		
		list[1] = l;
		
		list = (Link[]) Arrays.copyOf(list, list.length +1);
		
		for(int i = 1 ; i < list.length-1 ; i++){
			
			
				list[i-1].x = list[i].x;
				list[i-1].y = list[i].y;
				
				
				repaint();
			
			
			
		}
		list = (Link[]) Arrays.copyOf(list, list.length - 1);
		repaint();
			

		
	}
	void run(){
		
		
		
		
		 
	
		Timer timer = new Timer();
		
		int intever = 10;
		
		timer.schedule(new TimerTask(){
			

			public void run() {
				
				
					headMove(1,1);
					makePoint();
					
					
					repaint();
			
				
				
	
			}}, intever , intever);

		
	}
	
				
	
	public void eat(){
		
		
		
	}
	
	
	
	public void headMove(int x,int y){
		
			
		
			list[0].x += (x*list[0].image.getWidth());
			
			list[0].y += (y*list[0].image.getHeight());
			
			
			

		repaint();
		MouseAdapter l = new MouseAdapter() {
			
			
			public void mouseMoved(MouseEvent e) {
				
				int x = e.getX();
				int y = e.getY();
				

				
				
				super.mouseMoved(e);
			}
			
			
			
		};
		this.addMouseListener(l);
		this.addMouseMotionListener(l);
		
		
		
	}
	

	
	
	

	public void paint(Graphics g){
		g.drawImage(background, 0, 0, null);
		paintSnake(g);
		paintPoint(g);
		
	}
	
	public void paintSnake(Graphics g){
		
		for(int i = 0 ; i < list.length - 1; i++){
			g.drawImage(list[i].image, list[i].x, list[i].y, null);
		}
	
		
	}
	public void paintPoint(Graphics g){
		g.drawImage(point.image, point.x, point.y, null);
	}
		
	
	
	
	
	/*
	 * 
	 * 日志记录2017.3.27
	 * 贪吃蛇Point类，Head类，Snake类创建结构不明了，重新定义
	 * 重新进行结构创建
	 * xvjm
	 * 
	 * 
	 */
	
	
	
	
	
	public static void main(String[] args) {
		
		
		
		
	
		
		
	
		
		JFrame jf  = new JFrame();
		
		Snake snake =  new Snake();
		jf.add(snake);
		snake.makeSlink();
		snake.run();
		
		
		jf.setTitle("贪吃蛇1.0");
		jf.setSize( Height,Width);
		jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		jf.setVisible(true);
		jf.setLocationRelativeTo(null);
		//jf.addWindowListener(J);
		
		
		
		
	}

	
	
	

	

	




	
	

}
