package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mail.mail1;

import dbconn.dbconn;

/**
 * Servlet implementation class Upi
 */
@WebServlet("/Upi")
public class Upi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = req.getParameter("id");
		String pin = req.getParameter("pin");
		
		String emaill = req.getParameter("emaill");
		HttpSession session=req.getSession();
	
		String s="apply";
		String am=" ";   
		
		
		try {
			
			
			Connection co=dbconn.create();
	        PreparedStatement ps=(PreparedStatement)co.prepareStatement("SELECT * FROM `bankingemail`.`userregister` where gmail='"+emaill+"'");
	    	 
	        
	       
	        
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()) {
	         am= rs.getString(10);
	    
	         
	         }
	         
	         }
	      catch(SQLException e)  {
	    	  
	    	  e.printStackTrace();
	      }
		
		
		
		
		
		
	
		try{
			Connection connn=dbconn.create();
			Statement st=connn.createStatement();
			st.executeUpdate("UPDATE bankingemail.userregister set upiid='"+id+"',upipin='"+pin+"' where status='Approved' and gmail='"+emaill+"'");
			
			Statement st1=connn.createStatement();
			st1.executeUpdate("UPDATE bankingemail.userreg set upiid='"+id+"',upipin='"+pin+"',balance='"+am+"' where status='Approved' and email='"+emaill+"'");
			
			
			
			
			mail1.mail(emaill,"Congratulations, your UPI ID is successfully generated at Finity Banking. Your UPI id is: "+id+" UPI password is: "+pin+"   Thank You" );
			
			
			resp.sendRedirect("adminhome.jsp?valid");
		
		
		
		
		}
		catch(Exception e){
			resp.sendRedirect("error.jsp?inval id");
		System.out.println(e);
		}
	}
	}
	