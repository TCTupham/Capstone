<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.ArrayList" %>
<%@ page import="com.algonquin.capstone.beans.Question" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Quiz</title>
<% ArrayList<Question> quiz = (ArrayList<Question>)request.getAttribute("quiz"); %>
<% int level = (int)request.getAttribute("level"); %>
<% int numberQ = (int)request.getAttribute("numberQ"); %>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("User") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<%int clock = (int)request.getAttribute( "clock" );%>
<script>
var distance = <%=clock%>;
//Update the count down every 1 second
var x = setInterval(function() {
	distance = distance - 1;


// Output the result in an element with id="demo"
document.getElementById("timer").innerHTML = distance + " (s)";
 
// If the count down is over, write some text 
if (distance < 0) {
 clearInterval(x);
 document.getElementById("timer").innerHTML = "Time over!";
 document.getElementById("submitQuizForm").submit();
}
}, 1000);

</script>
</head>
<body>
<!-- Header -->
<div style="text-align: center;">
		<h2>Quiz</h2>
		<h2>Level: <%=level%></h2>
	</div>
		
	<p class="backhome" ><a href="<%=request.getContextPath()%>/UserServlet">Back to home page</a></p>
<!-- Body -->
	
	<label style="font-size: 2em;">Timer: </label> <label style="font-size: 2em;" id="timer"></label>

	<form id="submitQuizForm" action="<%=request.getContextPath()%>/SubmitServlet"  method="post">

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
		<input type="hidden" type="text" name="level" value="<%=level%>">
			<br/>
		<input type="submit" value="submit"></input>
	</div>
	</form>


</body>
</html>