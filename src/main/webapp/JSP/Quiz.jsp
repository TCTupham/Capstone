<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.algonquin.capstone.beans.questions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
<% ArrayList<questions> quiz = (ArrayList<questions>)request.getAttribute("quiz"); %>
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
<!-- Header -->
<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	
<!-- Body -->
	<h2>Quiz</h2>
	<p class="backhome" ><a href="/Capstone/JSP/Admin.jsp">Back to home page</a></p>
	<div class="list-grid">
	<% for(int i=0;i<quiz.size(); i++) {%>
			<div>
			<p>Question <%=i+1%>: <%=quiz.get(i).getQuestion() %></p>
			<p>1. <%=quiz.get(i).getOption1() %> </p>
			<p>2. <%=quiz.get(i).getOption2() %> </p>
			<p>3. <%=quiz.get(i).getOption3() %> </p>
			<p>4. <%=quiz.get(i).getOption4() %> </p>
			</div>
			
		<% }%>
	</div>
	


</body>
</html>