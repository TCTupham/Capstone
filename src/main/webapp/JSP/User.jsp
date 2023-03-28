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
	<%=session.getAttribute("User")%>

	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/JSP/MyInfo.jsp"><button>My info</button></a>
		<a href="<%=request.getContextPath()%>/UserServlet"><button>My record</button></a>
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button>Logout</button></a>
		
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

</body>
</html>