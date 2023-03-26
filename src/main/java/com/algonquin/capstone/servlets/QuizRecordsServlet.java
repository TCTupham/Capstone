package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.Quiz;
import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.beans.Result;
import com.algonquin.capstone.beans.ResultBuilder;
import com.algonquin.capstone.dao.AdminDao;
import com.algonquin.capstone.dao.QuizDao;
import com.algonquin.capstone.dao.RecordsDao;
import com.algonquin.capstone.utils.Constant;

public class QuizRecordsServlet extends HttpServlet {
	public QuizRecordsServlet() {
	}

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int recordsId = Integer.parseInt(request.getParameter("recordsId"));

		
		ArrayList<Result> resultList = new ArrayList<>();	
		ArrayList<Question> questionList = new ArrayList<>();
		ArrayList<Boolean> checked = new ArrayList<>();
		AdminDao adminDao = new AdminDao();
		
		QuizDao quizDao =  new QuizDao();
		List<Quiz> questionsQuiz  = quizDao.getAllQuiz(recordsId);

		int count=0;
		for (int i=0;i<questionsQuiz.size(); i++) {
			String questionId = questionsQuiz.get(i).getQuestionId();
			String userAnswer;
//			if (request.getParameter(String.valueOf(i)) !=null) {
//				userAnswer =questionsQuiz.get(i).getYourAnswer();
//			} else {
//				userAnswer = "No Answer";
//			}
			userAnswer =questionsQuiz.get(i).getYourAnswer();

			//	make result list
			Result result = new ResultBuilder()
				  	.setId()
				  	.setQuestionId(questionId)
				  	.setUserAnswer(userAnswer)
				  	.setDate()
				  	.build();	
			resultList.add(result);
			//	make question list	
			try {
				Question question = adminDao.getRow(questionId);
				questionList.add(question);

				if (result.getUserAnswer().equals(question.getAnswer())) {
					count = count+1;
					checked.add(true);
				} else {
					checked.add(false);
				}
				}
			catch (SQLException  e) {
				System.out.println(e.toString());			
			}
			System.out.println(count);
			
		}


		Records record = new RecordsDao().getAllUserRecordsById(recordsId).get(0);
		
		//forward to JSP
		request.setAttribute("score", record.getScore());
		request.setAttribute("checkedList", checked);
		request.setAttribute("count", count);
		request.setAttribute("numberQ", Constant.NUMBER_QUESTION);
		request.setAttribute("resultList", resultList);
		request.setAttribute("questionList", questionList);		
		request.getRequestDispatcher("/JSP/ResultPage.jsp").forward(request, response);	
	}
}