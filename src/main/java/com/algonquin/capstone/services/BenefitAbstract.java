package com.algonquin.capstone.services;

import java.util.ArrayList;
import java.util.List;
import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.Records;


public abstract class BenefitAbstract {
	public abstract void getPaid();
	public abstract  List<Records> getResult(String username);
	public abstract ArrayList<Question> createQuiz(int level);	
	public abstract void submitQuiz() ;
}