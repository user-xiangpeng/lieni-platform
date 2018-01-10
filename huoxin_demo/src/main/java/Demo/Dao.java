package Demo;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.mysql.jdbc.Connection;

public interface Dao<T> {

	public Connection getConnection() throws ClassNotFoundException, SQLException;

	 /**
     * 根据sql查询列表数据(查询多条)，不支持预编译的方式
     */
    public List<Map<String, Object>> executeQueryForList(String sql) throws ClassNotFoundException, SQLException;


    public List<T> executeQueryForList1(String sql,Class<T> returnClass) throws ClassNotFoundException, SQLException;


}