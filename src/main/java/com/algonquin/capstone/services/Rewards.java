package com.algonquin.capstone.services;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.dao.RecordsDao;
import com.algonquin.capstone.dao.UserDao;
import com.algonquin.capstone.utils.Constant;

public class Rewards  {
	public void getPaid() {
		
	}
	public void submitQuiz() {
		
	}
	public List<Records> getResult(String username) {
		List<Records> list = new ArrayList<>();
		RecordsDao dao = new RecordsDao();
		list = dao.getAllUserRecords(username);
		return list;
	}
	
	public ArrayList<Question> createQuiz(int level) {	
		UserDao dao = new UserDao();
		ArrayList<Question> questionlist;
		ArrayList<Question> quiz = new ArrayList<>();

		
			questionlist = dao.getQuestionListByLevel(level);
			Random random = new Random();
			Set<Integer> set = new HashSet<>();
			if (quiz != null) {
				quiz.clear();
			}
			while (quiz.size() < Constant.NUMBER_QUESTION) {
				int value = random.nextInt(questionlist.size());
				if (!set.contains(value)) {
					quiz.add(questionlist.get(value));
					set.add(value);
					System.out.println(value);
				} else {
					System.out.println("Duplicated");
				}
			}

			return quiz;
		}
		
	
}
