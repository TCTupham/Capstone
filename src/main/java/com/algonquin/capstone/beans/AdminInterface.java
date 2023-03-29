package com.algonquin.capstone.beans;

public interface AdminInterface {
	public void payTax() ;
	public void updateQuestion(String id,String question,String option1,String option2,String option3,String option4,String answer) ;
	public void createQuestion(Question question) ;
	public void deleteQuestion(String id) ;
	public void giveFeedback() ;	
	public void getPaid();
}
