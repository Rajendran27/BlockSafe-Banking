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













<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="https://codepen.io/gymratpacks/pen/VKzBEp#0">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    
    <style type="text/css">
    
    *, *:before, *:after {
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

body {
  font-family: 'Nunito', sans-serif;
  color: #384047;/* 
  background-image:url(image/pexels-photo-235985.jpeg);
 */}

form {
  max-width: 300px;
  margin: 10px auto;
  padding: 10px 20px;
  background: #f4f7f8;
  border-radius: 8px;
}

h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

input[type="text"],
input[type="password"],
input[type="date"],
input[type="datetime"],
input[type="email"],
input[type="number"],
input[type="search"],
input[type="tel"],
input[type="time"],
input[type="url"],
textarea,
select {
  background: rgba(255,255,255,0.1);
  border: none;
  font-size: 16px;
  height: auto;
  margin: 0;
  outline: 0;
  padding: 15px;
  width: 100%;
  background-color: #e8eeef;
  color: #8a97a0;
  box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
  margin-bottom: 30px;
}

input[type="radio"],
input[type="checkbox"] {
  margin: 0 4px 8px 0;
}

select {
  padding: 6px;
  height: 32px;
  border-radius: 2px;
}

button {
text-align:center;
  padding: 19px 39px 18px 39px;
  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 200px;
  height:20px;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

fieldset {
  margin-bottom: 30px;
  border: none;
}

legend {
  font-size: 1.4em;
  margin-bottom: 10px;
}

label {
  display: block;
  margin-bottom: 8px;
}

label.light {
  font-weight: 300;
  display: inline;
}

.number {
  background-color: #5fcf80;
  color: #fff;
  height: 30px;
  width: 30px;
  display: inline-block;
  font-size: 0.8em;
  margin-right: 4px;
  line-height: 30px;
  text-align: center;
  text-shadow: 0 1px 0 rgba(255,255,255,0.2);
  border-radius: 100%;
}

@media screen and (min-width: 480px) {

  form {
    max-width: 480px;
  }

}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </style>
    
    <%
  
   Random r1=new Random(); 

    String key2="0123456789mnbvcxzlkjhgfdsaqwertyuiopMNBVCXZASDFGHJKLPOIUYTREWQ";

    char c5=key2.charAt(r1.nextInt(key2.length()));
    char c6=key2.charAt(r1.nextInt(key2.length()));
    char c7=key2.charAt(r1.nextInt(key2.length()));
    char c8=key2.charAt(r1.nextInt(key2.length()));
    char c9=key2.charAt(r1.nextInt(key2.length()));
    String t6=""+c5+""+c6+""+c7+""+c8+""+c9; 
    
    session.setAttribute("otp", t6);
    session.setAttribute("no", "1");
    String a="E";


    
    
    String as= session.getAttribute("useremail").toString();
    
    Connection con;
    
    
    con=dbconn.create();
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+as+"' ");
    
    ResultSet rs=ps.executeQuery();
    
    while(rs.next())
    {
 
 	 

 	
 	String upi=rs.getString(8);
 	  
    
    
    
    
    
    
    
    
    
    
    %>
    
    
    
    
    
    
    
    
    
    
    </head>
    <body>
      <div class="row">
    <div class="col-md-12">
      <form action="Search" method="post">
        <h1> Money Transfer </h1>
        
        <fieldset>
          
          <legend> To</legend>
        
          <label for="name">Account number:</label>
          <input type="text" id="name" name="number">
        
          <label for="email">IFSC:</label>
          <input type="text" id="mail" name="ifsc">
         <%-- <input type="hidden" id="upiid" value=<%=t6%> name="otp"> --%>
           <input type="hidden" id="upiid" value=<%=rs.getString(10)%> name="upipin">
         
          <input type="hidden" id="upiid" value=<%=rs.getString(9)%> name="upiid">
          
          <label for="password">Enter Amount:</label>
          <input type="text" id="password"       name="amount">
        
        <label for="password">Branch:</label>
          <input type="text" id="password"       name="branch">
        <label for="password">Reciepient name:</label>
          <input type="text" id="password"       name="name">
     
        
        
         <!--  <label>Type:</label>
          <input type="radio" id="under_13" value="under_13" name="user_age"><label for="under_13" class="light">Netbanking</label><br>
          <input type="radio" id="over_13" value="over_13" name="user_age"><label for="over_13" class="light">UPI Transfer</label>
           -->
        </fieldset>
       
       <center>
        <button type="submit" style="align:center;">Send Money</button></center>
        
       </form>
        </div>
      </div>
    <%} %>
    </body>
</html>
