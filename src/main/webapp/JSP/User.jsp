<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.algonquin.capstone.beans.Records"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Page</title>
</head>
<%
//In case, if User session is not set, redirect to Login page.
if ((request.getSession(false).getAttribute("User") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<body>
	<center>
		<h2>User's Home</h2>
	</center>
	Welcome
	<%=request.getSession().getAttribute("User")%>

	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	<br />
	

	<form action="<%=request.getContextPath()%>/GetQuizServlet"
		method="get">
		<fieldset>
			<legend>Quiz</legend>
			<label>Select level:</label> <select name="level" id="level">
				<%
				for (int i = 1; i <= 3; i++) {
				%>
				<option value="<%=i%>"><%=i%></option>
				<%
				}
				%>
			</select><br>
			<br>
			<input type="submit" value="Start quiz" />
			<br /> <br />
		</fieldset>
	</form>

	<h1>Your's results</h1>
	<table class="table table-bordered">
		<thead>
			<tr>

				<th>Level</th>
				<th>Score</th>
				<th>Date</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Records> list = (List<Records>) request.getAttribute("records");
			%>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>

			<tr>
				<td><%=list.get(i).getLevel()%></td>
				<td><%=list.get(i).getScore()%></td>
				<td><%=list.get(i).getDate()%></td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="<%=request.getContextPath()%>/QuizRecordsServlet?recordsId=<%=list.get(i).getId()%>">View
						details</a>
				</td>
			</tr>
			<%
			}
			%>
			<!-- } -->
		</tbody>
	</table>


</body>
</html>