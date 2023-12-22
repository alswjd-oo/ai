package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx03 {

	public static void main(String[] args) {
		
		Member m1 = new Member("ȫ�浿", 25);
		Member m2 = new Member("ȫ�浿2", 30);
		Member m3 = new Member("ȫ�浿3", 25);
		Member m4 = new Member("ȫ�浿2", 30);
		Member m5 = new Member("ȫ�浿", 25);
		
		// Set �ȿ� MemberŬ���� �ּҸ� �ִ´�
		Set<Member> set = new HashSet<Member>();
		
		set.add(m1);
		set.add(m2);
		set.add(m3);
		set.add(m4);
		set.add(m5);
		
		// ��� ������?
		System.out.println(set.size());
		
		// �̸��� ���̰� ������ ���� ��� HashCode() equals()
		
		// ��� ����ϱ� 
		Iterator<Member> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next().toString());
			//�ּҸ� ����ϸ� �ڵ����� toString()���� �ٴ´�
			//toString() - ObjectŬ������ �޼ҵ�
			//�ڽ��� Member���� toString() �������ϸ� �ڽ� �޼ҵ�� �ݿ��ȴ�
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
	
	// ���ü�� ���������(�����ڰ� ����)�Ϸ��� HashCode()�� equals()�� �������ؾ� �Ѵ�
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		Integer age1 =Integer.valueOf(age); //�⺻�� int age�� Ŭ������ Integer�� �ٲ�
		return name.hashCode() + age1.hashCode(); //"+" ������ ������� 
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