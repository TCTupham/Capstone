package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.dao.RecordsDao;


public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String name = (String) request.getSession().getAttribute("User");
    	
		RecordsDao recordsDao = new RecordsDao();
    	
		List < Records > quizes = recordsDao.getAllUserRecords(name);
		request.setAttribute("records", quizes);
        request.getRequestDispatcher("/JSP/User.jsp").forward(request, response);

    }

}

