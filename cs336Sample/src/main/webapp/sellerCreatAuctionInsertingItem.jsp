<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%


//<form method="post" action="addingForItems.jsp"> this is for creatind an item 

String itemName = request.getParameter("names");   
String itemDate = request.getParameter("dates");   
String itemTime = request.getParameter("times");
String itemInitialPrice = request.getParameter("initial_price");   

String itemID = request.getParameter("item_ID") ;   
String itemIncrement = request.getParameter("increment_of_bids") ; 

String categories = request.getParameter("categories");   

//out.println("this is the item date " + itemDate + " " + itemName + " " + itemTime + " " + itemInitialPrice + " " + itemID + "  " + itemIncrement + " " + categories); 


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	
	PreparedStatement pstatement = null;
	
	int updateQuery = 0;
	
	
	String queryString1 = "insert into item(dates, times, initial_price, item_ID, names, increment_of_bids, categories, price) values(?, ?, ?, ?, ?, ?, ?, 0)";
	pstatement = conn.prepareStatement(queryString1);
	
	pstatement.setString(1, itemDate);
    pstatement.setString(2, itemTime);
    pstatement.setString(3, itemInitialPrice);
    pstatement.setString(4, itemID);
    pstatement.setString(5, itemName);
    pstatement.setString(6, itemIncrement);
    pstatement.setString(7, categories);
    
    updateQuery = pstatement.executeUpdate();
    
    if (updateQuery != 0) {
        response.sendRedirect("auctionCreatedPage.jsp");
    }
    
       

}
        catch(Exception e)

{
        System.out.print(e);
        e.printStackTrace();

}
 %>