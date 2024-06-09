package Imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;




import dbconn.sregbean;

import dbconn.dbconn;
import Inter.Inter;

public class Imple implements Inter {

	Connection con;
	
	public int sreg(sregbean sb) {
int reg=0;
		
		con=dbconn.create();
		
		try {
 			
				PreparedStatement ps=con.prepareStatement("INSERT INTO bankingemail.userreg VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, sb.getName());
				ps.setString(2, sb.getEmail());
				ps.setString(3, sb.getMobile());
				ps.setString(4, sb.getPassword());
				
				ps.setString(5, "");
				ps.setString(6, " ");
				ps.setString(7, " ");
				ps.setString(8, " ");
				ps.setString(9, " ");
				ps.setString(10, " ");
				ps.setString(11, " ");
				ps.setString(12, " ");
				
				ps.setString(13, " ");
				
				ps.setString(14, " ");
				ps.setString(15, " ");
				ps.setString(16, " ");
				ps.setString(17, " ");
				ps.setString(18, " ");
				
				
				
				
				reg=ps.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
return reg;

}
	
	
}
