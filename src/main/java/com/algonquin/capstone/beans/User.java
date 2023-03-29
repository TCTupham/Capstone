package com.algonquin.capstone.beans;

import java.util.ArrayList;
import java.util.List;

import com.algonquin.capstone.services.BenefitAbstract;
import com.algonquin.capstone.services.Duties;
import com.algonquin.capstone.services.Benefits;

public class User extends Member implements UserInterface  {
	private String username;
	
	Duties duty = new Duties();
	BenefitAbstract reward = new Benefits();
	
	public User(String username) {
		super(username);
		this.username = username;
	}
	
	public void submitQuiz() {
		reward.submitQuiz();
	}
	
	public List<Records> getResult() {
		return reward.getResult(this.username);		
	}
	
	public void paySubscription() {
		duty.paySubscription();
	}
	
	public void giveFeedback() {
		duty.giveFeedback();
	}
	
	public ArrayList<Question> createQuiz(int level) {
		return reward.createQuiz(level);
	}
	
}
