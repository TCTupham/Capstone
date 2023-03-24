<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Update Question Page</title>
</head>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("Admin") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<%@ page import="com.algonquin.capstone.beans.questions" %>
<% questions question = (questions)request.getAttribute("thequestion"); %>
<body>
	<center>
		<h2>Update Question</h2>
	</center>

	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	
	<div>
	<h3> Update question: </h3>
	<form action="<%=request.getContextPath()%>/UpdateQuestionServlet" method="post">
	<p>Topic: <%=question.getTopic()%>"</p>
	<p>Date Created: <%=question.getDate()%>"</p>
	<p>Level: <%=question.getLevel()%>"</p>
	
	<label for="question">Question: </label>
	<input type="text" name="question" id="question" class="question" style="width: 600px;" value="<%=question.getQuestion()%>"></input> <br/> <br/>
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
	<input type="submit" value="Update"/>	
	</form>
	<a href="<%=request.getContextPath()%>/QuestionList"><button>Cancel</button></a>
	</div>
</body>
</html>