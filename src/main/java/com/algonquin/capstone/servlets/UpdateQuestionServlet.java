package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Admin;
import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.dao.AdminDao;

public class UpdateQuestionServlet extends HttpServlet {

	/**
	 * 
	 */
	public UpdateQuestionServlet() {
	}
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		AdminDao dao = new AdminDao();
		Question thequestion = null;
		try {
			thequestion = dao.getRow(id);
			System.out.println("updated");
			}
		catch (SQLException  e) {
			System.out.println(e.toString());			
		}
		request.setAttribute("thequestion",thequestion);
		request.getRequestDispatcher("/JSP/UpdateQuestion.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id"); 
		String question = request.getParameter("question");
    	String option1 = request.getParameter("option1");
    	String option2 = request.getParameter("option2");
    	String option3 = request.getParameter("option3");
    	String option4 = request.getParameter("option4");	
    	String answer =request.getParameter("answer") ;
    	
    	Admin admin = new Admin("admin");
    	admin.updateQuestion(id,question,option1,option2,option3,option4,answer);

		response.sendRedirect(request.getContextPath() + "/QuestionList");
	}
}

