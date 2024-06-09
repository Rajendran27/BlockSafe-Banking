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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="css1/bootstrap.min.css"> 


</head>
<style>
body{
background-color:#8BA6E9;
}
table{
background-color:#D7B7BC;
}
</style>

 <% String chemail=session.getAttribute("cemail").toString(); %>  
<body>
<center><br><br><br>
<button type="button" class="btn btn-primary" onclick="history.back()">back</button>
</center><br><br>
<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-striped">
    <thead>
      <tr>
       
        <th>Public Email</th>
         <th>Charity mail</th>
        <th>Check No</th>
        <th>Amount Word</th>
         <th>Date</th>
        <th>Amount</th>
       <th>View</th>
       
      
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `scam`.`transmoney` where cemail='"+chemail+"' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	   
    	
    	   
    	
    	   
       %>
    <tbody>
      <tr>
      
	 
      
        <%--  <td><%=rs.getString(1)%></td> --%>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
      
      <td><%=rs.getString(4)%></td> 
        <td><%=rs.getString(5)%></td>
    
       <td><%=rs.getString(6)%></td>
       <td><%=rs.getString(7)%></td>
      

      <td><a href="charityaccount.jsp?=id<%=rs.getString(1)%>&&pemail=<%=rs.getString(2)%>&&cemail=<%=rs.getString(3)%>&&checkno=<%=rs.getString(4)%>&&aword=<%=rs.getString(5)%>&&date=<%=rs.getString(6)%>&&amount=<%=rs.getString(7)%>"><button class="btn btn-primary">Account Balance</button></a> 
       
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>