package Demo;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Arraysort {
	
	public static void main(String[] args) {
		
		User user = new User();
		user.setId(1);
		user.setEmail("www.baidu.com");
		user.setUsername("huoxin");
		user.setPassword(123456);
		
		Collection<User> collection = new ArrayList<User>();
		collection.add(user);
		
		Iterator<User> it = collection.iterator();
		
		if(it.hasNext()){
			User user1 = it.next();
			System.out.println(user.getUsername());
		}
	}
}