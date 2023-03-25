package com.algonquin.capstone.servlets;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import com.algonquin.capstone.beans.questions;
import com.algonquin.capstone.dao.AdminDao;

public class QuizGenerator {
	static AdminDao dao = new AdminDao();
	static ArrayList<questions> questionlist = dao.getQuestionList();
	private static ArrayList<questions> quiz= new ArrayList<>();
	
	public QuizGenerator() {	
		Random random = new Random();
	    Set<Integer> set = new HashSet<>();
	    if (quiz != null) {
		    quiz.clear();}
	    while (quiz.size() <30) {	
        	int value = random.nextInt(questionlist.size());	
        	 if (!set.contains(value)) {
        		quiz.add(questionlist.get(value));
        		set.add(value);
		        System.out.println(value);
        	 } else {
        		 System.out.println("Duplicated");
        	 }
        }   
	}
	
	public ArrayList<questions> getQuiz() {
		return quiz;
	}

}
