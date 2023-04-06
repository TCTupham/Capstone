<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.algonquin.capstone.beans.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Info Page</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/MyInfo.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

</head>
<%
//In case, if Admin session is not set, redirect to Login page
if ((request.getSession(false).getAttribute("member") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<% String memberName = (String)session.getAttribute("member");
	Member member = new Member(memberName);%>
<body>
	<div class="page">
		<div style="text-align: right">
			<% if (session.getAttribute("User") != null){ %>
			<a href="/Capstone/JSP/User.jsp"><button class="logout button">Back to home page</button></a>
			<a href="/Capstone/GetRecordServlet"><button class="logout button">My record</button></a>
			<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="logout button">Log out</button></a>
			<%} else if (session.getAttribute("Admin") != null){%>
				<a href="/Capstone/JSP/Admin.jsp" id="top"><button class="logout button">Back to home page</button></a>
				<a href="<%=request.getContextPath()%>/JSP/NewQuestion.jsp"><button class="logout button">Create New Question</button></a>
				<a href="<%=request.getContextPath()%>/QuestionList"><button class="logout button">Question List</button></a>
				<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="logout button">Log out</button></a>
			<%} else { %> 
			<a href="/Capstone/JSP/Login.jsp"><button>Back to home page</button></a>
			<% } %>	
		</div>
		<h2>My Info</h2>
		<div class="content-box myinfo-grid">
				<div><p>User name:</p></div>
				<div><p><%=member.getUsername() %></p></div>
				<div><p>Full name:</p></div>
				<div><p> <%=member.getFullname() %> </p></div>
				<div><p>Email:</p></div>
				<div><p><%=member.getEmail() %></p></div>
		</div>
	</div>
</body>
</html>