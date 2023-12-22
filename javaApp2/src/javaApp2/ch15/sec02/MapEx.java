package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx {

	public static void main(String[] args) {
		
		Map<Integer, String> m = new HashMap<Integer, String>();
		
		// ����, �ֱ�
		m.put(1, "�̼���");
		m.put(2, "�ڼ���");
		m.put(3, "ȫ�浿");
		m.put(3, "ȫ�浿1");
		m.put(3, "ȫ�浿2");
		
		// ����ϱ�, ���� ���� get()
		System.out.println(m.get(1)); //Ű�� ������ ���� ���´�
		System.out.println(m.get(3));
		
		// ũ�� ���ϱ�
		System.out.println(m.size()); //Ű�� �����ϸ� ���ü�� �Ǵ��ϰ� ���ο� ������ ��ü�Ѵ� ��, ������ Ű�� ������ ���´�
		
		// �����ϱ�
		m.remove(3);
		
		System.out.println(m.size());
		
		// ��ü ����ϱ�
		Set<Integer> mKeys = m.keySet();
		
		Iterator<Integer> it1 = mKeys.iterator();
		while(it1.hasNext()) {
			System.out.println(m.get(it1.next()));
		}
		
		// m2�� �� �ֱ�
		Map<String, Double> m2 = new HashMap<String, Double>();
		m2.put("a", 2.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 3.5);
		m2.put("b", 13.5);
		
		
		// 3.5 ���
		System.out.println(m2.get("b"));
		
		 Map<String, String> m3 = new HashMap<String, String>();
		 
		 m3.put("ȫ�浿", "����");
		 m3.put("�̼���", "����");
		 m3.put("�ְ��", "���");
		 m3.put("ȫ�浿", "����");
		 
		 // ũ���?
		 System.out.println(m3.size());
		 
		 // �̼����� ��å��?
		 System.out.println(m3.get("�̼���"));
		 
		 // �ְ���� ��å��?
		 System.out.println(m3.get("�ְ��"));
		 
		 // ȫ�浿�� ��å��?
		 System.out.println(m3.get("ȫ�浿"));
		 
		 // �ְ�̰� ���
		 m3.remove("�ְ��");
		 
		 System.out.println(m3.size());
		 
		 // ��ü ����ϱ�
		 System.out.println(m3.get("ȫ�浿"));
		 System.out.println(m3.get("�̼���"));
		 
		 // ��ü ����Ϸ��� key�� �ݺ��ؼ� �־��ָ� �ȴ�
		 // keySet() ��� Ű�� Set() ��´�	
		 Set<String> m3Keys = m3.keySet(); //Ű���� ��´�
		 
		 Iterator<String> it2= m3Keys.iterator();
		 while(it2.hasNext()) {
			 System.out.println(m3.get(it2.next()));//Ű������ �ݺ��ؼ� ���
		 }
		 
	}

}
