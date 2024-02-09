<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>


<!DOCTYPE html>
<html>
   <head>
      <title>historyOfBids</title>
   </head>
   
   <center> 
   <body>
       <style>
       h1{line-height: 50px;} <!--This changes the font size of the title -->
       </style>
       
            <!--This line applies heading 1 setting to the font and puts it in bold -->
      <h1><FONT COLOR="#0d7e7c"> <strong> Here are all your bids: </strong> </h1> </Font> <br/>
    

<%


//<form method="post" action="addingForItems.jsp"> this is for creatind an item 

//String itemName = request.getParameter("names");   
//String itemDate = request.getParameter("dates");   
//String itemTime = request.getParameter("times");
//String itemInitialPrice = request.getParameter("initial_price");   

//String itemID = request.getParameter("item_ID") ;   

//session.getAttribute("username"); 

		String username = (String)session.getAttribute("username"); 
		
		out.println(username); 
		
		//String password = (String)session.getAttribute("passwords"); 
		
		
		//out.println(username); 
//String itemIncrement = request.getParameter("increment_of_bids") ; 

//String categories = request.getParameter("categories");   

//out.println("this is the item date " + itemDate + " " + itemName + " " + itemTime + " " + itemInitialPrice + " " + itemID + "  " + itemIncrement + " " + categories); 


try
{
	
	
	
	/* 
	
	
	
	select i.item_ID, i.names, i.categories, b.price, b.upper_limit, bu.email_address 
	
	from bids b, item i, buyers bu
	
	where b.item_id = i.item_id and bu.email_address = b.email_address; 

	get all items associated with this username and password, so select item_id from item, buyers where email address = buyers 
	
	
	*/
	
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
	rs1 = st1.executeQuery("select item_ID from bids where email_address = '" + username + "'"); 
	rs2 = st2.executeQuery("select price from bids where email_address = '" + username + "'");
	//rs3 = st3.executeQuery("select times from bids where item_ID = '" + username);
	//rs4 = st4.executeQuery("select initial_price from bids where item_ID = '" + username);
	//rs5 = st5.executeQuery("select increment_of_bids from bids where item_ID = '" + username);
	// && rs3.next() && rs4.next() && rs5.next()
	int index = 1; 
	while(rs1.next() && rs2.next()){
		

		String ID = rs1.getString(1); 

		rs3 = st3.executeQuery("select names from item where item_ID = '" + ID+ "'"); 
		rs4 = st4.executeQuery("select dates from item where item_ID = '" + ID+ "'");
		rs5 = st5.executeQuery("select times from item where item_ID = '" + ID + "'");
		
		rs3.next(); 
		rs4.next(); 
		rs5.next();
		//rs6 = st4.executeQuery("select initial_price from item where item_ID =" + itemID);
		//rs7 = st5.executeQuery("select increment_of_bids from item where item_ID =" + itemID);
		
		%>
		
		
		<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> <!--This line of code just adds spacing between the lines -->
        <strong>Number:    <!-- need to pull the name of item from database-->
		
		
		<% 
		
	    	out.println(index);

	  %>
		
		<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> <!--This line of code just adds spacing between the lines -->
        <strong>Name:    <!-- need to pull the name of item from database-->
		
		
		<% 
		
	    	out.println(rs3.getString(1));

	  %>
	
	<br/>
	
	<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"> </p> 
       Closing Date:

	<%

	out.println(rs4.getString(1));

       %> 

       <br/>
        <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       Closing Time:

       <% 
       
       out.println(rs5.getString(1));


       %> 

        <br/> <!-- need to pull the closing time of item from database-->

       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
        Item ID:


       <% 
       out.println(rs1.getString(1)); 
       
       %>
       
       
       <br/>
        <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
       Price:

       <% 
       
       out.println(rs2.getString(1)); 
       index++; 
	}


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