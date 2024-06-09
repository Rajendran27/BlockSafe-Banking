package servlet;

import Imple.Imple;
import Inter.Inter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mail.mail1;

import dbconn.sregbean;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

/**
 * Servlet implementation class userregister
 */
@WebServlet("/userregister")
public class userregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userregister() {
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
		
		
		
	/*	
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
		
		String fullpath = editPath + "Bankingwithemail\\WebContent\\Locals\\";
		System.out.println(fullpath);
		
		while ((part = mp.readNextPart()) != null)
		{
			if (part.isFile()) {
				filepart = (FilePart) part;
				
				filetype = filepart.getContentType();

				 filename = filepart.getFileName();
				System.out.println(filename);

				fullpath = fullpath + filename;
				System.out.println(fullpath);
				
				File file = new File(fullpath);
				size = filepart.writeTo(file);
				
				BufferedReader br = new BufferedReader(new FileReader(file));
		
				
			}
			else if(part.isParam())
			{
				ParamPart param = (ParamPart) part;
				String name = param.getName();
				
				String value = param.getStringValue();

				System.out.println("Loadinggg...... " + value);
				list.add(value);					
			}				
		}
		*/
		
		String name=request.getParameter("username");
		String mail=request.getParameter("useremail");
		String mob=request.getParameter("usermobileno");
		 String password=request.getParameter("userpass"); 
		sregbean b=new sregbean();
		
	 		 b.setName(name);
		 	    
		 	   b.setEmail((mail));
		 	    System.out.println("name:"+mail);
		 	    
		 	   b.setMobile((mob));
		 	      
		 	  
		 	  
		 	   b.setPassword((password));
		 	    System.out.println("name:"+password);
		 	    
		 	  
		 	   
	 /*	   b.setImage(filename);*/
		  
		

		
		
		Inter in=new Imple();
		int i=in.sreg(b);
		if(i==1){
			
			mail1.mail(mail,"Dear "+name+","+" Congratulations! your account has been successfully created at Finity Banking *********** UserName: "+mail+"  Password: " +password);
			
			response.sendRedirect("userlogin.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

	}

}
