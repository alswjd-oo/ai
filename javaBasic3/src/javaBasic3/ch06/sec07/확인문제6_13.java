package javaBasic3.ch06.sec07;

import java.util.Scanner;

public class 확인문제6_13 {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		System.out.print("id>");
		String id = sc.nextLine();
		System.out.print("password>");
		String password = sc.nextLine();
		
		MemberService ms = new MemberService();
		boolean result = ms.login(id, password);
		if(result) {
			System.out.println("로그인 되었습니다.");
			ms.logout(id);
		} else {
			System.out.println("id 또는 password가 올바르지 않습니다.");
		}

	}

}
