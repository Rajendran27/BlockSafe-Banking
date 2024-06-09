<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        pageEncoding="ISO-8859-1"%>
<%@page import="dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
    <%@page import="mail.mail1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Button Examples</title>
    <!-- Link HTML file to CSS stylesheet -->
    <link rel="stylesheet" href="style.css"/>
  
  
  
  
  
  <style type="text/css">
  /* Styling for the body */
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body{
    display: flex;
    height: 100vh;
    background-color: #343a40;
}

#container{
    margin:auto;
    display: flex;
    color:#f8f9fa;
    flex-direction: column;
    width:500px;
    box-shadow: 1px 2px 71px -6px rgba(0,0,0,0.67);
    height:fit-content;
    font-family: 'Ubuntu', sans-serif;
    background-color: #212529;
    padding:50px 20px;
    border-radius: 10px;
}
#Heading{
    padding:10px;
    text-align: center;
    font-size: 2.5em;
    font-weight: 900;
}
label{
    font-size: 1.2em;
    font-weight: 500;
    margin:10px 0px;
}
input{
    padding:10px;
    border-top-right-radius: 10px;
    height: 50px;
    border: none;
    background-color: #6c757d;
    border-bottom-right-radius:10px;
    font-size:19.2px;
    
    color:#f8f9fa;
}
input:focus{
    outline: none;
    background-color: none;
}
input::placeholder{
    color:#f8f9fa;
    font-size: 19.2px;
}
.row{
    width:100%;
    height:fit-content;
    display: grid;
    grid-template-columns: 10% 90%;
    grid-template-rows: 50px;
}
.icon{
    height: 50px;
    margin-right:1px;
    background-color: #6c757d;
    border-top-left-radius: 10px;
    padding:10px;
    border-bottom-left-radius: 10px;
    fill:white;
}
button{
    width:fit-content;
    margin:20px auto;
    padding:10px 20px;
    outline: none;
    border: none;
    border-radius: 20px;
    font-weight: 700;
    color:white;
    background-color: #248277;
    font-family: 'Ubuntu', sans-serif;
    font-size: 1.1em;
    cursor: pointer;
    transition-duration: 0.25s;
}
button:hover{
    background-color: #036666;
}
span{
    display: flex;
    justify-content: space-between;

}
a{
    text-decoration: none;
    color:#99e2b4;
}
span>span>a{
    margin:0px 5px
}
a:hover{
    color: #06d6a0;
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  </style>
  
  
  
  
  
  
  
  
  
  
  
  
  </head>
  <body>
    
    <%
  String enterpin = request.getParameter("upipin");
 session.setAttribute("enterpin",enterpin);
    String upiid = session.getAttribute("upiid").toString();
    String upipin = session.getAttribute("upipin").toString();
    String amount = session.getAttribute("amount").toString();
    String number = session.getAttribute("number").toString();
    String umail=session.getAttribute("useremail").toString();
    String t6=session.getAttribute("otp").toString();
    mail1.mail(umail, "The OTP generation for secure transaction at FB. Do not share OTP for security reasons. This OTP is valid only for the next 5 minutes : " +t6);

    int reg=0;
    Connection con=(Connection) dbconn.create(); 
    boolean log=false;
  
    
    try {
  	    
  	  
      PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+umail+"' and upipin='"+enterpin+"'");
  	 
      
      	         
      
       ResultSet rs=ps.executeQuery();
         log=rs.next(); 
       System.out.println(log);
    }
    catch(SQLException e)  {
  	  
  	  e.printStackTrace();
    }
       
    if(log==true){
  	  
    
    %> 
    
    
    
    <form id="container" action="image.jsp" method="post">

        
        
        <label> OTP:</label>
        <div class="row">
        
        <div class="icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="30px"><path d="M336 352c97.2 0 176-78.8 176-176S433.2 0 336 0S160 78.8 160 176c0 18.7 2.9 36.8 8.3 53.7L7 391c-4.5 4.5-7 10.6-7 17v80c0 13.3 10.7 24 24 24h80c13.3 0 24-10.7 24-24V448h40c13.3 0 24-10.7 24-24V384h40c6.4 0 12.5-2.5 17-7l33.3-33.3c16.9 5.4 35 8.3 53.7 8.3zM376 96a40 40 0 1 1 0 80 40 40 0 1 1 0-80z"/></svg></div><input type="text" name="enterpin"  placeholder="Enter OTP" required></div>
<input type="hidden" value="<%=upipin%>" name="p">
<input type="hidden" value="<%=upiid%>" name="p">

<input type="hidden" value="<%=amount%>" name="p">
<input type="hidden" value="<%=number%>" name="p">

        <button type="submit">Submit</button>
        <span><span><a href="empdownloadjava.jsp">Get OTP</a></span>
       <%}else{
    	   session.setAttribute("no", "2");
       response.sendRedirect("otp.jsp");
       
       
       } %>
       
    </form>
  </body>  
</html>