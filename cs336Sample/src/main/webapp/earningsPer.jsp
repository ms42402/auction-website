<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
  String itemId = request.getParameter("itemId");

Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
  PreparedStatement pstmt = null;
  ResultSet rs = null;

  try {
	Class.forName("com.mysql.jdbc.Driver");

	  
	  //Statement st1 =conn.createStatement();
		//Statement st2 =conn.createStatement();
	  
	  String queryString1 = "select price from item where item_ID = ?"; 
	  
	  
    pstmt = conn.prepareStatement(queryString1);
    pstmt.setString(1, itemId);
    
    rs = pstmt.executeQuery();

    if (rs.next()) {
      int sales = rs.getInt("price");
      out.println("Sales for item " + itemId + ": " + sales);
    } else {
      out.println("Item not found");
    }
  } catch (SQLException e) {
    out.println("Error connecting to database: " + e.getMessage());
  //} catch (NamingException e) {
    //out.println("Error looking up data source: " + e.getMessage());
  } finally {
    try {
      if (rs != null) {
        rs.close();
      }
      if (pstmt != null) {
        pstmt.close();
      }
      if (conn != null) {
        conn.close();
      }
    } catch (SQLException e) {
      out.println("Error closing database resources: " + e.getMessage());
    }
  }
%>

<a href="adminHomePage.jsp">
      <input type="submit" value=" Admin Home Page"/>
        </a>