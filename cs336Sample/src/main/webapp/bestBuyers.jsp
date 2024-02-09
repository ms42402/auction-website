<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%

  // Connect to the database
  Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");

  // Create a Statement object
  Statement stmt = con.createStatement();

  // Execute a SELECT query to find the top three highest sales
  ResultSet rs = stmt.executeQuery("SELECT user, SUM(sales) as total_sales FROM sales_table GROUP BY item ORDER BY total_sales DESC LIMIT 3");

  // Iterate through the result set and print the item and sales for each row
  while (rs.next()) {
    String item = rs.getString("item");
    int sales = rs.getInt("total_sales");
    out.println(item + ": " + sales + "<br>");
  }

  // Close the ResultSet, Statement, and Connection objects
  rs.close();
  stmt.close();
  con.close();
%>