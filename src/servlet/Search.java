package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconn.dbconn;

/**
 * Servlet implementation class Search
 */
@WebServlet("/Search")
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
              HttpSession session=request.getSession();
             String umail=session.getAttribute("useremail").toString();
		String number = request.getParameter("number");
	    String upiid = request.getParameter("upiid");
	    String upipin =request.getParameter("upipin");
	    String amount =request.getParameter("amount");
	    String branch =request.getParameter("branch");
	    String name =request.getParameter("name");
	   
	    int i=Integer.parseInt(amount);
	    System.out.println(umail);
	    System.out.println(amount);
	    int reg=0;
	      Connection con=(Connection) dbconn.create();
	      boolean log=false;
	      
	      
	      try {
	    	    
	    	  
	        PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+umail+"'");
	    	 
	        
	        	         
	        
	         ResultSet rs=ps.executeQuery();
	         while(rs.next()){ 
	        	 if(rs.getInt(11)>i){
	        	
	 	         log=true;
	        
	         }}
	      }
	      catch(SQLException e)  {
	    	  
	    	  e.printStackTrace();
	      }
	         
	      if(log==true){
	    	  
	      
	    session.setAttribute("number", number);
	    session.setAttribute("pin", upipin);
	    
	    
	    session.setAttribute("upiid", upiid);
	    session.setAttribute("upipin", upipin);
	    session.setAttribute("amount", amount);
	    
	    response.sendRedirect("otp.jsp");
	  
	      }
	      else{
	    	  response.sendRedirect("search.jsp");
	      }
	    
	
	
	
	
	
	
	
	
	}

}
