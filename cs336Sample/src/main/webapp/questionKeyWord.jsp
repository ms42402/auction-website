<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html>
   <head>
      <title>sellerViewPastAuction</title>
   </head>
   
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
            <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong> Q&A </strong> </h1> </Font> <br/>
    

<%


//<form method="post" action="addingForItems.jsp"> this is for creatind an item 

//String itemName = request.getParameter("names");   
//String itemDate = request.getParameter("dates");   
//String itemTime = request.getParameter("times");
//String itemInitialPrice = request.getParameter("initial_price");   

String key = request.getParameter("key") ;   
//String itemIncrement = request.getParameter("increment_of_bids") ; 

//String categories = request.getParameter("categories");   

//out.println("this is the item date " + itemDate + " " + itemName + " " + itemTime + " " + itemInitialPrice + " " + itemID + "  " + itemIncrement + " " + categories); 


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	Statement st1 =conn.createStatement();
	Statement st2 =conn.createStatement();

	ResultSet rs1;
	ResultSet rs2;

	
	
	//out.println("working rn"); 
	rs1 = st1.executeQuery("select question from q_a where question like '%" + key + "%'"); 
	rs2 = st2.executeQuery("select answer from q_a where answer like '%" + key + "%'");

	
	while(rs1.next() && rs2.next()){
		
		%>
		
			<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
      Question: 
		
		<% 
		
	    	out.println(rs1.getString(1));

	}  %>
	
	<br/>
	
	<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
      Answer: 

	<%

	out.println(rs2.getString(1));

       %> 
       
       <br/>

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       
<a href="buyerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
       
       
       
       <% 
	

}
        catch(Exception e)

{
        System.out.print(e);
        e.printStackTrace();

}
 %>
 
  </body>
   </center>