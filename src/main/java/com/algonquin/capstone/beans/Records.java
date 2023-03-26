package com.algonquin.capstone.beans;

import java.sql.Date;

public class Records {
	private int id;
	private String username;
	private double score;
	private int level;
	private Date date;
	
	public Records (String username,double score, int level) {
		this.username = username;
		this.score = score;
		java.util.Date currentDate = new java.util.Date();
		this.date = new Date(currentDate.getTime()); 
		this.level = level;
	}
	
	public Records (int id, String username,double score, int level, Date date) {
		this.id = id;
		this.username = username;
		this.score = score;
		this.level =level;
		this.date = date;   	
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

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
