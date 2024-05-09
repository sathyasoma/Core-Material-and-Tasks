package com.methods;

public class MethodDemo {

	public void display()
	{
		int age=78;
		System.out.println("i am display method :"+age);
	}
	
	public String sumOfTwoNumbers(int a,int b)
	{
		return "sum of two numbers :"+(a+b);
	}
	
	public void subOfTwoNums(int a,int b)
	{
		System.out.println("sub of two nums :"+(a-b));
	}
	public static void main(String[] args) {
		
		MethodDemo md= new MethodDemo();
		md.display();
		System.out.println(md.sumOfTwoNumbers(78, 52));
		md.subOfTwoNums(41, 23);
		
		
	}
}
