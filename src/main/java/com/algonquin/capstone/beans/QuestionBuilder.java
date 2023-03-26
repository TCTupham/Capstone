package com.algonquin.capstone.beans;

import java.util.Date;
import java.util.UUID;

public class QuestionBuilder {
	
	    
	    private UUID id;
	    private String question, option1, option2,option3,option4,answer,topic, level;
	    private java.sql.Date date;

	    public QuestionBuilder() {
	    }

	    public QuestionBuilder setQuestion(String question) {
	        this.question = question;
	        return this;
	    }

	    public QuestionBuilder setOption1(String option1) {
	        this.option1 = option1;
	        return this;
	    }
	    
	    public QuestionBuilder setOption2(String option2) {
	        this.option2 = option2;
	        return this;
	    }
	    
	    public QuestionBuilder setOption3(String option3) {
	        this.option3 = option3;
	        return this;
	    }
	    
	    public QuestionBuilder setOption4(String option4) {
	        this.option4 = option4;
	        return this;
	    }
	    
	    public QuestionBuilder setAnswer(String answer) {
	        this.answer = answer;
	        return this;
	    }
	    
	    public QuestionBuilder setTopic(String topic) {
	        this.topic = topic;
	        return this;
	    }
	    
	    public QuestionBuilder setLevel(String level) {
	        this.level = level;
	        return this;
	    }
	    
	    
	    public QuestionBuilder setId() {
	        this.id = UUID.randomUUID();
	        return this;
	    }

	    public QuestionBuilder setId(UUID uuid) {
	        this.id = uuid;
	        return this;
	    }

	    public QuestionBuilder setDate() {
	    	Date currentDate = new Date();
	    	java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
	    	this.date = sqlDate;
	        return this;
	    }
	    
	    public QuestionBuilder setDate(java.sql.Date date) {
	        this.date = date;
	        return this;
	    }

	    public Question build() {
	        return new Question(id,question,option1,option2,option3,option4,answer,topic,date,level);
	    }

	}
