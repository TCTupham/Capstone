package com.algonquin.capstone.servlets;

import java.sql.Date;

public class Records {
	private String username;
	private double score;
	private Date date;
	
	public Records (String username,double score) {
		this.username = username;
		this.score = score;
		java.util.Date currentDate = new java.util.Date();
		this.date = new Date(currentDate.getTime());   	
	}

	public double getScore() {
		return this.score;
	}


	public String getUsername() {
		return this.username;
	}

	public Date getDate() {
		return this.date;
	}

}
