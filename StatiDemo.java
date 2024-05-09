package com.demo.datatypes;

public class StatiDemo {
//static variable representation
	
	static String schoolName="dps";
	
	   int marks=89;//instance
	
	public static void main(String[] args) {
		
		
		System.out.println(StatiDemo.schoolName);
	
		//objet createion 
		
		StatiDemo st= new StatiDemo();
		
		System.out.println(st.marks);
		
	}
}
