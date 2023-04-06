<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.algonquin.capstone.beans.Question" %>
<%@ page import="com.algonquin.capstone.beans.Result" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/ResultPage.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

<meta charset="UTF-8">
<title>Quiz Result</title>
<% 	ArrayList<Question> questionList = (ArrayList<Question>)request.getAttribute("questionList");
	ArrayList<Result> resultList = (ArrayList<Result>)request.getAttribute("resultList");
	double score = (double)request.getAttribute("score"); 
	int count = (int)request.getAttribute("count"); 
	int numberQ = (int)request.getAttribute("numberQ"); 
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
	<div class="page">
		<div id="top" style="text-align: right">
			<a href="/Capstone/JSP/User.jsp"><button class="button logout">Back to home page</button></a>
			<a href="<%=request.getContextPath()%>/JSP/MyInfo.jsp"><button class="button logout">My info</button></a>
			<a href="<%=request.getContextPath()%>/UserServlet"><button class="button logout">My record</button></a>
			<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="button logout">Logout</button></a>		
		</div>
		
<!-- Header -->
	
<!-- Body -->
		<h2>Result</h2>
		<div class="content-box"> 
		<p class="score" >Your score: <%=score %>% </p>
		<p class="score" >Correct: <%=count %>/<%=numberQ%></p>
		<% for(int i=0;i<questionList.size(); i++) {%>
				<div>
				<p class="question">Question <%=i+1%>: <%=questionList.get(i).getQuestion() %></p>
				<p>1. <%=questionList.get(i).getOption1() %></p>
				<p>2. <%=questionList.get(i).getOption2() %></p>
				<p>3. <%=questionList.get(i).getOption3() %></p>
				<p>4. <%=questionList.get(i).getOption4() %></p>
				<p>Your answer: <%=resultList.get(i).getUserAnswer() %> </p>
				<% if (checkedList.get(i))  { %>
					<p class="right">Correct!</p>
				<%} else {%>
					<p class="wrong">Wrong answer. The answer is: <%=questionList.get(i).getAnswer()%> </p>
					<%} %>		  
				</div>		
		<% }%>
		<a href="/Capstone/JSP/User.jsp"><button class="button">Done</button></a>
		</div>
		<a class="back-top" href="#top">Back to top</a>
	</div>

</body>
</html>