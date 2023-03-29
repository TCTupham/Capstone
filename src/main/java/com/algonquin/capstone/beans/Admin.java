package com.algonquin.capstone.beans;

import com.algonquin.capstone.services.BenefitAbstract;
import com.algonquin.capstone.services.Duties;
import com.algonquin.capstone.services.Benefits;

public class Admin  extends Member implements AdminInterface{
	BenefitAbstract reward = new Benefits();
	Duties duty = new Duties();
	
	public Admin(String username) {
		super(username);
	}

	public void payTax() {
		duty.payTax();
	}
	
	public void updateQuestion(String id,String question,String option1,String option2,String option3,String option4,String answer) {
		 duty.updateQuestion(id,question,option1,option2,option3,option4,answer);
	}
	
	public void createQuestion(Question question) {
		duty.createQuestion(question);
	}
	
	public void deleteQuestion(String id) {
		duty.deleteQuestion(id);
	}
	
	public void giveFeedback() {
		duty.giveFeedback();
	}	
		
	public void getPaid() {
		reward.getPaid();
	}
}
