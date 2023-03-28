package com.algonquin.capstone.services;

import com.algonquin.capstone.beans.Question;

public interface DutiesInterface {
	public void paySubscription();
	public void payTax();
	public void updateQuestion(String id,String question,String option1,String option2,String option3,String option4,String answer);
	public void createQuestion(Question question);
	public void deleteQuestion(String id);
	public void giveFeedback();
}
