<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.algonquin.capstone.beans.Question" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question Managing</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/QuestionListPage.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">
<% ArrayList<Question> list = (ArrayList<Question>)request.getAttribute("questionlist"); %>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("Admin") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>

</head>
<body>
<div class="page">
<!-- Header -->
	<div style="text-align: right">
		<a href="/Capstone/JSP/Admin.jsp" id="top"><button class="logout button">Back to home page</button></a>
		<a href="<%=request.getContextPath()%>/JSP/NewQuestion.jsp"><button class="logout button">Create New Question</button></a>
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="logout button">Log out</button></a>
	</div>
	<h2 >Question List</h2>
	
	<!-- Body -->
	<div class="list-grid">
	<% for(int i=0;i<list.size(); i++) {%>
			<div>
			<p class="question">Question <%=i+1%>: <%=list.get(i).getQuestion() %></p>
			<p>1. <%=list.get(i).getOption1() %> </p>
			<p>2. <%=list.get(i).getOption2() %> </p>
			<p>3. <%=list.get(i).getOption3() %> </p>
			<p>4. <%=list.get(i).getOption4() %> </p>
			</div>
			
			<div class="info-grid">
				<div>
					<p class="question">Information</p>
					<p>Answer: <%=list.get(i).getAnswer() %> </p>
					<p>Topic: <%=list.get(i).getTopic() %> </p>
					<p>Date Created: <%=list.get(i).getDate() %> </p>
					<p>Level: <%=list.get(i).getLevel() %> </p>	
				</div>
			<div>
			<br /> <br/>
			<form action="DeleteQuestionServlet" method="post">      		
	   			<input type="hidden" name="id" value="<%= list.get(i).getId().toString()%>"></input>
				<input class="button" type="submit" value="Delete"></input>
			</form>
			
			<br />
			
			<form action="UpdateQuestionServlet" method="get">
				<input type="hidden" name="id" value="<%= list.get(i).getId().toString()%>"></input>
				<input class="button" type="submit" value="Update"></input>
			</form>
			</div>
			
			</div>
			
			
			
		<% }%>
		
	</div>
	<div style="text-align: right">
	<a href="#top" class="back-top"><button class="logout button">Back to top </button></a>
	</div>

</div>
</body>
</html>