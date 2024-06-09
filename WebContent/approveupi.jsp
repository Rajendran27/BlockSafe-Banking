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

<%


String m=session.getAttribute("useremail").toString();






%>











<table>
      <caption>APPROVE LIST</caption>
      <thead>
        <tr>
         
        
      
     
       <th scope="col">Account number</th>
     
         <th scope="col">UPI ID</th>
        
          <th scope="col">UPI PIN</th>
      
       
       
       
       
       
       
       
       
       
       <!--  <th scope="col">Reject</th> -->
       
        </tr>
      </thead>

 <% 
Connection con;
   
     
     
         
    
    
    
    
    

con=dbconn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+m+"' ");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 
		

%>
      
      <tbody>
        <tr>
          <th scope="row"><%=rs.getString(2) %></th>
          <td><%=  rs.getString(3) %></td>
          <td><%=  rs.getString(4) %></td>
      
    
        <td><%=  rs.getString(7) %></td>
        <td><%=  rs.getString(8) %></td>
       
      
          <td><%=  rs.getString(11) %></td>
      
          <td><%=  rs.getString(12) %></td>
      
      
      
      
      
      
      
      
        
      
      
        </tr>
        
      
      
      
      
      
      
      
      
   
      </tbody> 
    </table>
    

<%  }  %>








</body>
</html>