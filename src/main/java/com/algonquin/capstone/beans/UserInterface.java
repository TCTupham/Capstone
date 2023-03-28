package com.algonquin.capstone.beans;

import java.util.ArrayList;
import java.util.List;

public interface UserInterface {
	
	public void paySubscription();
	
	public void giveFeedback();
	
	public void submitQuiz();
	
	public List<Records> getResult();
	
	public ArrayList<Question> createQuiz(int level);
		

}
