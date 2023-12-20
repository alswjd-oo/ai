package javaapp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelesEx {

	public static void main(String[] args) {
		TimeZone timeZone = TimeZone.getTimeZone("America/Los_Angeles");
		TimeZone timeZone1 = TimeZone.getTimeZone("JST");
		TimeZone timeZone2 = TimeZone.getTimeZone("Asia/Seoul");
		
        Calendar now = Calendar.getInstance(timeZone1);
        System.out.println(now.get(Calendar.MONTH) + "��" + now.get(Calendar.DAY_OF_MONTH) + "��");
        System.out.println(now.get(Calendar.HOUR) + "��" + now.get(Calendar.MINUTE) + "��");
        
        // ������ Ÿ���� ���̵� 
        String[] av= TimeZone.getAvailableIDs();
        for(String id : av) {
        	System.out.println(id);
        }
        
        LocalDateTime now1 = LocalDateTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy.MM.dd HH.mm.ss");
        System.out.println("����ð�: " + now1.format(dtf));
        
        // 1�� ��
        LocalDateTime now1After = now1.plusYears(1);
        System.out.println("1�� ��: " + now1After.format(dtf));
        
        // 3�� ��
        LocalDateTime now1Before = now1.minusYears(3);
        System.out.println("3�� ��: " + now1Before.format(dtf));
        
        //������: ���� ��¥ �ݳ���: 2�� �� ��¥
        LocalDateTime now1After1 = now1.plusWeeks(2);
        System.out.println("������: " + now1.format(dtf));
        System.out.println("�ݳ���: " + now1After1.format(dtf));
	}

}
