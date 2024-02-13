package com.user.servlet;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String checkbox=req.getParameter("checkbox");
//			System.out.println(name+""+email+""+phno+""+password+""+checkbox);
			
			User us= new User();
			
			us.setName(name);
			us.setEmail(email);
			us.setPassword(password);
			us.setPhno(phno);
			
			HttpSession session= req.getSession();
			
			if(checkbox!=null) 
			{
				UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
				boolean f2=dao.checkUser(email);
				if(f2)
				{boolean f=dao.userRegister(us);
				  if(f)
			  		{ 
				        session.setAttribute("succMsg", "Registration Successful");
				        resp.sendRedirect("register.jsp");
			  		}
			  else {
				  session.setAttribute("failedMsg", "Registration Unsuccessful");
				  resp.sendRedirect("register.jsp");
			  		}
					
				}else {
					
					
					session.setAttribute("failedMsg", "User Already Exists..Try Another Email");
					  resp.sendRedirect("register.jsp");
					
					
				}
				
			}else {session.setAttribute("failedMsg", "agrre terms and condition");
			resp.sendRedirect("register.jsp");
			}
			
			
		}
		catch(Exception e) 
		{e.printStackTrace();}
		
		
	}

}
