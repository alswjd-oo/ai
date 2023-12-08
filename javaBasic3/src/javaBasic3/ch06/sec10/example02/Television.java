package javaBasic3.ch06.sec10.example02;

public class Television {
	
	static String company = "MyCompany";
	static String mode1 = "LCD";
	static String info;
	
	static {
		info = company + "-" + mode1;
	}

}
