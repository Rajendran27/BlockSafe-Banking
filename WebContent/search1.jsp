<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%
  String number = request.getParameter("number");
    String upiid = request.getParameter("upiid");
    String upipin =request.getParameter("upipin");
    String amount =request.getParameter("amount");
    String branch =request.getParameter("branch");
    String name =request.getParameter("name");
   
    System.out.println(number);
    
    
    session.setAttribute("number", number);
    session.setAttribute("pin", upipin);
    
    
    session.setAttribute("upiid", upiid);
    session.setAttribute("upipin", upipin);
    session.setAttribute("amount", amount);
    
    response.sendRedirect("otp.jsp");
  
    
    
    %> 
    












