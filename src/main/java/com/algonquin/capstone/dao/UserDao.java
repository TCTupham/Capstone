package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.algonquin.capstone.servlets.DBConnection;
import com.algonquin.capstone.servlets.Records;

public class UserDao {
	
	 public int createRecord(Records record) {
	    	int rowsAffected =0;
			try {
				Connection connection = DBConnection.getConnectionToDatabase();
				
				String insertQuery = "insert into records (username,score,date) values(?,?,?)";
				PreparedStatement statement = connection.prepareStatement(insertQuery);
				statement.setString(1,record.getUsername());
				statement.setString(2,String.valueOf(record.getScore()));
				statement.setString(3,record.getDate().toString());			
				rowsAffected = statement.executeUpdate();
				
			} catch (SQLException e){
				e.printStackTrace();
			}
			
			return rowsAffected ;
		}

}
