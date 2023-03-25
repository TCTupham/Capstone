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
	<h2>Quiz</h2>
	<p class="backhome" ><a href="/Capstone/JSP/Admin.jsp">Back to home page</a></p>
	<form action="<%=request.getContextPath()%>/SubmitServlet"  method="post">
	<div class="list-grid">
	<% for(int i=0;i<quiz.size(); i++) {%>
			<div>
			<p>Question <%=i+1%>: <%=quiz.get(i).getQuestion() %></p>
			  <label><input type="radio" name="<%=i%>" value="1"> 1. <%=quiz.get(i).getOption1() %></label> <br/>
			  <label><input type="radio" name="<%=i%>" value="2"> 2. <%=quiz.get(i).getOption2() %></label>  <br/>
			  <label><input type="radio" name="<%=i%>" value="3"> 3. <%=quiz.get(i).getOption3() %></label>  <br/>
			  <label><input type="radio" name="<%=i%>" value="4"> 4. <%=quiz.get(i).getOption4() %></label>	 <br/>
			  <input type="hidden" name="id<%=i%>" value="<%=quiz.get(i).getId() %>"/>	
			  
			</div>
			
	<% }%>
		<input type="hidden" name="username" value="<%=session.getAttribute("User") %>"/>	
		 <br/>
		<input type="submit" value="submit"></input>
	</div>
	</form>


</body>
</html>