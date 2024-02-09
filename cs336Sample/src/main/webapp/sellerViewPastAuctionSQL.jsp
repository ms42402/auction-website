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
      <h1><FONT COLOR="#0d7e7c"> <strong> Here is the Auction associated with the ID </strong> </h1> </Font> <br/>
    

<%


//<form method="post" action="addingForItems.jsp"> this is for creatind an item 

//String itemName = request.getParameter("names");   
//String itemDate = request.getParameter("dates");   
//String itemTime = request.getParameter("times");
//String itemInitialPrice = request.getParameter("initial_price");   

String itemID = request.getParameter("item_ID") ;   
//String itemIncrement = request.getParameter("increment_of_bids") ; 

//String categories = request.getParameter("categories");   

//out.println("this is the item date " + itemDate + " " + itemName + " " + itemTime + " " + itemInitialPrice + " " + itemID + "  " + itemIncrement + " " + categories); 


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
	Statement st1 =conn.createStatement();
	Statement st2 =conn.createStatement();
	Statement st3 =conn.createStatement();
	Statement st4 =conn.createStatement();
	Statement st5 =conn.createStatement();
	Statement st6 =conn.createStatement();
	
	ResultSet rs1;
	ResultSet rs2;
	ResultSet rs3;
	ResultSet rs4;
	ResultSet rs5;
	ResultSet rs6;
	
	
	//out.println("working rn"); 
	rs1 = st1.executeQuery("select names from item where item_ID =" + itemID); 
	rs2 = st2.executeQuery("select dates from item where item_ID =" + itemID);
	rs3 = st3.executeQuery("select times from item where item_ID =" + itemID);
	rs4 = st4.executeQuery("select initial_price from item where item_ID =" + itemID);
	rs5 = st5.executeQuery("select increment_of_bids from item where item_ID =" + itemID);
	
	
	while(rs1.next() && rs2.next() && rs3.next() && rs4.next() && rs5.next()){
		
		%>
		
		<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> <!--This line of code just adds spacing between the lines -->
        <strong>Name:    <!-- need to pull the name of item from database-->
		
		
		<% 
		
	    	out.println(rs1.getString(1));

	}  %>
	
	<br/>
	
	<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       Closing Date:

	<%

	out.println(rs2.getString(1));

       %> 

       <br/>
        <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       Closing Time:

       <% 
       out.println(rs3.getString(1));


       %> 

        <br/> <!-- need to pull the closing time of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       Current Price:


       <% 
       out.println(rs4.getString(1));
       
       %>
       
       
        <br/> <!-- need to pull the price of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       ID:
       
        <% 
       
       out.println(itemID); 
       
       %>  
       
       <br/> <!-- need to pull the ID of the item from the initial input-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       Increment of Bids:
       
       <% 
       
       out.println(rs5.getString(1));

       %>
       
       <br/>

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       
<a href="sellerHomePage.jsp">
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
 
 