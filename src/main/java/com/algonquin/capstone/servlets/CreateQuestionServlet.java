package com.algonquin.capstone.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.QuestionBuilder;
import com.algonquin.capstone.dao.AdminDao;



public class CreateQuestionServlet extends HttpServlet {
	  /**
	 * 
	 */


	public CreateQuestionServlet() {
		super();
	}
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	
	    	String question = request.getParameter("question");
	    	String option1 = request.getParameter("option1");
	    	String option2 = request.getParameter("option2");
	    	String option3 = request.getParameter("option3");
	    	String option4 = request.getParameter("option4");	
	    	String answer =request.getParameter("answer") ;
	    	String topic = request.getParameter("topic");
	    	String level = request.getParameter("level");
	    	Question newquestion = new QuestionBuilder()
				  	.setId()
                    .setQuestion(question)
                    .setOption1(option1)
                    .setOption2(option2)
                    .setOption3(option3)
                    .setOption4(option4)
                    .setAnswer(answer)
                    .setDate()
                    .setLevel(level)
                    .setTopic(topic)
                    .build()  ;	
	    	AdminDao dao = new AdminDao();
	    	int rows = dao.createQuestion(newquestion);   		
	    	if (rows==0) {
	    		System.out.println("Create error");
	    		
	    	} else {
	    		System.out.println("New question created!");
	    		response.sendRedirect(request.getContextPath() + "/QuestionList");
	    		
	    	}
	    }

}
