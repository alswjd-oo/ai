package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx04 {

	public static void main(String[] args) {
		
		// Board Ŭ������ ��üȭ�ϱ�
		Board b1 = new Board("ȫ�浿", "�ڹ�", "���");
		Board b2 = new Board("�̼���", "���̽�", "����");
		Board b3 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b4 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b5 = new Board("�̼���", "�Ǵٽ�", "���� �� �����");
		
		// Set ��üȭ�ϱ�
		Set<Board> set = new HashSet<Board>();
		
		set.add(b1);
		set.add(b2);
		set.add(b3);
		set.add(b4);
		set.add(b5);
		
		// ��� ������?
		System.out.println(set.size());
		
		// ��ü �����ϱ� 
		Iterator<Board> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next().toString());
		}
		
		
		
	}

}

class Board {
	String writer;
	String title;
	String content;
	
	public Board(String writer, String title, String content) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return writer.hashCode() + title.hashCode() + content.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Board) {
			Board b = (Board) obj;
			if(writer.equals(b.writer) && title.equals(b.title)) {
				return true;
			}
		}
		return false;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return writer + " " + title + " " + content;
	}
}