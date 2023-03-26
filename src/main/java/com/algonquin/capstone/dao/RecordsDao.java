package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.algonquin.capstone.beans.Records;

public class RecordsDao {
	private String SELECT_ALL_RECORDS = "select * from records where username = ?";
	private String SELECT_A_RECORDS = "select * from records where id = ?";

	public RecordsDao() {
	}

	public List<Records> getAllUserRecords(String userName) {

		List<Records> quizes = new ArrayList<>();

		Connection con = null;

		try {
			con = DBConnection.getConnectionToDatabase();
			PreparedStatement preparedStatement = con.prepareStatement(SELECT_ALL_RECORDS);
			preparedStatement.setString(1, userName);
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("username");
				double score = rs.getInt("score");
				int level = rs.getInt("level");
				Date dateCreated = rs.getDate("date");
				quizes.add(new Records(id, name, score, level, new java.sql.Date(dateCreated.getTime())));
			}
			rs.close();
			preparedStatement.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quizes;
	}
	
	public List<Records> getAllUserRecordsById(int id) {

		List<Records> quizes = new ArrayList<>();

		Connection con = null;

		try {
			con = DBConnection.getConnectionToDatabase();
			PreparedStatement preparedStatement = con.prepareStatement(SELECT_A_RECORDS);
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int rid = rs.getInt("id");
				String name = rs.getString("username");
				double score = rs.getInt("score");
				int level = rs.getInt("level");
				Date dateCreated = rs.getDate("date");
				quizes.add(new Records(rid, name, score, level, new java.sql.Date(dateCreated.getTime())));
			}
			rs.close();
			preparedStatement.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return quizes;
	}

}
