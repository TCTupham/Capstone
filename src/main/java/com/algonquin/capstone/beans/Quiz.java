package com.algonquin.capstone.beans;

import java.util.Date;

public class Quiz {
	
	private int id;
	private int recordsId;
	private String questionId;
	private String yourAnswer;
	private Date datecreated;
	
	public Quiz(int id, int recordsId, String questionId, String yourAnswer, Date datecreated) {
		this.id = id;
		this.recordsId = recordsId;
		this.questionId = questionId;
		this.yourAnswer = yourAnswer;
		this.datecreated = datecreated;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRecordsId() {
		return recordsId;
	}

	public void setRecordsId(int recordsId) {
		this.recordsId = recordsId;
	}

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getYourAnswer() {
		return yourAnswer;
	}

	public void setYourAnswer(String yourAnswer) {
		this.yourAnswer = yourAnswer;
	}

	public Date getDatecreated() {
		return datecreated;
	}

	public void setDatecreated(Date datecreated) {
		this.datecreated = datecreated;
	}
	
}
