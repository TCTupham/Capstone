<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/Register.css" ></link>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Monofett&family=PT+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Roboto+Mono:wght@200;400;700&display=swap" rel="stylesheet">

</head>
<body>
	<div class="page">
		<h1>Quiz Pal</h1>
		<h2>Register Page</h2>
		
		<div class="content-box">
		<form name="form" action="<%=request.getContextPath()%>/RegisterServlet" method="post">	
	        <table>
		        <tr>
			        <td>Fullname</td>
			        <td><input type="text" name="fullname" required/></td>
		        </tr>
		        <tr>
			        <td>Email</td>
			        <td><input type="text" name="email" required/></td>
		        </tr>
		        <tr>
			        <td>Username</td>
			        <td><input type="text" name="username" required /></td>
		        </tr>
		        <tr>
			        <td>Password</td>
			        <td><input type="text" name="password" required /></td>
		        </tr>
		        <tr>
		        	<td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
		        </tr>
		        
		        <tr>
		        	<td></td>
		        	<td><input class="button" type="submit" value="Register"/>
		        	&nbsp;&nbsp;
		        	<a href="<%=request.getContextPath()%>/JSP/Login.jsp" class="button">Cancel</a>
		        </tr>
	        
	        </table>
	        </form>
        </div>
	</div>

</body>
</html>