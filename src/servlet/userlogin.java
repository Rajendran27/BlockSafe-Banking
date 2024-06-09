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
 * Servlet implementation class userlogin
 */
@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userlogin() {
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
		
		String name=request.getParameter("useremail");
		String code=request.getParameter("code");
		  System.out.println(code);
		  
		  String codeo=request.getParameter("codeo");
		  System.out.println(codeo);
		  
		  HttpSession session=request.getSession();
		session.setAttribute("useremail", name);
		
		String pass=request.getParameter("userpass");
		
	
		int reg=0;
	      Connection con=(Connection) dbconn.create();
	      boolean log=false;
	      
	      if(code.equals(codeo)){
	     
	    	  System.out.println("HFD");
	    	  try {
	    	    
	    	  
	        PreparedStatement ps=(PreparedStatement)con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email=? and password=?");
	    	 
	        
	         ps.setString(1, name);
	         ps.setString(2, pass);
	         
	        
	         ResultSet rs=ps.executeQuery();
	           log=rs.next(); 
	         
	      }
	      catch(SQLException e)  {
	    	  
	    	  e.printStackTrace();
	      }
	      } else {
	    	  
	    	  response.sendRedirect("error.jsp");
	    	  
	    	  
	      }
	
	    
	      
	      if(log==true){
	    	  response.sendRedirect("userhome.jsp");
	      }
	      else{
	    	  session.setAttribute("log", "2");
	    	  response.sendRedirect("userlogin.jsp");
	      }
			
	      
	     
	
	}

		
		
		
	}


