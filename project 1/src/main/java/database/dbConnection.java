package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection {
	 private static Connection connection=null;
	 
	 
	 public static Connection getConnection() throws ClassNotFoundException, SQLException {
		 
		 String url="jdbc:oracle:thin:@localhost:1521:xe";
		 String user="water_refilling";
		 String password="fast";
	 if(connection==null) {
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 
		 try {
			connection=DriverManager.getConnection(url, user, password);
			if(connection!=null) {
				System.out.println("not okay");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	 }
	return connection;
}
}