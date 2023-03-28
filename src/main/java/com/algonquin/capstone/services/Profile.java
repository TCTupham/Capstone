package com.algonquin.capstone.services;

public interface Profile {
	public void setFullname(String fullname);
	public void setEmail(String email);	
	public String getFullname();
	public String getEmail();
	public String getPassword();	
	public String getUsername();
}
