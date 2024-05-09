package com.commands;

public class WrapperDemo {

	public static void main(String[] args) { // "12"+"12"

		int fnum = Integer.parseInt(args[0]);
		int snum = Integer.parseInt(args[1]);
		
		int result= fnum*snum;
		
		System.out.println("two numrs operation result :"+result);
	}

}
