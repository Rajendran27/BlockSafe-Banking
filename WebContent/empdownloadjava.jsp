
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
<style type="text/css">

body{

background-image: url("image/banner1.jpg");



}


















</style>

















</head>
<body>





<%


/* String upiidd=request.getParameter("upiid");
String amount=request.getParameter("amount");
String upiid=request.getParameter("upipin"); */
String pin=session.getAttribute("enterpin").toString();
/* String otp=request.getParameter("t6");
 */
 
String as= session.getAttribute("useremail").toString();


String t6=session.getAttribute("otp").toString();





/* String key1=request.getParameter("fkeyl");
String mailid=request.getParameter("mailid");
 */

/* mail1.mail(as, "The OTP generation for secure transaction at FB. Do not share OTP for security reasons. This OTP is valid only for the next 5 minutes : " +t6);
 *//* String key2=request.getParameter("headkey"); */

System.out.println("download0000000000000000000===="+t6);  
JOptionPane joptionpane =new JOptionPane("CLICK OK");


JDialog jdialog= joptionpane.createDialog("Alert");

jdialog.setAlwaysOnTop(true);

jdialog.show();

String newkey =JOptionPane.showInputDialog("Enter Your upi pin");


if(newkey.equals(pin))

{
 response.sendRedirect("otpviewpage.jsp");
}


/* 


String realpath = getServletContext().getRealPath("/");
String filepath = realpath.substring(0, realpath.indexOf("."))
		+ "CC02\\WebContent\\Local\\";



String filename=request.getParameter("fname1");
System.out.println(filename);


/*	 String filepath="E:\\2016 Web\\ITJDM15\\WebContent\\compress\\"+compress+".zip";*/


 /*  response.setContentType("APPLICATION/OCTET-STREAM");   
  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  
  
FileInputStream fileInputStream=new FileInputStream(filepath+filename);  
  

  int i;   
  while ((i=fileInputStream.read()) != -1) {  
    out.write(i);   
  }   
  
  fileInputStream.close(); 

  
} */


/* catch(Exception e)

{
	e.printStackTrace();
}


}
 */
 else
{
System.out.println("failed");
	
	JOptionPane.showMessageDialog(null, "Sorry Your key is wrong");
	session.setAttribute("no", "2");
	response.sendRedirect("upiverified.jsp");
	
}		
 

%>



</body>
</html>