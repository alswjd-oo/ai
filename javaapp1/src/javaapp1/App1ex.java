package javaapp1;

import java.lang.module.ModuleDescriptor;
import java.util.Date;
import java.util.Scanner;
import java.util.StringTokenizer;

public class App1ex {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String a = "abcde";
		int aHashCode = a.hashCode();
		System.out.println(aHashCode);
		double pi = Math.PI;
		System.out.println(pi);
		double e = Math.E;
		System.out.println(e);
		double cos45 =Math.cos(45.0);
		System.out.println(cos45);
		
		Date date = new Date();
		int date1 = date.getDate();
		System.out.println(date1);
		
		long time1 = date.getTime();
		System.out.println(time1);
		long date2 = Date.parse("2023/12/19");
		System.out.println(date2);
		//DateFormat.parse("2023/12/19");
		String text = "ab/cd/ef";
		StringTokenizer st = new StringTokenizer("ab/cd/ef", "/");
		int count = st.countTokens();
		System.out.println(count); //3
		String token = st.nextToken();
		System.out.println(token);
		token = st.nextToken();
		System.out.println(token);
		token = st.nextToken();
		System.out.println(token);
		token = st.nextToken();
		System.out.println(token);
		
		//byte ±âº»Çü
		Byte b = 10;
		
	}

}
