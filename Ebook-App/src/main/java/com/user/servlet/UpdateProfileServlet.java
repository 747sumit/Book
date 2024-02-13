package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			
		User us= new User();
			us.setId(id);
			us.setName(name);
			us.setEmail(email);
			us.setPassword(password);
			us.setPhno(phno);
			
			UserDAOImpl dao= new UserDAOImpl(DBConnect.getConn());
			boolean f=dao.checkPassword(id, password);

			
		
			
			HttpSession session= req.getSession();
			
			if(f) 
			{
				boolean f2=dao.updateProfile(us);
				if(f2)
				{   
					session.setAttribute("succMsg", "Profile Updated");
					resp.sendRedirect("Editprofile.jsp");
				}
				else
				{
					session.setAttribute("failedMsg", "Profile Not Updated");
					resp.sendRedirect("Editprofile.jsp");
				}
			}
			else 
			{	session.setAttribute("failedMsg", "Wrong Password");
				resp.sendRedirect("Editprofile.jsp");
			}
			
			
		}
		catch(Exception e) 
		{e.printStackTrace();}
		
	}

	
}
