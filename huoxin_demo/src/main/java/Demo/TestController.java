package Demo;

import java.sql.SQLException;
import java.util.List;

public class TestController {

	Dao<User> dao = new DaoImpl<User>();

	public List<User> query() throws ClassNotFoundException, SQLException{
		
		 List<User> list = dao.executeQueryForList1("select * from user",User.class);
		 System.out.println("id:"+list.get(0).getId());
		 return list;
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		TestController TestController = new TestController();
		TestController.query();
	}
}
