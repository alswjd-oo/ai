package javaBasic3.ch06.sec10.example02;

public class ClassName250 {
	
	
	//��� = const
	static final int A =100;
	static final double PI = 3.141592;
	static final double RATE = 0.025;
	//���� = ���ϴ� ��
	int a=10;
	
	// �ν���Ʈ �����
	int field1;
	void method1() {
		a=a+100;
		System.out.println(A + 20);
//		A =1000; ����̱� ������ �ٲ��� ����
	};
	
	// ���� �����(Ŭ���� �����)
	static int field2;
	static void method2() {};
	
    static {
//    	field1 = 10; ���� : �޸𸮿� �ö󰡴� ������ �ٸ���.
//    	method1(); ����
    	field2 = 10;
    	method2();
    }
    
    static void method3() {
//    	field1 = 10; ����
//    	method1(); ����
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
