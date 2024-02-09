 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete User</title>
</head>
<body>
	<div align = "center">
	<h1>Delete a Buyer or Seller</h1><br><br>
	</div>
	<div align = "center">
		<form action = "deleteUser.jsp" method = "POST">
			<label>Enter Username: </label>
			<input type = "text" name = "Username" placeholder = "Username" required><br><br>
			
			
			<br><br>
		 	<input type="submit" value="Deactivate User">
		 </form>

	</div>

</body>
</html>