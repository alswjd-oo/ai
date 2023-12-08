package javaBasic3.ch06.sec10.example02;

public class ClassName250 {
	
	
	//상수 = const
	static final int A =100;
	static final double PI = 3.141592;
	static final double RATE = 0.025;
	//변수 = 변하는 수
	int a=10;
	
	// 인스턴트 멤버들
	int field1;
	void method1() {
		a=a+100;
		System.out.println(A + 20);
//		A =1000; 상수이기 때문에 바꾸지 못함
	};
	
	// 정적 멤버들(클래스 멤버들)
	static int field2;
	static void method2() {};
	
    static {
//    	field1 = 10; 오류 : 메모리에 올라가는 시점이 다르다.
//    	method1(); 오류
    	field2 = 10;
    	method2();
    }
    
    static void method3() {
//    	field1 = 10; 오류
//    	method1(); 오류
    	field2 = 10;
    	method2();	
    }
       
    
    {
    	field1 = 10;
    	method1();
    	field2 = 10;
    	method2();
    	
    }
    
    
    void method4() {
    	field1 = 10;
    	method1();
    	field2 = 10;
    	method2();
    }


}
