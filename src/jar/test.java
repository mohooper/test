package jar;

import java.util.*;

public class test {
	public  static String str="aaa";

	public static void main(String[] args) {
		List<Book> aa=new ArrayList();
		aa.add(new Book());
		aa.add(new Book());
		aa.add(new Book());
		aa.add(new Book());
		aa.add(new Book());
		aa.add(new Book());
		
		
//		for(int i:aa){
//			if(i>2)aa.remove(i);
//		}
		
//		for(int j=0;j<5;j++){
		for(int i=0;i<aa.size();i++){
			if(i==0)aa.add(new Book());
		}
//		}
		//迭代器，增删对象，会报错，ConcurrentModificationException
		for(Book s:aa){
//			if(aa.size()>6)
//			aa.remove(s);
			
			if(aa.size()<8)aa.add(new Book());
		}
		
		
		System.out.println(aa.size());
		
    }
}
