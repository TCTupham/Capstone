package com.algonquin.capstone.beans;

import java.util.Date;

public class QuizBean {
	
	private int id;
	private String name;
	private int level;
	private int time;
	private Date dateCreated;
	
	
	public QuizBean(int id, String name, int level, int time, Date dateCreated) {
		super();
		this.id = id;
		this.name = name;
		this.level = level;
		this.time = time;
		this.dateCreated = dateCreated;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
	
	
	
	
}
