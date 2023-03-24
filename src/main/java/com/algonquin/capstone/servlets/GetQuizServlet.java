package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.questions;
import com.algonquin.capstone.dao.AdminDao;


public class GetQuizServlet extends HttpServlet {
	public GetQuizServlet() {
	}

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QuizGenerator qg = new QuizGenerator();
		ArrayList<questions> quiz = qg.getQuiz();
		request.setAttribute("quiz",quiz);
		request.getRequestDispatcher("/JSP/Quiz.jsp").forward(request, response);
		System.out.println("Quiz created");
	}
}