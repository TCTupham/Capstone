package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.QuizBean;
import com.algonquin.capstone.dao.QuizDao;


public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String name = (String) request.getSession().getAttribute("User");
    	
    	QuizDao quizDao = new QuizDao();
    	
		List < QuizBean > quizes = quizDao.getAllQuiz();
		request.setAttribute("quizes", quizes);
        request.getRequestDispatcher("/JSP/User.jsp").forward(request, response);
            
            

    }
}

