<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>User Page</title>
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
	<center>
		<h2>User's Home</h2>
	</center>
	Welcome
	<%=request.getSession().getAttribute("User")%>

	<div style="text-align: right">
		<a href="<%=request.getContextPath()%>/LogoutServlet">Logout</a>
	</div>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Level</th>
				<th>Time</th>
				<th>DateCreated</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${quizes}">

				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.time}" /></td>
					<td><c:out value="${user.level}" /></td>
					<td><c:out value="${user.dateCreated}" /></td>
					<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
			<!-- } -->
		</tbody>

	</table>

</body>
</html>