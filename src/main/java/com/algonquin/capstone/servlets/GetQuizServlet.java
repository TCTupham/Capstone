package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.utils.Constant;

public class GetQuizServlet extends HttpServlet {
	public GetQuizServlet() {
	}

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int level = Integer.parseInt(request.getParameter("level"));

		request.setAttribute("level", level);
		request.setAttribute("numberQ", Constant.NUMBER_QUESTION);
		request.setAttribute("clock", Constant.NUMBER_QUESTION *60);
		QuizGenerator qg = new QuizGenerator(level);
		ArrayList<Question> quiz = qg.getQuiz();
		request.setAttribute("quiz", quiz);
		request.getRequestDispatcher("/JSP/Quiz.jsp").forward(request, response);
		System.out.println("Quiz created");
	}
}