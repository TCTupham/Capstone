package com.algonquin.capstone.beans;

import java.sql.Date;
import java.util.UUID;

public class Result {
	
	protected UUID id;
    protected String questionId, userAnswer, username;
    protected Date date;
    
	    public Result(UUID id,String questionId,String userAnswer, Date date) {
	    	this.id=id;
	    	this.questionId = questionId;
	    	this.userAnswer = userAnswer;
	   
	    	this.date=date;
	    }
	    
	    public String getId() {
	    	return id.toString();
	    }
	    
	    public String getQuestionId() {
	    	return questionId;
	    }
	    
	    public String getUserAnswer() {
	    	return userAnswer;
	    }
	    
	    public String getUsername() {
	    	return username;
	    }
	    public Date getDate() {
	    	return date;
	    }
	    
	}
