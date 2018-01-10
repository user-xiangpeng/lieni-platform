package Demo;

import java.io.InputStream;
import java.lang.reflect.Field;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import com.mysql.jdbc.Connection;

public class DaoImpl<T> implements Dao<T>{


	Connection con = null;

	String sDBDriver = "org.gjt.mm.mysql.Driver";
	String sConnStr = "jdbc:mysql://localhost:3306/test?useUnicode=true&characterEncoding=utf-8";//设置数据库名称为：pubs
	String username = "root";  //登录数据库用户名
	String password = "";   //登录数据库密码

	//数据库连接
	@Override
	public Connection getConnection(){
		Connection con = null;
		Properties properties = new Properties();
		String driver = sDBDriver;
		String url = sConnStr;
		String user = username;

		try {
			Class.forName(driver);
			con = (Connection) DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
    /**
     * 根据sql查询列表数据，不支持预编译的方式
     */
    public List<Map<String, Object>> executeQueryForList(String sql) throws ClassNotFoundException, SQLException{
    	System.err.println("查询多条："+sql);
    	Connection connect =this.getConnection();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		List<Map<String, Object>> list = this.rsToList(rs);
		this.releaseConnection(rs, stmt, connect);//关闭连接
		return list;
	}
    
	/**
	 * 将ResultSet中的结果包装成list中装Map的结构
	 */
	private List<Map<String, Object>> rsToList( ResultSet rs ) throws SQLException{
		List<Map<String, Object>> row = new ArrayList<Map<String, Object>>();
		 while (rs.next()) {
			 Map<String, Object> col = new HashMap<String, Object>();
			 for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
				 //System.out.println(  rs.getMetaData().getColumnType(i)  );
				 switch( rs.getMetaData().getColumnType(i) ){
			 	 case Types.VARCHAR:
			 		col.put(rs.getMetaData().getColumnName(i), rs.getString(i));
			 		break;
			 	 case Types.INTEGER:
				 	col.put(rs.getMetaData().getColumnName(i), rs.getInt(i));
				 	break;	
			 	 case Types.BLOB:
			 		InputStream in = rs.getBinaryStream(i);

				 	col.put(rs.getMetaData().getColumnName(i), in );
				 	break;	
				 default:
					 col.put(rs.getMetaData().getColumnName(i), rs.getString(i));
				 	break;	
				 }
			 }
			row.add(col);
		}
		 return row;
	}
	
	
	/**
	 * 将ResultSet结果集存入list中
	 * @param <T>
	 * @param rs
	 * @param stmt
	 * @param connect
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 * @throws SQLException
	 */
	public List<T> rsList1(ResultSet rs,Class<T> returnClass) throws InstantiationException, IllegalAccessException, SQLException{
		System.out.println("name:"+returnClass.getName());
		
		List<T> list = new ArrayList<T>();
		Field[] ss = returnClass.getDeclaredFields();
		T da = returnClass.newInstance();
		
		while (rs.next()) {
			 for (int i = 0; i < ss.length; i++) {
				 switch( rs.getMetaData().getColumnType(i+1) ){
			 	 case Types.VARCHAR:
			 		 ss[i].set(da, rs.getString(i+1));
			 		break;
			 	 case Types.INTEGER:
			 		 ss[i].set(da, rs.getInt(i+1));
				 	break;	
			 	 case Types.BLOB:
			 		InputStream in = rs.getBinaryStream(i+1);
			 		ss[i].set(da, in);
				 	break;	
				 default:
					 ss[i].set(da, rs.getString(i+1));
				 	break;	
				 }
			 }
		}
		list.add(da);
		return list;
	}
    /**
     * 根据sql查询数据,返回对象结果集
     */
	public List<T> executeQueryForList1(String sql,Class<T> returnClass) throws ClassNotFoundException, SQLException{
    	System.err.println("查询多条："+sql+"当前对象:"+returnClass);
    	Connection connect =this.getConnection();
		Statement stmt = connect.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		List<T> list = null;
		try {
			list = this.rsList1(rs,returnClass);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		this.releaseConnection(rs, stmt, connect);//关闭连接
		return list;
	}
    
	
	//关闭连接
	private void releaseConnection(ResultSet rs, Statement stmt, Connection connect) throws SQLException{
	    try {
	        if (rs != null){
	            rs.close();
	        }
	        if (stmt != null){
	        	stmt.close();
	        }
	        if (connect != null && !connect.isClosed()){
	        	connect.close();
	        }
	    } catch (SQLException se){
	        System.out.println("Close the connection encounter error!\n" + se.getMessage());
	        throw new SQLException("关闭连接异常！");
	    }
	}
	
	
}
