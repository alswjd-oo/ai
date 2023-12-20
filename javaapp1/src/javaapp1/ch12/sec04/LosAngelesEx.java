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
        System.out.println(now.get(Calendar.MONTH) + "월" + now.get(Calendar.DAY_OF_MONTH) + "일");
        System.out.println(now.get(Calendar.HOUR) + "시" + now.get(Calendar.MINUTE) + "분");
        
        // 전세계 타임존 아이디 
        String[] av= TimeZone.getAvailableIDs();
        for(String id : av) {
        	System.out.println(id);
        }
        
        LocalDateTime now1 = LocalDateTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy.MM.dd HH.mm.ss");
        System.out.println("현재시간: " + now1.format(dtf));
        
        // 1년 후
        LocalDateTime now1After = now1.plusYears(1);
        System.out.println("1년 후: " + now1After.format(dtf));
        
        // 3년 전
        LocalDateTime now1Before = now1.minusYears(3);
        System.out.println("3년 전: " + now1Before.format(dtf));
        
        //대출일: 오늘 날짜 반납일: 2주 후 날짜
        LocalDateTime now1After1 = now1.plusWeeks(2);
        System.out.println("대출일: " + now1.format(dtf));
        System.out.println("반납일: " + now1After1.format(dtf));
	}

}
