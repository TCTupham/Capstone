package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.beans.User;
import com.algonquin.capstone.dao.RecordsDao;


public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String name = (String) request.getSession().getAttribute("User");
    	User user = new User(name);  	
		List < Records > quizes = user.getResult();
		request.setAttribute("records", quizes);
        request.getRequestDispatcher("/JSP/MyRecord.jsp").forward(request, response);

    }

}

