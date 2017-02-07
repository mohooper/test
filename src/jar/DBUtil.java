package jar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBUtil {
    public static String driver="com.mysql.jdbc.Driver";
    private static String url="jdbc:mysql://localhost:3306/db1";
    private static String username="root";
    private static String password="qiang520HT";
//    
//    static{
//    	driver="com.mysql.jdbc.Driver";
//    	url="jdbc:mysql://localhost:3306/db1";
//    	username="root";
//    	password="qiang520HT";
//    }
	public static Connection open()
	{
		try {
			System.out.println(22);
			Class.forName(driver);
			System.out.println(33);
			return DriverManager.getConnection(url,username,password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;				
	}	
	public static void close(Connection conn){
        if(conn!=null){
        	try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
        }
	}
	
	public static void main(String[] args) {
		open();
	}
}
