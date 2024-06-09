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

 
 
 
 String id = request.getParameter("id").toString();
 
 String email = request.getParameter("email").toString();
 
 Connection con;


con=dbconn.create();
PreparedStatement ps=con.prepareStatement("UPDATE `bankingemail`.`userreg` SET status='Rejected' where status='apply' and email='"+email+"' ");

ps.executeUpdate();
PreparedStatement ps1=con.prepareStatement("UPDATE `bankingemail`.`userreg` SET status='Rejected' where gmail='"+email+"' ");

ps1.executeUpdate();





response.sendRedirect("request.jsp");




%>


<% %>







</body>
</html>