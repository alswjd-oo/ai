package javaBasic3;

public class 클래스개념 {

	public static void main(String[] args) {
		// 객체 생성하자마자 값을 넣어주기 
		Student st= new Student ("230101","홍길동","AI",100,"010-1234-1234");
		
		Teacher t= new Teacher ("A32", "정현희","컴공",1000000,"전임",20);
		
		// "230101" 출력하기
		System.out.println(st.get학번());
		
		System.out.println(st.get학과());
		
		System.out.println(t.get구분());
		
		System.out.println(st.get점수());
		
		System.out.println(t.get시수());
		
		// 필요할 때마다 넣기
		// 빈 객체 생성하기
		Student st2= new Student();
		Teacher t2= new Teacher();
		
		// 값 넣기
		st2.set학번("2201");
		st2.set이름("이순신");
		st2.set학과("경영학과");
		st2.set점수(85);
		st2.set전화번호("010-234-2345");
		
		t2.set코드("B101");
		t2.set이름("박희연");
		t2.set전공("피아노");
		t2.set급여(2000000);
		t2.set구분("시간강사");
		t2.set시수(30);
		
		System.out.println(st2.get학번() + " " + st2.get이름() + " " + st2.get학과() + " " + st2.get점수() + " " + st2.전화번호);
		System.out.println(t2.get코드()+" "+t2.get이름()+" "+t2.get전공()+" "+t2.급여+" "+t2.get구분()+" "+t2.시수);
		
		// 자동차 판매현황 클래스 만들기
		
		// 생성자로 값 넣기
		자동차판매현황 car =new 자동차판매현황("산타페", 35000000, 15000000, 200000000, 36, 555555);
		
		// 빈 객체를 생성하기
		자동차판매현황 car2 = new 자동차판매현황();
		
		car2.set차량명("코란다");
		car2.set차량총액(24000000);
		car2.set인도금(5000000);
		car2.set할부원금(19000000);
		car2.set월납임금(731666);
		
		System.out.println("        자동차 판매현황");
		System.out.println();
		System.out.println("차량명 차량총액 인도금 할부원금 상환기간 월납임금");
	    System.out.println(car.get차량명()+" "+car.get차량총액()+" "+car.get인도금()+" "+car.get할부원금()+" "+car.월납임금);
		System.out.println(car2.get차량명()+" "+car2.차량총액+" "+car2.인도금+" "+car2.할부원금+" "+car2.할부원금+" "+car2.get월납임금());
		
		System.out.println("차량 총액의 합계 " + (car.get차량총액() + car2.get차량총액()));
		System.out.println("월납임금의 합계 " + (car.get월납임금() + car2.월납임금));
		
		// 산타페가 차량총액 40000000으로 수정이 됐다면
		
		car.set차량총액(40000000);
		System.out.println(car.get차량명()+" "+car.get차량총액()+" "+car.get인도금()+" "+car.get할부원금()+" "+car.월납임금);

	}

}
