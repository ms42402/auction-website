<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");

  // Create a Statement object
  Statement stmt = con.createStatement();

  // Execute a SELECT query to find the total sales for all items
  ResultSet rs = stmt.executeQuery("SELECT SUM(initial_price) as total_sales FROM item");

  // Retrieve the total sales from the result set
  int totalSales = 0;
  if (rs.next()) {
    totalSales = rs.getInt("total_sales");
  }

  // Print the total sales
  out.println("Total sales: " + totalSales);

  // Close the ResultSet, Statement, and Connection objects
  rs.close();
  stmt.close();
  con.close();
%>

<a href="adminHomePage.jsp">
      <input type="submit" value=" Admin Home Page"/>
        </a>