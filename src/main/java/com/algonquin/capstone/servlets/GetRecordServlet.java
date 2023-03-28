package com.algonquin.capstone.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.algonquin.capstone.beans.Records;
import com.algonquin.capstone.beans.User;


	public class GetRecordServlet extends HttpServlet {
		public GetRecordServlet() {
		}

		private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String userName = request.getParameter("user");
			User user = new User(userName);
			List<Records> list = user.getResult();
			request.setAttribute("records", list);
			request.getRequestDispatcher("/JSP/MyRecord.jsp").forward(request, response);
		}
	}
