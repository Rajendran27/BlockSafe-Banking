package servlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import dbconn.dbconn;



/**
 * Servlet implementation class Apply
 */
@WebServlet("/Apply")
public class Apply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Apply() {
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
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		String number = req.getParameter("number");
		String bankname = req.getParameter("bankname");
		String account = req.getParameter("account");
		String ifsc = req.getParameter("ifsc");
		String branch = req.getParameter("branch");
		String upi = req.getParameter("upi");
		String pin = req.getParameter("pin");
		String location = req.getParameter("location");
		String address = req.getParameter("address");
		String type= req.getParameter("type");
		HttpSession session=req.getSession();
	String d=session.getAttribute("useremail").toString();
		String s="apply";
		
		
		
		
	
		try{
			Connection connn=dbconn.create();
			Statement st=connn.createStatement();
			st.executeUpdate("UPDATE bankingemail.userreg SET type='"+type+"', location='"+location+"',address='"+address+"',accountno='"+account+"',ifsc='"+ifsc+"',branch='"+branch+"',bankname='"+bankname+"',status='"+s+"' WHERE email='"+d+"' ");
			
			resp.sendRedirect("createsuccessfully.jsp?valid");
		}
		catch(Exception e){
			resp.sendRedirect("error.jsp?inval id");
		System.out.println(e);
		}
	}
	}
	