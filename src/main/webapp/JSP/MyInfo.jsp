<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.algonquin.capstone.beans.Member" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Info Page</title>
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
	<center>
		<h2>My Info</h2>
	</center>

	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>
	<div>
	<p>User name: <%=member.getUsername() %> </p>
	<p>Full name: <%=member.getFullname() %> </p>
	<p>Email: <%=member.getEmail() %> </p>
	<% if (session.getAttribute("User") != null){ %>
	<a href="/Capstone/JSP/User.jsp"><button>Back to home page</button></a>
	<%} else if (session.getAttribute("Admin") != null){%>
	<a href="/Capstone/JSP/Admin.jsp"><button>Back to home page</button></a>
	<%} else { %> 
	<a href="/Capstone/JSP/Login.jsp"><button>Back to home page</button></a>
	<% } %>
	
	</div>
</body>
</html>