package com.algonquin.capstone.beans;


	import java.util.Date;
	import java.util.UUID;

	public class ResultBuilder {
		
		private UUID id;
		private String questionId, userAnswer;
		private java.sql.Date date;
		   

		    public ResultBuilder() {
		    }

		    public ResultBuilder setQuestionId(String questionId) {
		        this.questionId = questionId;
		        return this;
		    }

		    public ResultBuilder setUserAnswer(String userAnswer) {
		        this.userAnswer = userAnswer;
		        return this;
		    }
		    

		    
		    public ResultBuilder setId() {
		        this.id = UUID.randomUUID();
		        return this;
		    }

		    public ResultBuilder setId(UUID uuid) {
		        this.id = uuid;
		        return this;
		    }

		    public ResultBuilder setDate() {
		    	Date currentDate = new Date();
		    	java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
		    	this.date = sqlDate;
		        return this;
		    }
		    
		    public ResultBuilder setDate(java.sql.Date date) {
		        this.date = date;
		        return this;
		    }

		    public Result build() {
		        return new Result(id,questionId,userAnswer,date);
		    }

		


}
