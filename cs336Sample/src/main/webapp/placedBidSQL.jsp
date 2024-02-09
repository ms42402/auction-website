<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%


//<form method="post" action="addingForItems.jsp"> this is for creatind an item 

String bidEA = request.getParameter("email_address");   
String bidPass = request.getParameter("passwords");   
String bidPrice = request.getParameter("price");
String bidUL = request.getParameter("upper_limit");  
String bidItemID = request.getParameter("item_ID");  

 try
{
	 

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	
	PreparedStatement pstatement = null;
	
	int updateQuery = 0; 
	
	 /* PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM buyers WHERE email_address = ?");
	 pstmt.setString(1, bidEA);

	  // Execute the SELECT query
	 ResultSet rs = pstmt.executeQuery();
	  
	 PreparedStatement pstmt2 = conn.prepareStatement("SELECT * FROM item WHERE item_ID = ?");
	 pstmt2.setString(1, bidItemID);
	 ResultSet rs2 = pstmt2.executeQuery();*/

	  // Check if the login is valid and that the item exists 
		  
	    // Login is valid, redirect to the dashboard page
	    String queryString1 = "insert into bids(email_address, passwords, item_ID, price, upper_limit) values(?, ?, ?, ?, ?)";
		pstatement = conn.prepareStatement(queryString1);
		
		pstatement.setString(1, bidEA);
   	 	pstatement.setString(2, bidPass);
    	pstatement.setString(3, bidItemID);
    	pstatement.setString(4, bidPrice);
    	pstatement.setString(5, bidUL);
    	
    	updateQuery = pstatement.executeUpdate();
    	
   	PreparedStatement pstatement2 = null; 
    	int updateQuery2 = 0; 
    	
		String queryString2 = "update item set price = ? where item_ID = ?";
		pstatement2 = conn.prepareStatement(queryString2);
		
		pstatement2.setString(1, bidPrice);
    	pstatement2.setString(2, bidItemID);
    	
    	
    	updateQuery2 = pstatement2.executeUpdate();
    	

 		
    	if (updateQuery != 0 && updateQuery2 != 0) {
    	     response.sendRedirect("bidSuccessfullyPlaced.jsp");

    	   }
    	

	  
}
        catch(Exception e)

{
        System.out.print(e);
        e.printStackTrace();

}

%>
