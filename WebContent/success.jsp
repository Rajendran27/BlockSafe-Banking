
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<%@page import="dbconn.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
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
<%@page import=" java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<html style="-moz-osx-font-smoothing: grayscale; -webkit-font-smoothing: antialiased; background-color: #464646; margin: 0; padding: 0;">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="format-detection" content="telephone=no">
        <title>GO Email Templates: Generic Template</title>
        
   
   
   
   <style>
   
   
   body{
   background-color: aqua;
   
   
   
   
   }
   
   
   
   
   
   
   
   </style>
   
   
   
   
   
   
   
   
   
   
   
   
    </head>
    <body bgcolor="#a2d2ff" class="generic-template" style="-moz-osx-font-smoothing: grayscale; -webkit-font-smoothing: antialiased; background-color: #d7d7d7; margin: 0; padding: 0;">
        <!-- Header Start -->
     
     
     
     
     
     
     
     
     
     
     
      
     <%
  
    /* Random r1=new Random(); 

    String key2="0123456789";

    char c5=key2.charAt(r1.nextInt(key2.length()));
    char c6=key2.charAt(r1.nextInt(key2.length()));
    char c7=key2.charAt(r1.nextInt(key2.length()));
    char c8=key2.charAt(r1.nextInt(key2.length()));
    char c9=key2.charAt(r1.nextInt(key2.length()));
    String t6=""+c5+""+c6+""+c7+""+c8+""+c9; 
    String a="E";
 */

 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
 Date date = new Date();  
 System.out.println(formatter.format(date));  
    
 String as1= session.getAttribute("useremail").toString();
 String num=session.getAttribute("number").toString();
String toemail="";
String toname="";
int bal=0;

String fmail=as1;
String faccount="";
String fifsc="";
String fbranch="";


String tmail="";
String taccount=num;
String tifsc="";
String tbranch="";

String amt= session.getAttribute("amount").toString();
Connection con;
con=dbconn.create();
PreparedStatement ps1=con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where accountno='"+num+"' ");

ResultSet rs1=ps1.executeQuery();
while(rs1.next())
{
	toemail=rs1.getString(3);
	bal=rs1.getInt(11);
	toname=rs1.getString(2);
	
	tmail=rs1.getString(3);
	tifsc=rs1.getString(8);
	tbranch=rs1.getString(12);
}
    
    
    
   
    PreparedStatement ps=con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+as1+"' ");
    
    ResultSet rs=ps.executeQuery();
    
    String name="";
    String amount="";
    
    
    while(rs.next())
    {
 
    	faccount=rs.getString(7);
		fifsc=rs.getString(8);
		fbranch=rs.getString(12);

 	
 	 name=rs.getString(2);
 	  
 	amount=rs.getString(11);
    
    
    
 	
    
 	mail1.mail(toemail, "Dear FINITY BANK User, ur A/cX"+num.substring((num.length()-1),num.length())+" credited by Rs."+amt+" on " +formatter.format(date));
    
 	mail1.mail(as1, "Dear FINITY BANK User, ur A/cX "+num.substring((num.length()-1),num.length())+" debited by Rs."+amt+" on " +formatter.format(date)+" transfer to "+toname+" Please make a call for any queries 19002222209");
    
 	mail1.mail(as1, "Transaction successful, your balance amount is " +amount);
    
 	
 	
	int reg=0;
	
	con=dbconn.create();
	
	try {
		
			PreparedStatement ps2=con.prepareStatement("INSERT INTO bankingemail.transactionhistory VALUES(id,?,?,?,?,?,?,?,?,?,?)");
			ps2.setString(1, fmail);
			ps2.setString(2, faccount);
			ps2.setString(3, fbranch);
			ps2.setString(4, fifsc);
			
			ps2.setString(5, taccount);
			ps2.setString(6, tbranch);
			ps2.setString(7, tifsc);
			ps2.setString(8, amt);
			ps2.setString(9, tmail);
			ps2.setString(10, " ");
			
			
			
			
			
			reg=ps2.executeUpdate();

} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
	
	
	
if(reg==1){	
	
	
	
	
	response.sendRedirect("transactionsuccess.jsp");
	 
}else{
	response.sendRedirect("error.jsp");
}
    %>
    
    
   <%}%>  
    
      
     
     
     
     
     
     
     
     
        <div class="bg-white header" bgcolor="#ffffff" style="background-color: white; width: 100%;">
            <table align="center" bgcolor="#ffffff" style="border-left: 10px solid white; border-right: 10px solid white; max-width: 600px; width: 100%;">
                <tr height="80">
                    <td align="left" class="vertical-align-middle" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: middle;">
                        <a href="https://www.go.com.mt/" target="_blank" style="-webkit-text-decoration-color: #F16522; color: #F16522; text-decoration: none; text-decoration-color: #F16522;">
                           
                        </a>
                    </td>
                </tr>
            </table>
        </div>
        <!-- Header End -->

        <!-- Content Start -->
        <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px;">
            <tr bgcolor="#d7d7d7">
                <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
            </tr>

            <!-- This encapsulation is required to ensure correct rendering on Windows 10 Mail app. -->
            <tr bgcolor="#d7d7d7">
                <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                    <!-- Seperator Start -->
                    <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                        <tr bgcolor="#d7d7d7">
                            <td height="30" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                    </table>
                    <!-- Seperator End -->

 <!-- Generic Pod Left Aligned with Price breakdown Start -->
                    <table align="center" cellpadding="0" cellspacing="0" cols="3" bgcolor="white" class="bordered-left-right" style="border-left: 10px solid #d7d7d7; border-right: 10px solid #d7d7d7; max-width: 600px; width: 100%;">
                        <tr height="50"><td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td></tr>
                        <tr align="center">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="17"><td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td></tr>
                        <tr align="center">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td class="text-primary" style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <h1 style="color: #F16522; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 30px; font-weight: 700; line-height: 34px; margin-bottom: 0; margin-top: 0;">Payment Successful</h1>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30"><td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td></tr>
                        <tr align="left">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">
                                    Hi <%=name%>, 
                                </p>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="10"><td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td></tr>
                        <tr align="left">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;">Your transaction was successful!</p>
                                <br>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0; "><strong>Balance:</strong><br/>

Amount: <%=amount%> <br/>
<br/></p><% /* try{
        	Thread.sleep(3500);
        	response.sendRedirect("transactionsuccess.jsp");
        	}catch(InterruptedException e)
        	{
        		System.out.println(e);
        	}   */  %>
                                    <br>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"><br/></p>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30">
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="border-bottom: 1px solid #D3D1D1; color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                        <tr height="30"><td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td></tr>
                        <tr align="center">
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                            <td style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;">
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"><strong></strong></p>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"></p>
                                <p style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 22px; margin: 0;"></p>
                            </td>
                            <td width="36" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>

                        <tr height="50">
                            <td colspan="3" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>

                    </table>
                    <!-- Generic Pod Left Aligned with Price breakdown End -->

                    <!-- Seperator Start -->
                    <table cellpadding="0" cellspacing="0" cols="1" bgcolor="#d7d7d7" align="center" style="max-width: 600px; width: 100%;">
                        <tr bgcolor="#d7d7d7">
                            <td height="50" style="color: #464646; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 16px; vertical-align: top;"></td>
                        </tr>
                    </table>
                    <!-- Seperator End -->

                </td>
            </tr>
        </table>
        <!-- Content End -->

        <!-- Footer Start -->
       
        <!-- Footer End -->
    </body>
</html>