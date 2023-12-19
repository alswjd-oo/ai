package javaapp1.ch12.sec01;

public class EqualEx2 {

	public static void main(String[] args) {
		Netflix n1 = new Netflix("100", "a123", "p123");
		Netflix n2 = new Netflix("100", "a124", "p1234");
		Netflix n3 = new Netflix("100", "a125", "p1235");
		Netflix n4 = new Netflix("100", "a126", "p1237");
		
		Netflix n5 = new Netflix("200", "a123", "p123");
		Netflix n6 = new Netflix("300", "a123", "p1237");

		
		if(n5.equals(n6)) {
			System.out.println("같은 객체");
		} else {
			System.out.println("다른 객체");
		}


	}

}

class Netflix {
	String key;
	String id;
	String pwd;
	public Netflix(String key, String id, String pwd) {
		super();
		this.key = key;
		this.id = id;
		this.pwd = pwd;
	}
	
	//동등객체는 key가 같은 사람
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return key.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Netflix) {
			Netflix np = (Netflix) obj;
		    if(this.key.equals(np.key)) {
		    	return true;
		    }
		}
		return false;
	}
}