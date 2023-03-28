package com.algonquin.capstone.beans;

import java.sql.SQLException;

import com.algonquin.capstone.dao.MemberDao;
import com.algonquin.capstone.services.Profile;

public class Member implements Profile {
	private String fullname, email, username, password;
	MemberDao dao = new MemberDao();

	
	public Member(String username ) {
		this.username = username;	
		try {
			this.fullname = dao.getFullname(this.username);
			this.email = dao.getEmail(this.username);
			this.password = dao.getPassword(this.username);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getFullname() {
		return this.fullname;
	}
	
	
	public String getEmail() {
		return this.email;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public String getUsername() {
		return this.username;
	}

}
