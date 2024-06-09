package servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbconn.dbconn;

/**
 * Servlet implementation class Image
 */
@WebServlet("/Image")
public class Image extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Image() {
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
	Connection con;
		
	
	HttpSession session = request.getSession();
		 String ass= session.getAttribute("amount").toString();
		 String num=session.getAttribute("number").toString();
	
		 String as= session.getAttribute("useremail").toString();
		 int amt=0;
	     int amount2=0;
	     int amt2=0;
	     int amount=0;
	     
	     String filetype=null;
			Part part;
			FilePart filepart;
			long size=0;
			String filename=null;
			
			filename=request.getParameter("filename");
			System.out.println("filename:"+filename);
	 		MultipartParser mp = new MultipartParser(request, 999999999);
		 
		
		PrintWriter out=response.getWriter();
		
			ArrayList list=new ArrayList<>();
			
		 
		
		String path = getServletContext().getRealPath(" ");
		System.out.println(path);
		

		String editPath = path.substring(0, path.indexOf("."));
		System.out.println(editPath);
		
		String fullpath = editPath + "Bankingwithemail\\WebContent\\Local\\";
	System.out.println(fullpath);
		
		while ((part = mp.readNextPart()) != null)
		{
			if (part.isFile()) {
				filepart = (FilePart) part;
				
					filetype = filepart.getContentType();
				 filename = filepart.getFileName();
				System.out.println(filename);
			}
		}
			
			//					fullpath = fullpath + filename;
//				System.out.println(fullpath);
//					
//				File file = new File(fullpath);
//				size = filepart.writeTo(file);
//					
//					BufferedReader br = new BufferedReader(new FileReader(file));
//			
//					
//				}
//				else if(part.isParam())
//				{
//					ParamPart param = (ParamPart) part;
//					String name = param.getName();
//					
//					String value = param.getStringValue();
//
//					System.out.println("Loadinggg...... " + value);
//					list.add(value);					
//				}				
//			}
//	     
		
		String prehash="";
		String afterhash="";
		
		
		con=dbconn.create();
		try {
			
			PreparedStatement pa=(PreparedStatement) con.prepareStatement("SELECT * FROM `bankingemail`.`userreg`");
			ResultSet rs=pa.executeQuery();
			
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			}	 
		 catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}


		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;

		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash; 
				
		
				
		
				Statement st3;
				try {
					st3 = con.createStatement();
					st3.executeUpdate("UPDATE bankingemail.userreg u SET phash='"+prehash+"',ahash='"+aphas+"' ");
					
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				
		
		
		
		
	     
	     
	     try {
	          
	          con=dbconn.create();
	          PreparedStatement ps=(PreparedStatement) con.prepareStatement("SELECT * FROM `bankingemail`.`userreg` where email='"+as+"' ");
	          
	          ResultSet rs;
			
				rs = ps.executeQuery();
				
				String imagee="";
				
				
				
				while(rs.next())
				  {
					 amount=  rs.getInt(14); 
			
					
					imagee=  rs.getString(13);
				  }
				
				PreparedStatement ps1=(PreparedStatement) con.prepareStatement("SELECT * FROM `bankingemail`.`userregister` where accountno='"+num+"' ");
		          
		          ResultSet rs1;
				
					rs1 = ps1.executeQuery();
					
					
					while(rs1.next())
					  {
						 amount2=  rs1.getInt(14); 
				
				   
			
					  }
				int i=Integer.parseInt(ass);
				
System.out.println(filename);
				
				if(imagee.equals(filename)){
				
					
					amt=amount-i;
					amt2=i+amount2;
				session.setAttribute("amt3", amt2);
				Statement st=con.createStatement();
					
				
				st.executeUpdate("UPDATE bankingemail.userregister SET balance='"+amt+"'  where email='"+as+"' ");
				Statement st1=con.createStatement();
					st1.executeUpdate("UPDATE bankingemail.userreg SET balance='"+amt2+"'  where accountno='"+num+"' ");
					
				
					response.sendRedirect("success.jsp");
					 
				} 
				else{
			    	  response.sendRedirect("error.jsp");
			      }
		 }
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		          
		          
		       	   
		         
		    	 
		      }
		      
		      
				
			}

			
		
