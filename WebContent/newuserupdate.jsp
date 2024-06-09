<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbconn.dbconn"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%;
	 String email = request.getParameter("name");
	 String bank = request.getParameter("email"); 
	 String acc = request.getParameter("acc");
	 String ifsc = request.getParameter("ifsc");
	 String branch = request.getParameter("branch");
	 String upi = request.getParameter("upi");
	 String bal = request.getParameter("bal");

	 
	 
	 Connection conn;


	 conn=dbconn.create();
	 PreparedStatement ps=conn.prepareStatement("UPDATE `bankingemail`.`userreg` SET balance='"+bal+"',upiid='"+upi+"',upipin='"+upi+"',branch='"+branch+"',ifsc='"+ifsc+"',accountno='"+acc+"',bankname='"+bank+"' where status='Approved' and email='"+email+"' ");

	 ps.executeUpdate();
	 
	 response.sendRedirect("uploadsuccess.jsp");

 %>