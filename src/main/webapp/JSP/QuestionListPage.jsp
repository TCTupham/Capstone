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
<div class="question-list-page">
<!-- Header -->
<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	
<!-- Body -->

	<h2>Question List</h2>
	<p class="backhome" ><a href="/Capstone/JSP/Admin.jsp">Back to home page</a></p>
	<br />
	<a href="<%=request.getContextPath()%>/JSP/NewQuestion.jsp"><button>Create New Question</button></a>
	<br />
	<div class="list-grid">
	<% for(int i=0;i<list.size(); i++) {%>
			<div>
			<p>Question <%=i+1%>: <%=list.get(i).getQuestion() %></p>
			<p>1. <%=list.get(i).getOption1() %> </p>
			<p>2. <%=list.get(i).getOption2() %> </p>
			<p>3. <%=list.get(i).getOption3() %> </p>
			<p>4. <%=list.get(i).getOption4() %> </p>
			</div>
			
			<div>
			<p>Answer: <%=list.get(i).getAnswer() %> </p>
			<p>Topic: <%=list.get(i).getTopic() %> </p>
			<p>Date Created: <%=list.get(i).getDate() %> </p>
			<p>Level: <%=list.get(i).getLevel() %> </p>	
			</div>
			
			<div>
			<br />
			<form action="DeleteQuestionServlet" method="post">      		
	   			<input type="hidden" name="id" value="<%= list.get(i).getId().toString()%>"></input>
				<input type="submit" value="Delete"></input>
			</form>
			
			<br />
			
			<form action="UpdateQuestionServlet" method="get">
				<input type="hidden" name="id" value="<%= list.get(i).getId().toString()%>"></input>
				<input type="submit" value="Update"></input>
			</form>
			</div>
			
		<% }%>
	</div>
	

</div>
</body>
</html>