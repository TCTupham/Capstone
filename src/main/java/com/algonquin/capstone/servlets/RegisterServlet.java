package com.algonquin.capstone.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.LoginBean;
import com.algonquin.capstone.dao.LoginDao;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LoginDao loginDao = new LoginDao();
		String password = request.getParameter("password");
		String userName = request.getParameter("username");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		
		LoginBean loginBean = new LoginBean();
		loginBean.setPassword(password);
		loginBean.setUserName(userName);
		loginBean.setFullname(fullname);
		loginBean.setEmail(email);
		
		try {
			loginDao.registerUser(loginBean);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("errMessage", "You have registered successfully");
		request.getRequestDispatcher("/JSP/Login.jsp").forward(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/JSP/Register.jsp").forward(request, response);

	}
}
