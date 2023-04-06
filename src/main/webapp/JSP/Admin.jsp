<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin Page</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/Admin.css" ></link>
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
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="button logout">Log out</button></a>
	</div>	
	<h2>Admin Home Page</h2>
	<p> Welcome <%=session.getAttribute("Admin")%></p>
	
	<div class="content-box">
	<a href="<%=request.getContextPath()%>/JSP/NewQuestion.jsp"><button>Create New Question</button></a> <br/> <br />
	<a href="<%=request.getContextPath()%>/QuestionList"><button>Question List</button></a> <br/><br />
	<a href="<%=request.getContextPath()%>/JSP/MyInfo.jsp"><button>My Account</button></a>
	
	</div>
	
</div>
</body>
</html>