<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String question = request.getParameter("question");   

try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	
	PreparedStatement pstatement = null;
	
	int updateQuery = 0;
	
	
	String queryString1 = "insert into q_a(question) values(?)";
	pstatement = conn.prepareStatement(queryString1);
	
	pstatement.setString(1, question);
    
    
    updateQuery = pstatement.executeUpdate();
    
    if (updateQuery != 0) {
    	
    	//CHANGE THIS LATER PLEASE 
        response.sendRedirect("auctionCreatedPage.jsp");
    }
     

}
        catch(Exception e)

{
        System.out.print(e);
        e.printStackTrace();

}
 %>