package com.algonquin.capstone.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Admin;
import com.algonquin.capstone.dao.AdminDao;

public class DeleteQuestionServlet extends HttpServlet {
	public DeleteQuestionServlet() {
	}

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		String id = request.getParameter("id");
		Admin admin = new Admin("admin");
		admin.deleteQuestion(id);
		
		response.sendRedirect(request.getContextPath() + "/QuestionList");
	}
}
