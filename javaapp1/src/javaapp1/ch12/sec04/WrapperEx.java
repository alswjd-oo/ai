package javaapp1.ch12.sec04;

public class WrapperEx {

	public static void main(String[] args) {
		// �ڷ��� -�⺻�� byte char int long boolean float double
		//      -������ Ŭ������ ���� (String .. )
		// �⺻���� Ŭ������ �ƴϹǷ� �̸� ������� �޼ҵ尡 ����. �⺻�� �ڷ����� Ŭ������ ����� ��
		// �ٽ� �⺻��-->��ü, ��ڽ� ��ü -->�⺻��
		Integer a = 10;
		Integer a1 = new Integer(10);
		String as = a.toString(); //10--> "10"
		
		double da = a.doubleValue();
		System.out.println(da);
		System.out.println(a.MAX_VALUE);
		System.out.println(a.MIN_VALUE);
		System.out.println(a.SIZE);
		
		// 3.14--> "3.14"
		Double pi = 3.14;
	
		// double���� �ִ밪��?
		System.out.println(pi.MAX_VALUE);
		
		// double���� ������?
		System.out.println(pi.SIZE);
		
		// 10.1, 5.4 ū�� ����ϱ�
		Double b = 10.1;
		Double c = 5.4;
		System.out.println(b.max(10.1, 5.4));
	}

}