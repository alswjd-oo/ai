package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx02 {

	public static void main(String[] args) {
		// String 객체 Set 넣기
		// Set의 구현 클래스 HashSet, TreeSet
		
		Set<String> set = new HashSet<String>(); // ctrl + shift + o -> import 자동으로 시키기
		
		set.add("사과");
		set.add("배");
		set.add("귤");
		set.add("바나나");
		set.add("사과");
		set.add("배");
		
		// Set 안에 요소 개수 구하기
		System.out.println(set.size());
		
		// "메론" 팔아요?
		System.out.println(set.contains("메론"));
		
		// Set 안에 있는 요소 모두 출력하기
		Iterator<String> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		// Set 안에 있는 요소 모두 지우기
		set.clear();
		
		System.out.println(set.size());
		
		
		

	}

}
