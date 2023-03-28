package com.algonquin.capstone.services;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.dao.AdminDao;

public class Duties   {
	public void paySubscription() {}
	
	
	public void payTax() {}
	
	
	public void updateQuestion(String id,String question,String option1,String option2,String option3,String option4,String answer) {
		AdminDao dao = new AdminDao();
		int rows = dao.updateQuestion(id,question,option1,option2,option3,option4,answer);
		if (rows == 0) {
			System.out.println("Update Failed");
    	} else {
    		System.out.println("Update Successful");
    	}
	}
	
	
	public void createQuestion(Question question) {
		AdminDao dao = new AdminDao();
    	int rows = dao.createQuestion(question);   		
    	if (rows==0) {
    		System.out.println("Create error");	    		
    	} else {
    		System.out.println("New question created!");
    	}
	}
	
	public void deleteQuestion(String id) {
		AdminDao dao = new AdminDao();
		int rows = dao.deleteQuestion(id);
		if (rows == 0) {
			System.out.println("Delete Failed");
		} else {
			System.out.println("Delete Successful");
		}
	}
	
	public void giveFeedback() {}
	
}
