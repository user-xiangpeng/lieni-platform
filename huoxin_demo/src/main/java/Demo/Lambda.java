package Demo;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

public class Lambda {

	public static void main(String[] args) {

		//		String[] atp = {"Rafael Nadal", "Novak Djokovic",  
		//						"Stanislas Wawrinka",  
		//						"David Ferrer","Roger Federer",  
		//						"Andy Murray","Tomas Berdych",  
		//						"Juan Martin Del Potro"}; 
		//
		//		List<String> players =  Arrays.asList(atp); 
		//		
		//		players.forEach((player) -> System.out.print(player + "; "));
		//		
		//		players.forEach(System.out::println);  
		//		

		//		String[] players = {"Rafael Nadal", "Novak Djokovic", 
		//			    "Stanislas Wawrinka", "David Ferrer",
		//			    "Roger Federer", "Andy Murray",
		//			    "Tomas Berdych", "Juan Martin Del Potro",
		//			    "Richard Gasquet", "John Isner"};

		String[] players = {"1", "2", 
				"3", "4",
				"5", "6",
				"7", "8",
				"9", "10"};

		// 1.1 使用匿名内部类根据 name 排序 players
		//			Arrays.sort(players, new Comparator<String>() {
		//			    @Override
		//			    public int compare(String s1, String s2) {
		//			        return (s1.compareTo(s2));
		//			    }
		//			});

		// 1.2 使用 lambda expression 排序 players
		//		Comparator<String> sortByName = (String s1, String s2) -> (s1.compareTo(s2));
		//		Arrays.sort(players, sortByName);
		//
		//		// 1.3 也可以采用如下形式:
		//		Arrays.sort(players, (String s1, String s2) -> (s1.compareTo(s2)));
		//		
		//		System.out.println("sortByName"+sortByName);


		int a[] = {4,32,45,32,65,32,2} ;
		System.out.print("数组排序前的顺序:");
		for(int i=0;i<a.length;i++)
			System.out.print(a[i]+" ");
		Arrays.sort(a);//数组的排序方法
		System.out.print("\n数组排序后的顺序:");
		for(int i=0;i<a.length;i++)
			System.out.print(a[i]+" ");
		System.out.print("\n");

	}
}
