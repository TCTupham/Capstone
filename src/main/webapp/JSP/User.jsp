<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.algonquin.capstone.beans.Records"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Page</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/User.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

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
	<div class="page">
	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/JSP/MyInfo.jsp"><button class="button logout">My info</button></a>
		<a href="<%=request.getContextPath()%>/UserServlet"><button class="button logout">My record</button></a>
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="button logout">Log out</button></a>	
	</div>
	<h2>User's Home</h2>
	<p>Welcome <%=session.getAttribute("User")%> </p>
	<div class="content-box">
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
			<input class ="button" type="submit" value="Start quiz" />
			<br /> <br />
		</fieldset>
	</form>
	</div>
	</div>

</body>
</html>