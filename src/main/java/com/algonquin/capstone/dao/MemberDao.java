package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.algonquin.capstone.beans.Member;

public class MemberDao {
	
	 public  String getPassword(String username) throws SQLException {
			Connection conn = DBConnection.getConnectionToDatabase();
	    	Statement stmt = conn.createStatement();
	    	String query = " Select * from users where username='"+username+"';"; 
	    	ResultSet set = stmt.executeQuery(query);
	    	String password = null;
	    	while (set.next()) {
			 password = set.getString("password");						  	
	    	}			
			set.close();
			stmt.close();
			conn.close();
			
			return password;
			
		}
	 
	 public  String getEmail(String username) throws SQLException {
		 Connection conn = DBConnection.getConnectionToDatabase();
	    	Statement stmt = conn.createStatement();
	    	String query = " Select * from users where username='"+username+"';"; 
	    	ResultSet set = stmt.executeQuery(query);
	    	String email = null;
	    	while (set.next()) {
	    		email = set.getString("email");						  	
	    	}			
			set.close();
			stmt.close();
			conn.close();
			
			return email;
			
		}
	 
	 public  String getFullname(String username) throws SQLException {
		 Connection conn = DBConnection.getConnectionToDatabase();
	    	Statement stmt = conn.createStatement();
	    	String query = " Select * from users where username='"+username+"';"; 
	    	ResultSet set = stmt.executeQuery(query);
	    	String fullname = null;
	    	while (set.next()) {
	    		fullname = set.getString("fullname");						  	
	    	}			
			set.close();
			stmt.close();
			conn.close();
			
			return fullname;
			
		}
	 
	 

}
