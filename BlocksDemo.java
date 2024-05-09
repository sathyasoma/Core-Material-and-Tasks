package com.methods;

public class BlocksDemo {

	static {
		System.out.println("i am static block");
	}

	{
		System.out.println("i am uinstance block");
	}

	public static void main(String[] args) {

		BlocksDemo bd= new BlocksDemo();
		System.out.println("i am main method");
		
	}
}
