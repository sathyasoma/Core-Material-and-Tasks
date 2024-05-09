package com.methods;

public class StatiDemos {
	
	public static void speed()
	{
		int speed=67;
		System.out.println("my speed is kmph :"+speed);
	}
	public static double accelator(int a)
	{
		a=89;
		return a++;
	}
	
	public static void wheels()
	{
		int wheels=4;
		System.out.println("wheels are in good condition :"+wheels);
	}
	
	public static void main(String[] args) {
		
	double myacc=StatiDemos.accelator(60);
	System.out.println(myacc);
		StatiDemos.speed();
		StatiDemos.wheels();
		
	}
}
