<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.algonquin.capstone.beans.Records"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Record</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/MyRecord.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

</head>
<%
//In case, if User session is not set, redirect to Login page.
if ((request.getSession(false).getAttribute("User") == null)) {
%>
<jsp:forward page="/JSP/Login.jsp"></jsp:forward>
<%
}
%>
<body>
<div class="page">
	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/JSP/MyInfo.jsp"><button class="button logout">My info</button></a>
		<a href="/Capstone/JSP/User.jsp"><button class="button logout">Back to home page</button></a>
		<a href="<%=request.getContextPath()%>/LogoutServlet"><button class="button logout">Logout</button></a>
	</div>
		<h2>My Record</h2>
	<div class="content-box">
		<div class="record-grid">
			<div>Level</div>
			<div>Score</div>
			<div>Date</div>
			<div></div>
			<%
			List<Records> list = (List<Records>) request.getAttribute("records");
			%>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
				<div><%=list.get(i).getLevel()%></div>
				<div><%=list.get(i).getScore()%></div>
				<div><%=list.get(i).getDate()%></div>
				<div><a href="<%=request.getContextPath()%>/QuizRecordsServlet?recordsId=<%=list.get(i).getId()%>">View details</a></div>
			<%
			}
			%>
	</div>
	</div>
	</div>


</body>
</html>