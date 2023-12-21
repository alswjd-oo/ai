package javaApp2;

import java.util.Vector;

public class VectorEx {

	public static void main(String[] args) {
		// 스레드 여러 개의 cpu를 사용하면서 멀티프로그래밍하는 것
		// Vector 컬랙션은 스레드의 자료를 담기 위한 구조
		// 이용 분야 : 스레드로 멀티 프로그래밍 할 때 순서가 있고 중복 저장할 수 있는 자료구조
		
		Vector<Double> dArr = new Vector<Double>();
		
		// 10.4, 8.8, 9.4, 3.7
		dArr.add(10.4);
		dArr.add(8.8);
		dArr.add(9.4);
		dArr.add(3.7);
		
		// 8.8 뒤에 7.9 넣기
		dArr.add(2, 7.9);
		
		//
		

	}

}
