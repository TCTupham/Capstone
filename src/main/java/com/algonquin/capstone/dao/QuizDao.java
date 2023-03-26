package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.algonquin.capstone.beans.Quiz;

public class QuizDao {
	private String SELECT_ALL_QUIZES = "select * from quiz where recordsId = ?";

	public QuizDao() {
	}

	public List<Quiz> getAllQuiz(int recordsIdInput) {

		List<Quiz> quizes = new ArrayList<>();

		Connection con = null;

		try {
			con = DBConnection.getConnectionToDatabase();
			PreparedStatement preparedStatement = con.prepareStatement(SELECT_ALL_QUIZES);
			preparedStatement.setInt(1, recordsIdInput);
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				int recordsId = rs.getInt("recordsId");
				String questionId = rs.getString("questionId");
				String yourAnswer = rs.getString("yourAnswer");
				Date datecreated = rs.getDate("datecreated");
				quizes.add(new Quiz(id, recordsId, questionId, yourAnswer, datecreated));
			}
			
			preparedStatement.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quizes;
	}
	
	
	public int createQuiz(Quiz quiz) {

		int rowsAffected =0;
		try {
			Connection connection = DBConnection.getConnectionToDatabase();
			
			String insertQuery = "insert into quiz(recordsId,questionId,yourAnswer,datecreated) values(?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(insertQuery);
			statement.setInt(1,quiz.getRecordsId());
			statement.setString(2,quiz.getQuestionId());
			statement.setString(3,quiz.getYourAnswer());
			statement.setDate(4, new java.sql.Date(quiz.getDatecreated().getTime()));

			rowsAffected = statement.executeUpdate();
			statement.close();
			connection.close();

		} catch (SQLException e){
			e.printStackTrace();
		}
		
		return rowsAffected ;
	}


}