<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>New Question Page</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/NewQuestion.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

</head>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("Admin") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<body>
<div class="page">
	<div style="text-align: right">
	<a href="/Capstone/JSP/Admin.jsp"><button class="logout button">Back to home page</button></a>
	<a href="<%=request.getContextPath()%>/QuestionList"><button class="logout button">Question List</button></a>
	<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="button logout">Log out</button></a>
	</div>
	<h2>New Question</h2>
	
	
	<div class="content-box">
	<form action="<%=request.getContextPath()%>/CreateQuestionServlet" method="post">
	<label for="question">Question: </label> <br/>
	<textarea name="question" id="question" class="question" cols="60" rows="4" required></textarea> <br/> <br/>
	<label for="option1">Option 1:</label>
	<input type="text" name="option1" id="option1" class="question" style="width: 300px;" required/><br/> <br/>
	<label for="option2">Option 2:</label>
	<input type="text" name="option2" id="option2" class="question" style="width: 300px;" required/><br/> <br/>
	<label for="option3">Option 3:</label>
	<input type="text" name="option3" id="option3" class="question" style="width: 300px;" required/><br/> <br/>
	<label for="option4">Option 4:</label>
	<input type="text" name="option4" id="option4" class="question" style="width: 300px;" required/><br/> <br/>
	<label>Answer:</label>
	<select name="answer" id="answer">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	<label>Level:</label>
	<select name="level" id="level">
	<% for(int i=1;i<=3; i++) {%>
		<option value="<%=i%>"><%=i%></option>
	<% }%>
	</select>
	
	
	<br/> <br/>
	<label for="topic">Topic:</label>
	<input type="text" name="topic" id="topic" class="question" style="width: 300px;"/>
	<br/> <br/>
	<input class="button" type="submit" value="Create"/>
	<a class="button" href="/Capstone/JSP/Admin.jsp">Cancel</a>
	</form>
	
	
	</div>
	
	</div>
</body>
</html>