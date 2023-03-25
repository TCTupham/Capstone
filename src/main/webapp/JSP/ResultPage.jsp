<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.algonquin.capstone.beans.questions" %>
<%@ page import="com.algonquin.capstone.beans.Result" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
<% 	ArrayList<questions> questionList = (ArrayList<questions>)request.getAttribute("questionList");
	ArrayList<Result> resultList = (ArrayList<Result>)request.getAttribute("resultList");
	double score = (double)request.getAttribute("score"); 
	int count = (int)request.getAttribute("count"); 
	ArrayList<Boolean> checkedList = (ArrayList<Boolean>)request.getAttribute("checkedList"); %>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("User") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>

</head>
<body>
<!-- Header -->
<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	
<!-- Body -->
	<h2>Result</h2>
	<p class="backhome" ><a href="/Capstone/JSP/Admin.jsp">Back to home page</a></p>
	<div class="list-grid">
	<p>Your score: <%=score %>% </p>
	<p>Correct: <%=count %>/30</p>
	<% for(int i=0;i<questionList.size(); i++) {%>
			<div>
			<p>Question <%=i+1%>: <%=questionList.get(i).getQuestion() %></p>
			<p>1. <%=questionList.get(i).getOption1() %></p>
			<p>2. <%=questionList.get(i).getOption2() %></p>
			<p>3. <%=questionList.get(i).getOption3() %></p>
			<p>4. <%=questionList.get(i).getOption4() %></p>
			<p>Your answer: <%=resultList.get(i).getUserAnswer() %> </p>
			<% if (checkedList.get(i))  { %>
				<p>Correct!</p>
			<%} else {%>
				<p>Wrong answer. The answer is: <%=questionList.get(i).getAnswer()%> </p>
				<%} %>		  
			</div>
			
	<% }%>

	</div>


</body>
</html>