package com.dictomain;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.database.modules.doctor;
import com.database.modules.doctorDao;

import com.database.modules.user;
import com.database.modules.userDao;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		
		
		if(action.equals("usersignup"))
		{	String registration="";
			try {
			registration = "dicto2023"+userDao.getuserid();
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			}
			
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String name=fname+" "+lname;
			String dob=request.getParameter("dob");
			String email=request.getParameter("email");
			String reemail=request.getParameter("reemail");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			user ob =new user(registration,name,dob,email,password);
			if(email.equals(reemail))
			{if(password.equals(repassword))
			{	try {
				if(userDao.checkEmail(ob))
				{	response.sendRedirect("signup.jsp?registerationStatus1="+"Email already exist....");
					
				}
				else
				{
					boolean insertStatus=userDao.insertData(ob);
					if(insertStatus==true)
					{	 
						response.sendRedirect("signup.jsp?registerationStatus1="+"Susccessfully registered......");
						
						}
					else
					{	response.sendRedirect("signup.jsp?registerationStatus1="+"Something went wrong....");
						}
				}
				} catch (SQLException e) {e.printStackTrace();}
				
				
			}
			else
			{	response.sendRedirect("signup.jsp?registerationStatu1s="+"password didn't match....");
				}
			
		}
	else {
		response.sendRedirect("signup.jsp?registerationStatus1="+"email id didn't match....");
	}
	
	}
		
		if(action.equals("userlogin"))
		{	
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			user ob=new user(email,password);
			try {
				if(userDao.isadmin(ob))
				{	response.sendRedirect("userhome.jsp");}
				else
				{response.sendRedirect("signup.jsp?registerationStatus2="+"invalid username and password....");
					
				}
			} catch (SQLException e) {e.printStackTrace();}
		}
		
		
		
		if(action.equals("doctorsignup"))
		{	
			
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String name=fname+" "+lname;
			String dob=request.getParameter("dob");
			String email=request.getParameter("email");
			String reemail=request.getParameter("reemail");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			doctor ob1 =new doctor(name,dob,email,password);
			if(email.equals(reemail))
			{if(password.equals(repassword))
			{	try {
				if(doctorDao.checkEmail(ob1))
				{	response.sendRedirect("signup.jsp?registerationStatus3="+"Email already exist....");
					
				}
				else
				{
					boolean insertStatus=doctorDao.insertData(ob1);
					if(insertStatus==true)
					{	 
						response.sendRedirect("signup.jsp?registerationStatus3="+"Susccessfully registered......");
						
						}
					else
					{	response.sendRedirect("signup.jsp?registerationStatus3="+"Something went wrong....");
						}
				}
				} catch (SQLException e) {e.printStackTrace();}
				
				
			}
			else
			{	response.sendRedirect("signup.jsp?registerationStatus3="+"password didn't match....");
				}
			
		}
	else {
		response.sendRedirect("signup.jsp?registerationStatus3="+"email id didn't match....");
	}

	}
	
		
	
		if(action.equals("doctorlogin"))
		{	
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			doctor ob=new doctor(email,password);
			try {
				if(doctorDao.isdoctor(ob))
				{	response.sendRedirect("doctorhome.jsp");}
				else
				{response.sendRedirect("signup.jsp?registerationStatus4="+"invalid username and password....");
					
				}
			} catch (SQLException e) {e.printStackTrace();}
		}
		
		
		
		
		
		
		
		
	}	
	
	
	
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
