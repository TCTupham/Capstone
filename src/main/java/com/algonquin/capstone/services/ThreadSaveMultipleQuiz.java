package com.algonquin.capstone.services;

import java.util.Date;

import com.algonquin.capstone.beans.Quiz;
import com.algonquin.capstone.beans.Result;
import com.algonquin.capstone.dao.QuizDao;

public class ThreadSaveMultipleQuiz implements Runnable {
	private Thread t;
	private Result result;
	private int recordsId;
	QuizDao quizDao = new QuizDao();

	public ThreadSaveMultipleQuiz(Result result, int recordsId) {
		this.result = result;
		this.recordsId = recordsId;
	}

	@Override
	public void run() {
		quizDao.createQuiz(new Quiz(0, this.recordsId, result.getQuestionId(), result.getUserAnswer(), new Date()));

	}

	public void start() {
		System.out.println("Starting saving questions " + result.getQuestionId());
		if (t == null) {
			t = new Thread(this, result.getQuestionId());
			t.start();
		}
	}
}
