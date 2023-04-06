<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/Login.css" ></link>
<title>Login</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">
</head>
<body>
<div class="login-page">
		<h1>Quiz Pal</h1>
		
		<div class="form-box">
	<form name="form" action="<%=request.getContextPath()%>/LoginServlet"
		method="post">
		<h2>Login</h2>
		<p style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></p>
		<table>		
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input  type="text" name="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td>
				<input class="button" type="submit" value="Login"></input>
				&nbsp;&nbsp;
				<input type="reset"  class="button" value="Reset"></input> </td>
			</tr>
			<tr>
				<td></td>
				<td>
					<a href="<%=request.getContextPath()%>/RegisterServlet">New member? Register now!</a></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
</body>
</html>