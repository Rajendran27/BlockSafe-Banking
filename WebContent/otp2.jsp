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


<!-- <style type="text/css">


@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap');
body{
  height:100vh;
  font-family: 'Poppins', sans-serif;
  background-position:center center;
}
h2{
  font-size:40px;
  text-align:center;
  color:#00000080;
}
input[type="text"]{
  width:400px;
  height:45px;
  background:#ffffff;
  border:4px solid #676ed1;
  border-radius:4px;
  font-size:18px;
  padding-left:8px;
}
input[type="text"]:focus{
  border:4px solid #676ed1;
  outline:none;
  box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25);
}
#errorMsg{
  color:red;
  text-align:left;
  margin-top:2px;
}
a{
  width:150px;
  height:50px;
  background-color:#676ed1;
  border:4px solid #676ed1;
  color:white;
  font-size:18px;
  border-radius:8px;
  margin-top:15px;
}
a{
  width:100%;
    display:flex;
  justify-content:start
}
.myForm{
  display:grid;
  width:100%;
  height:100%;
  justify-content:center;
  
}











</style>

 -->







</head>
<body>



<%
/* Random r1=new Random(); 

String key2="0123456789";

char c5=key2.charAt(r1.nextInt(key2.length()));
char c6=key2.charAt(r1.nextInt(key2.length()));
char c7=key2.charAt(r1.nextInt(key2.length()));
char c8=key2.charAt(r1.nextInt(key2.length()));
char c9=key2.charAt(r1.nextInt(key2.length()));
String t6=""+c5+""+c6+""+c7+""+c8+""+c9; 
String a="E"; */
/* session.setAttribute("otp", t6); */
String ss=request.getParameter("pin");
String ss2=request.getParameter("p");



if(ss.equals(ss2)){
	
	response.sendRedirect("otp3.jsp");
	
	
}else{
	
	response.sendRedirect("error.jsp");
	
















%>

<%}%>
<%-- <form name="myForm" action="/action_page.php" onsubmit="return validateForm()" method="post">
  <div class="myForm">
    <h2>This is your OTP</h2>
        <label></label>
  <div>
  <input type="text" value="<%=t6%>" name="fname">
  
  </div>
    <div class="submit">
  <a href="otp.jsp">Back</a>
    
    </div>
  </div>
  
</form>


 --%>



</body>
</html>