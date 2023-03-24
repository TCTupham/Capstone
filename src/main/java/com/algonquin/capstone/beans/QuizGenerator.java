package com.algonquin.capstone.beans;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import com.algonquin.capstone.dao.AdminDao;

public class QuizGenerator {
	static AdminDao dao = new AdminDao();
	static ArrayList<questions> questionlist = dao.getQuestionList();
	private ArrayList<questions> quiz = null;
	private static Set<String> usedNumber = new HashSet<>();
	int number;
	
	public QuizGenerator() {	
	       
	        Random random = new Random();
	        for (int i=0; i<29;i++) {
	        	int randomNumber = random.nextInt(questionlist.size()) + 1;
	 	       
		        do {
		        	 this.quiz.add(questionlist.get(randomNumber));
		         } while (!usedNumber.add(String.valueOf(randomNumber)));
		    }	
	        }
	public ArrayList<questions> getQuiz() {
		return this.quiz;
	}

}
