package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.dao.AdminDao;

	public class QuestionList extends HttpServlet {
		ArrayList<Question> list;
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		public QuestionList() {
			super();
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	AdminDao dao = new AdminDao();
    	list = dao.getQuestionList();
    	request.setAttribute("questionlist", list);
    	request.getRequestDispatcher("/JSP/QuestionListPage.jsp").forward(request, response);

    }
}
