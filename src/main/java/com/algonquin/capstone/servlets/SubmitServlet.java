package com.algonquin.capstone.servlets;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Quiz;
import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.beans.Result;
import com.algonquin.capstone.beans.ResultBuilder;
import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.dao.AdminDao;
import com.algonquin.capstone.dao.QuizDao;
import com.algonquin.capstone.dao.UserDao;
import com.algonquin.capstone.utils.Constant;

	public class SubmitServlet extends HttpServlet {

		public SubmitServlet() {
			super();
		}
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
			
			ArrayList<Result> resultList = new ArrayList<>();	
			ArrayList<Question> questionList = new ArrayList<>();
			ArrayList<Boolean> checked = new ArrayList<>();
			AdminDao adminDao = new AdminDao();
			UserDao userDao = new UserDao();
			String username = request.getParameter("username");
			int level = Integer.parseInt(request.getParameter("level"));
			
			double score = 0;
			int count=0;
			for (int i=0;i<Constant.NUMBER_QUESTION; i++) {
				String id = "id"+String.valueOf(i);
				String questionId = request.getParameter(id);
				String userAnswer;
				if (request.getParameter(String.valueOf(i)) !=null) {
					userAnswer =request.getParameter(String.valueOf(i));
				} else {
					userAnswer = "No Answer";
				}

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
	
			score = Math.round(1.0*count/Constant.NUMBER_QUESTION*100);

			Records record = new Records(username,score, level);
			//save records (basic results)
			int recordsId = userDao.createRecord(record);	
			//save quiz
			QuizDao quizDao = new QuizDao();
			for (Result result : resultList) {
				quizDao.createQuiz(new Quiz(0, recordsId, result.getQuestionId(), result.getUserAnswer(), new Date()));
			}
			
			//forward to JSP
			request.setAttribute("score", score);
			request.setAttribute("checkedList", checked);
			request.setAttribute("count", count);
			request.setAttribute("numberQ", Constant.NUMBER_QUESTION);
			request.setAttribute("resultList", resultList);
			request.setAttribute("questionList", questionList);		
			request.getRequestDispatcher("/JSP/ResultPage.jsp").forward(request, response);		    
		    }


}
