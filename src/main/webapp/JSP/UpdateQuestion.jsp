<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update Question Page</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/UpdateQuestion.css" ></link>
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
<%@ page import="com.algonquin.capstone.beans.Question" %>
<% Question question = (Question)request.getAttribute("thequestion"); %>
<body>
<div class="page">
<!-- Header -->
	<div style="text-align: right">
		<a href="/Capstone/JSP/Admin.jsp" id="top"><button class="logout button">Back to home page</button></a>
		<a href="<%=request.getContextPath()%>/JSP/NewQuestion.jsp"><button class="logout button">Create New Question</button></a>
		<a href="<%=request.getContextPath()%>/QuestionList"><button class="logout button">Question List</button></a>
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="logout button">Log out</button></a>
	</div>
		<h2>Update Question</h2>


	<!-- Body -->
	<div>
	<form action="<%=request.getContextPath()%>/UpdateQuestionServlet" method="post">
	<p>Topic: <%=question.getTopic()%></p>
	<p>Date Created: <%=question.getDate()%></p>
	<p>Level: <%=question.getLevel()%></p>
	
	<label for="question">Question: </label> <br/>
	<textarea name="question" id="question" class="question" cols="60" rows="4" required><%=question.getQuestion()%></textarea> <br/> <br/>
	<label for="option1">Option 1:</label>
	<input type="text" name="option1" id="option1" class="question" style="width: 300px;" value="<%=question.getOption1()%>"/><br/> <br/>
	<label for="option2">Option 2:</label>
	<input type="text" name="option2" id="option2" class="question" style="width: 300px;" value="<%=question.getOption2()%>"/><br/> <br/>
	<label for="option3">Option 3:</label>
	<input type="text" name="option3" id="option3" class="question" style="width: 300px;" value="<%=question.getOption3()%>"/><br/> <br/>
	<label for="option4">Option 4:</label>
	<input type="text" name="option4" id="option4" class="question" style="width: 300px;" value="<%=question.getOption4()%>"/><br/> <br/>
	<label>New Answer:</label>
	<select name="answer" id="answer" >
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	<br/> <br/>
	<input type="hidden" name="id" id="id" class="question" value="<%=question.getId()%>"/>
			<input class="button" type="submit" value="Update"/>
	<a class="button" href="<%=request.getContextPath()%>/QuestionList">Cancel</a>
	</form>

	</div>	
	</div>
</body>
</html>