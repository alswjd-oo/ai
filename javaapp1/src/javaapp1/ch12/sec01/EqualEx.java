package javaapp1.ch12.sec01;

public class EqualEx {

	public static void main(String[] args) {
		// 동등객체 비교 알고리즘
		// 1단계 hashCode가 같은가? 2단계 equals()가 같은가?
		// hashCode는 주기억장치에 저장될 때 주소를 만들어 주는 코드임
		Student s1 = new Student("a123", " p1234");
		System.out.println(s1.hashCode());
		Student s2 = new Student("a123", " p1234");
		System.out.println(s2.hashCode());
		//개발자 요구사항 : id와 pad 같으면 동등객체입니다.
		if(s1.equals(s2)) {
			System.out.println("같은 사람");
		} else {
			System.out.println("다른 사람");
		}
		

	}

}

class Student {
	
	String id;
	String pad;
	
	public Student(String id, String pad) {
		this.id = id;
		this.pad = pad;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return id.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Student) {
			Student st = (Student) obj; // object형을 Student형으로 강제형변환
			if(this.id.equals(st.id) && this.pad.equals(st.pad)) { 
				//this.id 첫번째 객체의 "a123" 있음
				//this.pad 첫번째 객체의 "p1234" 이고 st.id는 두번째 객체의 "p1235"
				return true;
			}
	    }
		return false;
	}
}
//String name = "홍길동";
//System.out.println(name.hashCode());
//String name2 = "이순신";
//System.out.println(name2.hashCode());
//String name3 = "홍길동";
//System.out.println(name3.hashCode());
//
//String name4 = new String("최재우");
//System.out.println(name4.hashCode());
//String name5 = new String("최재우");
//System.out.println(name5.hashCode());