package javaBasic3.ch06.sec06;

public class 생성자연습 {
	
	String name;
	int score;
	
	public 생성자연습(String name) {
		this.name=name;
	}
	
	
	public 생성자연습() {
		this(5,false); //다른 생성자 호출 단, 첫줄에서만 쓴다
		name = "김유신";
	}
	
	public 생성자연습(int i, boolean b) {
		// TODO Auto-generated constructor stub
	}

	public 생성자연습(boolean b, int i) {
		// TODO Auto-generated constructor stub
	}

	


	
	// 생성자가 1개도 없으면  "생성자연습()" 자바 컴파일러가 자동으로 1개 만듬
	// 생성자가 1개라도 있으면 자동으로 안 만든다.

}
