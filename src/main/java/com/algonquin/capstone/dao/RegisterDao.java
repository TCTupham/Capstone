package com.algonquin.capstone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.algonquin.capstone.beans.LoginBean;

public class RegisterDao {

	public int registerUser(LoginBean loginBean) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO Users" + 
	"(FULLNAME, EMAIL, USERNAME, PASSWORD, ROLE) VALUES" + "(?,?,?,?,?);";
		
		int result = 0;
		Connection con = null;
		try {
			con = DBConnection.getConnectionToDatabase();
			PreparedStatement preparedStatement = con.prepareStatement(INSERT_USERS_SQL);
			
	            preparedStatement.setString(1, loginBean.getFullname());
	            preparedStatement.setString(2, loginBean.getEmail());
	            preparedStatement.setString(3, loginBean.getUserName());
	            preparedStatement.setString(4, loginBean.getPassword());
	            preparedStatement.setString(5,"User");
	            
	            System.out.println(preparedStatement);
	            result = preparedStatement.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
	        }
	        return result;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
