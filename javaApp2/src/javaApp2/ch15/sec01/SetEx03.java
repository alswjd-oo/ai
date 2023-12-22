package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx03 {

	public static void main(String[] args) {
		
		Member m1 = new Member("홍길동", 25);
		Member m2 = new Member("홍길동2", 30);
		Member m3 = new Member("홍길동3", 25);
		Member m4 = new Member("홍길동2", 30);
		Member m5 = new Member("홍길동", 25);
		
		// Set 안에 Member클래스 주소를 넣는다
		Set<Member> set = new HashSet<Member>();
		
		set.add(m1);
		set.add(m2);
		set.add(m3);
		set.add(m4);
		set.add(m5);
		
		// 요소 개수는?
		System.out.println(set.size());
		
		// 이름과 나이가 같으면 같은 사람 HashCode() equals()
		
		// 모두 출력하기 
		Iterator<Member> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next().toString());
			//주소를 출력하면 자동으로 toString()으로 붙는다
			//toString() - Object클래스의 메소드
			//자식인 Member에서 toString() 재정의하면 자식 메소드로 반영된다
		}
		
		

	}

}

class Member{
	String name;
	int age;
	public Member(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	// 동등객체를 사용자정의(개발자가 정의)하려면 HashCode()와 equals()를 재정의해야 한다
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		Integer age1 =Integer.valueOf(age); //기본형 int age를 클래스형 Integer로 바꿈
		return name.hashCode() + age1.hashCode(); //"+" 개발자 마음대로 
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Member) {
			Member m = (Member) obj;
			if(name.equals(m.name) && age == m.age ) {
				return true;
			}
		}
		return false;			
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name + " " + age;
	}
}