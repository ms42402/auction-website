<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<%
  // Replace with your own MySQL connection details
  

  // Connect to the database
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");

  // Get the login form parameters
  String busername = request.getParameter("username");
  String bpassword = request.getParameter("passwords");

  // Create a PreparedStatement to authenticate the login
  PreparedStatement pstmt = con.prepareStatement("SELECT * FROM buyers WHERE email_address = ?");
  pstmt.setString(1, busername);

  // Execute the SELECT query
  ResultSet rs = pstmt.executeQuery();

  // Check if the login is valid
  if (rs.next()) {
    // Login is valid, redirect to the dashboard page
    session.setAttribute("username", busername);
    session.setAttribute("passwords", bpassword);
    response.sendRedirect("buyerHomePage.jsp");
  } else {
    // Login is invalid, display an error message
    out.println("Invalid admin ID");
  }

  // Close the ResultSet, PreparedStatement, and Connection objects
  rs.close();
  pstmt.close();
  con.close();
%>
