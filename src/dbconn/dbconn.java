package dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconn {
	
	static Connection con;
	public static Connection create(){


		try{
			
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/bankingemail","root","root");
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
		}
}

