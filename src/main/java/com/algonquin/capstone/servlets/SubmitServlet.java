package com.algonquin.capstone.servlets;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.algonquin.capstone.beans.Result;
import com.algonquin.capstone.beans.ResultBuilder;
import com.algonquin.capstone.beans.questions;
import com.algonquin.capstone.dao.AdminDao;
import com.algonquin.capstone.dao.UserDao;

	public class SubmitServlet extends HttpServlet {

		public SubmitServlet() {
			super();
		}
		private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
		            throws ServletException, IOException {
			
			ArrayList<Result> resultList = new ArrayList<>();	
			ArrayList<questions> questionList = new ArrayList<>();
			ArrayList<Boolean> checked = new ArrayList<>();
			AdminDao dao = new AdminDao();
			UserDao dao2 = new UserDao();
			String username = request.getParameter("username");
			double score = 0;
			int count=0;
			for (int i=0;i<30; i++) {
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
					questions question = dao.getRow(questionId);
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
	
			score = Math.round(1.0*count/30*100);

			Records record = new Records(username,score);
			dao2.createRecord(record);	
			
			
			//forward to JSP
			request.setAttribute("score", score);
			request.setAttribute("checkedList", checked);
			request.setAttribute("count", count);
			request.setAttribute("resultList", resultList);
			request.setAttribute("questionList", questionList);		
			request.getRequestDispatcher("/JSP/ResultPage.jsp").forward(request, response);		    
		    }


}
