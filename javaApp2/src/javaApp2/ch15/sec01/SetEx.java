package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		// Set 특징 : 중복된 요소를 제거한다. 중복으로 저장되지 않는다.
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		
		System.out.println(set.size());
		
		// 출력
		Iterator<Integer> it = set.iterator(); //반복
		while (it.hasNext()) {
			System.out.println(it.next()); //순서 없이 출력
		}
		
		// Set 안에 40이 있나요?
		System.out.println(set.contains(40));
		
		// Set 안에 요소가 비어있나요?
		System.out.println(set.isEmpty());
		
		// Set 안에 요소 50을 지우세요
		set.remove(50);
		
		it = set.iterator(); 
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		// Set 안에 요소 100 추가하고 80 지우기
		set.add(100);
		set.remove(80);
		
		it = set.iterator(); 
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		
	}
	

}
