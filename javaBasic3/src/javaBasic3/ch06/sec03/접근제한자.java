package javaBasic3.ch06.sec03;

import javaBasic3.ch06.sec04.AA;
import javaBasic3.ch06.sec05.Singleton;

public class 접근제한자 {

	public static void main(String[] args) {
		
		Singleton o1=Singleton.getInstance();
		System.out.println(o1);
		
		A aAdd = new A();
		
		//System.out.println(aAdd.a)); private은 다른 객체에서 못 쓴다.
		System.out.println(aAdd.b);
		//접근제한자가 default이니까 같은 패키지는 가능하다.
		System.out.println(aAdd.c);
		
		//aAdd.a1(); private은 다른 객체에서 못 쓴다.
		aAdd.b1();
		aAdd.c1();
		
		AA aaAdd = new AA();
		//System.out.println(aaAdd.a); private은 다른 객체에서 못 쓴다.
		//System.out.println(aaAdd.b); default는 같은 패키지만 가능
		System.out.println(aaAdd.c); //접근제한자가 public이니까 가능
		
//		aaAdd.a1;
//		aaAdd.b1;
		
		//aaAdd.c1;
		
		// 실제로 개발할 때는 변수는 private으로 하고 메소드는 public으로 한다.
		
	}

}
