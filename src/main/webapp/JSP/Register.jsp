<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<form name="form" action="<%=request.getContextPath()%>/RegisterServlet" method="post">
 		<center>
		<h2>Register Page</h2>
		</center>
        <table align="center">
        <tr>
        <td>Fullname</td>
        <td><input type="text" name="fullname" /></td>
        </tr>
        <tr>
        <td>Email</td>
        <td><input type="text" name="email" /></td>
        </tr>
        <tr>
        <td>Username</td>
        <td><input type="text" name="username" /></td>
        </tr>
        <tr>
        <td>Password</td>
        <td><input type="text" name="password" /></td>
        </tr>
        <tr>
        <td><span style="color:red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span></td>
        </tr>
        

        <td></td>
        <td><input type="submit" value="Register"></input><input type="submit" value="Cancel"></input></td>
        </tr>
        </table>
        </form>

</body>
</html>