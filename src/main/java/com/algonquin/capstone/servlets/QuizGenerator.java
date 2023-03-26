package com.algonquin.capstone.servlets;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.dao.UserDao;
import com.algonquin.capstone.utils.Constant;

public class QuizGenerator {
	static UserDao dao = new UserDao();
	ArrayList<Question> questionlist;
	private static ArrayList<Question> quiz = new ArrayList<>();

	public QuizGenerator(int level) {
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
	}

	public ArrayList<Question> getQuiz() {
		return quiz;
	}

}
