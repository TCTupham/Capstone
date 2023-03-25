package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.algonquin.capstone.beans.QuizBean;

public class QuizDao {
	private String SELECT_ALL_QUIZES = "select * from quiz";
	public QuizDao() {
	}

	public List < QuizBean > getAllQuiz() {
		
		List < QuizBean > quizes = new ArrayList < > ();
		
		Connection con = null;


		try {
			con = DBConnection.getConnectionToDatabase();
			 PreparedStatement preparedStatement = con.prepareStatement(SELECT_ALL_QUIZES); 
		            System.out.println(preparedStatement);
		            
		            ResultSet rs = preparedStatement.executeQuery();

		            
		            while (rs.next()) {
		                int id = rs.getInt("id");
		                String name = rs.getString("name");
		                int time = rs.getInt("time");
		                int level = rs.getInt("level");
		                Date dateCreated = rs.getDate("dateCreated");
		                quizes.add(new QuizBean(id, name, time, level, dateCreated));
		            }
		        } catch (SQLException e) {
		        	e.printStackTrace();
		        }
		        return quizes;
	}



}