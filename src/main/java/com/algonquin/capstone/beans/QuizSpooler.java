//package com.algonquin.capstone.beans;
//
//import java.util.concurrent.ExecutorService;
//import java.util.concurrent.Executors;
//
//public class QuizSpooler {
//
//	private final ExecutorService executor;
//
//	public QuizSpooler() {
//		// creating a pool of 5 threads
//		this.executor = Executors.newFixedThreadPool(5);
//	}
//
//	public void enqueue(Quiz quiz) {
//		Runnable quizGenerator = new QuizGenerator();
//		// calling execute method of ExecutorService
//		executor.execute(quizGenerator);
//		
//	}
//
//	public void shutdown() {
//		executor.shutdown();
//		while (!executor.isTerminated()) {
//		}
//		System.out.println("Finished all threads");
//	}
//
//
//}
