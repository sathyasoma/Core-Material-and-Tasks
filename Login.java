package com.scanner;

import java.util.Scanner;

public class Login {

	public static void main(String[] args) {
		
		Scanner sc= new Scanner(System.in);
		
		System.out.println("Enter username");
		String uname=sc.next();
		System.out.println("Enter password");
		String pwd=sc.next();
		
		
		if(uname.equals("keerthi")&&pwd.equals("keerthi123"))
		{
			System.out.println("login sucess");
		}
		else {
			System.out.println("oops!!login denied....");
		}
		
	}
}
