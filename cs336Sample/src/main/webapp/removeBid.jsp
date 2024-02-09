<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Bid</title>
</head>
<body>
	<div align = "center">
	<h1>Delete a Bid</h1><br><br>
	</div>
	<div align = "center">
		<form action = "deleteBid.jsp" method = "POST">
			<label>Enter Username of Buyer: </label>
			<input type = "text" name = "Username" placeholder = "Username" required><br><br>
			
			
			<label for="UserType">Buyer Password: </label>
			<input type="password" name = "Password" placeholder = "Password" required><br><br>
			
			<label>Enter item ID: </label>
			<input type = "text" name = "ItemID" placeholder = "ID" required>
			
			<br><br>
		 	<input type="submit" value="Remove Bid">
		 </form>

	</div>

</body>
</html>