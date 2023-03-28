package com.algonquin.capstone.beans;

import java.util.ArrayList;
import java.util.List;

import com.algonquin.capstone.services.Duties;
import com.algonquin.capstone.services.Rewards;

public class User extends Member implements UserInterface  {
	private String username;
	
	Duties duty = new Duties();
	Rewards reward = new Rewards();
	
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
