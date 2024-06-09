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
<style type="text/css">
 *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;


}

table {
  max-width: 930px;
  margin: 10px auto;
width: 100%;


}

caption {
  font-size: 1.6em;
  font-weight: 400;
  padding: 10px 0;
}

thead th {
  font-weight: 400;
  background: #8a97a0;
  color: #FFF;
}

tr {
  background: #f4f7f8;
  border-bottom: 1px solid #FFF;
  margin-bottom: 5px;
}

tr:nth-child(even) {
  background: #e8eeef;
}

th, td {
  text-align: left;
  padding: 20px;
  font-weight: 300;
}

tfoot tr {
  background: none;
}

tfoot td {
  padding: 10px 2px;
  font-size: 0.8em;
  font-style: italic;
  color: #8a97a0;
}
 
 
 
 
 
 
 
 
 
 
 
 
 </style>




</head>
<body>
<table>
      <caption>Customer Request</caption>
      <thead>
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
        
       <th scope="col">mobile number</th>
       
       <th scope="col">Location</th>
       <th scope="col">Address</th>
       
   <!--      <th scope="col">Branch</th>
       
        <th scope="col">Bank name</th> -->
       
       
       
       
       
       
       
       
        <th scope="col">Accept</th>
         <th scope="col">Reject</th>
       
       <!--  <th scope="col">Reject</th> -->
       
        </tr>
      </thead>

 <% 
Connection con;
   
     
     
         
    
    
    
    
    

con=dbconn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where status='apply' and type='new'");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 
		String d=rs.getString(3);

		session.setAttribute("gmail", d);
		
		
		
		
%>
      
      <tbody>
        <tr>
          <th scope="row"><%=rs.getString(2) %></th>
          <td><%=  rs.getString(3) %></td>
          <td><%=  rs.getString(4) %></td>
      
    
        <td><%=  rs.getString(17) %></td>
        <td><%=  rs.getString(18) %></td>
       
      <%-- 
          <td><%=  rs.getString(12) %></td>
      
          <td><%=  rs.getString(13) %></td> --%>
      
      
      
      
      
      
      
      
          <td>
		     <a href="accept.jsp?id=<%=rs.getString(1)%>&&email=<%=rs.getString(3)%>&&type=2">
		     <button class="btn btn-Dark" onclick="myFunction()">ACCEPT</button></a>
	     </td>
	     <td>
		     <a href="reject.jsp?id=<%=rs.getString(1)%>&&email=<%=rs.getString(3)%>">
		     <button class="btn btn-danger" onclick="myFunction()">REJECT</button></a>
	     </td> 
      
      
      
      
        </tr>
        
      
      
      
      
      
      
      
      
   
      </tbody> 
    </table>
    

<%  }  %>








</body>
</html>