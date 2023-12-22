package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		// Set Ư¡ : �ߺ��� ��Ҹ� �����Ѵ�. �ߺ����� ������� �ʴ´�.
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		
		System.out.println(set.size());
		
		// ���
		Iterator<Integer> it = set.iterator(); //�ݺ�
		while (it.hasNext()) {
			System.out.println(it.next()); //���� ���� ���
		}
		
		// Set �ȿ� 40�� �ֳ���?
		System.out.println(set.contains(40));
		
		// Set �ȿ� ��Ұ� ����ֳ���?
		System.out.println(set.isEmpty());
		
		// Set �ȿ� ��� 50�� ���켼��
		set.remove(50);
		
		it = set.iterator(); 
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		// Set �ȿ� ��� 100 �߰��ϰ� 80 �����
		set.add(100);
		set.remove(80);
		
		it = set.iterator(); 
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		
	}
	

}
