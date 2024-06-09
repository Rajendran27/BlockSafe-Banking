<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbconn.dbconn"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
 
 <% 
 Connection con;
    
 
 
 String type = request.getParameter("type"); 
 if(type.equals("1")){
 String emaill = request.getParameter("email");   

 
 session.setAttribute("gmail", emaill);
 String adminamount=" ";  
     
 con=dbconn.create();
 PreparedStatement ps1=con.prepareStatement("SELECT * FROM `bankingemail`.`userregister` where gmail='"+emaill+"' ");

 ResultSet rs=ps1.executeQuery();

 while(rs.next())
 {
  
 		adminamount=rs.getString(10);

 		
 		
 		
 		
 }	
 %>
 
 
 
 <% 

 
 
 
 String id = request.getParameter("id").toString();
 String email = request.getParameter("email");
 
 session.setAttribute("setid",id);
 session.setAttribute("setmail",email);
 Connection conn;


conn=dbconn.create();
PreparedStatement ps=con.prepareStatement("UPDATE `bankingemail`.`userreg` SET status='Approved',balance='"+adminamount+"' where status='apply' and email='"+email+"' ");

ps.executeUpdate();
PreparedStatement ps2=con.prepareStatement("UPDATE `bankingemail`.`userregister` SET status='Approved' where gmail='"+email+"' ");

ps2.executeUpdate();



response.sendRedirect("GENERATE.jsp");

 }else{
	 
	 String id = request.getParameter("id").toString();
	 String email = request.getParameter("email");
	 
	 session.setAttribute("setid",id);
	 session.setAttribute("setmail",email);
	 
	 
	 Connection conn;


	 conn=dbconn.create();
	 PreparedStatement ps=conn.prepareStatement("UPDATE `bankingemail`.`userreg` SET status='Approved' where status='apply' and email='"+email+"' ");

	 ps.executeUpdate();
	 
	 response.sendRedirect("addaccount.jsp");

 }
%>








</body>
</html>