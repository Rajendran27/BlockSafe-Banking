<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.io.FileInputStream" %>
    <%@page import="java.io.IOException" %>
    <%@page import="java.io.PrintWriter" %>
    <%@page import="javax.swing.JDialog" %>
    <%@page import="javax.swing.JOptionPane" %>
    <%@page import="mail.mail1" %>
 <%@page import="dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>












<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
Random r1=new Random(); 

String key2="0123456789";

char c5=key2.charAt(r1.nextInt(key2.length()));
char c6=key2.charAt(r1.nextInt(key2.length()));
char c7=key2.charAt(r1.nextInt(key2.length()));
char c8=key2.charAt(r1.nextInt(key2.length()));
char c9=key2.charAt(r1.nextInt(key2.length()));
String t6=""+c5+""+c6+""+c7+""+c8+""+c9; 
String a="E";


%>










</body>
</html>