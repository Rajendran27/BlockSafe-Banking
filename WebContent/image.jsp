<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="servlet.Block"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>





















<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String otp=session.getAttribute("otp").toString();
String enterpin=request.getParameter("enterpin");
System.out.println(enterpin);
String msg="1234";
String pinid=msg.concat(otp);
System.out.println("otp"+pinid);
if(enterpin.equals(pinid)){
String ass= session.getAttribute("amount").toString();
String num=session.getAttribute("number").toString();

String as= session.getAttribute("useremail").toString();
int amt=0;
int amount2=0;
int amt2=0;
int amount=0;



%>




<% 

String prehash="";
		String afterhash="";
		
		
	Connection con=dbconn.create();
		try {
			
			PreparedStatement pa=(PreparedStatement) con.prepareStatement("SELECT phash,ahash FROM `bankingemail`.`userreg`");
			ResultSet rs=pa.executeQuery();
			
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			}	 
		 catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}


		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;

		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash; 
				
		
				
		
				Statement st3;
				try {
					st3 = con.createStatement();
					st3.executeUpdate("UPDATE bankingemail.userreg u SET phash='"+prehash+"',ahash='"+aphas+"' ");
					
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
		
		
		
				%>
<% 

 try {
	          
	          con=dbconn.create();
	          PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+as+"' ");
	          
	          ResultSet rs;
			
				rs = ps.executeQuery();
				
	
				
				
				
				while(rs.next())
				  {
					 amount=  rs.getInt(11); 
			
				
				  }
				
				PreparedStatement ps1=(PreparedStatement) con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where accountno='"+num+"' ");
		          
		          ResultSet rs1;
				
					rs1 = ps1.executeQuery();
					
					
					while(rs1.next())
					  {
						 amount2=  rs1.getInt(11); 
						
							
				   
			
					  }
				int i=Integer.parseInt(ass);
				

				

				
					
					amt=amount-i;
					amt2=i+amount2;
				session.setAttribute("amt3", amt2);
				Statement st=con.createStatement();
					
				
				st.executeUpdate("UPDATE bankingemail.userreg SET balance='"+amt+"'  where email='"+as+"' ");
				Statement st1=con.createStatement();
					st1.executeUpdate("UPDATE bankingemail.userreg SET balance='"+amt2+"'  where accountno='"+num+"' ");
					response.sendRedirect("success.jsp");
 } 

catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
					
				

		          
		          
}
else{
	session.setAttribute("no", "2");
	response.sendRedirect("upiverified.jsp");
}
		         
		    	 
		      


		      %>







</body>
</html>