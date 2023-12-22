package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx02 {

	public static void main(String[] args) {
		// String ��ü Set �ֱ�
		// Set�� ���� Ŭ���� HashSet, TreeSet
		
		Set<String> set = new HashSet<String>(); // ctrl + shift + o -> import �ڵ����� ��Ű��
		
		set.add("���");
		set.add("��");
		set.add("��");
		set.add("�ٳ���");
		set.add("���");
		set.add("��");
		
		// Set �ȿ� ��� ���� ���ϱ�
		System.out.println(set.size());
		
		// "�޷�" �Ⱦƿ�?
		System.out.println(set.contains("�޷�"));
		
		// Set �ȿ� �ִ� ��� ��� ����ϱ�
		Iterator<String> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		// Set �ȿ� �ִ� ��� ��� �����
		set.clear();
		
		System.out.println(set.size());
		
		
		

	}

}
