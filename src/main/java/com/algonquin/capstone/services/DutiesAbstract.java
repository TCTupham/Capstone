package com.algonquin.capstone.services;
import com.algonquin.capstone.beans.Question;

public abstract class DutiesAbstract {
	abstract void paySubscription() ;		
	abstract void payTax();
	abstract void updateQuestion(String id,String question,String option1,String option2,String option3,String option4,String answer);
	abstract void createQuestion(Question question);
	abstract void deleteQuestion(String id) ;	
	abstract void giveFeedback();

}
