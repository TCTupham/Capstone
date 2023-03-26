package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.UUID;

import com.algonquin.capstone.beans.Question;
import com.algonquin.capstone.beans.QuestionBuilder;
import com.algonquin.capstone.beans.Records;

public class UserDao {

	public int createRecord(Records record) {
		int rowsAffected = 0;
		try {
			Connection connection = DBConnection.getConnectionToDatabase();

			String insertQuery = "insert into records (username,score,date, level) values(?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, record.getUsername());
			statement.setString(2, String.valueOf(record.getScore()));
			statement.setString(3, record.getDate().toString());
			statement.setInt(4, record.getLevel());
			rowsAffected = statement.executeUpdate();

	        if (rowsAffected == 0) {
	            throw new SQLException("Creating user failed, no rows affected.");
	        }

	        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	               return generatedKeys.getInt(1);
	            }
	            else {
	                throw new SQLException("Creating user failed, no ID obtained.");
	            }
	        }
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rowsAffected;
	}
	
	public ArrayList<Question> getQuestionListByLevel(int levelInput) {
    	ArrayList<Question> list = new ArrayList<>();
    	try {
		Connection conn = DBConnection.getConnectionToDatabase();
    	Statement stmt = conn.createStatement();
    	
    	
    	String query = " Select * from questions where level ="+levelInput+";"; 
    	ResultSet set = stmt.executeQuery(query);	

    	while (set.next()) {
			UUID id = UUID.fromString(set.getString("id"));
			String question = set.getString("question");
			String option1 = set.getString("option1");
			String option2 = set.getString("option2");
			String option3 = set.getString("option3");
			String option4 = set.getString("option4");
			String answer = set.getString("answer");
			String topic = set.getString("topic");		
			Date date = set.getDate("datecreated");
			String level = set.getString("level");	
			Question newquestion = new QuestionBuilder()
					  	.setId(id)
	                    .setQuestion(question)
	                    .setOption1(option1)
	                    .setOption2(option2)
	                    .setOption3(option3)
	                    .setOption4(option4)
	                    .setAnswer(answer)
	                    .setDate(date)
	                    .setLevel(level)
	                    .setTopic(topic)
	                    .build()  ;
			
			list.add(newquestion);	
    	}
		set.close();
		stmt.close();
		conn.close();}
    	catch (SQLException e){
			e.printStackTrace();
		}    
    	return list;    
    }

}
