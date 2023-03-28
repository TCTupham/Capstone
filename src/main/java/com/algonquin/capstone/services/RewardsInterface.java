package com.algonquin.capstone.services;

import java.util.ArrayList;
import java.util.List;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.Records;

public interface RewardsInterface {
	public void getPaid();
	public ArrayList<Question> createQuiz(int level);
	public void submitQuiz();
	public List<Records> getResult(String username);
}
