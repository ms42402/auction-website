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
      <h1><FONT COLOR="#0d7e7c"> <strong> Winners! </strong> </h1> </Font> <br/>
    

<%

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
	
	Statement st8 =conn.createStatement();
	
	Statement st10 =conn.createStatement();


	
	int index = 1; 
	
	ResultSet rs1;
	ResultSet rs2;
	ResultSet rs3;
	ResultSet rs4;
	ResultSet rs5;
	ResultSet rs6;
	
	ResultSet rs8;
	
	ResultSet rs10;
	
	
	rs1 = st1.executeQuery("SELECT b.item_ID FROM item i, bids b WHERE i.dates <= CURDATE() and i.times <= CURRENT_TIME() and i.item_id = b.item_id"); 
	
	
	
	while (rs1.next()) {
		
		
		
		String itemID = rs1.getString(1); 
		
		//out.println("first one " + itemID ); 
		
		
																													//may need to change this 
		rs10 = st10.executeQuery("select MAX(b.price) from bids b, item i where b.item_ID = " + itemID + " group by (b.item_ID)"); 
		
																													
	

		while (rs10.next()) {
			
			
			//String maxPrice = rs10.getString(1); 
			int maxPrice = Integer.parseInt(rs10.getString(1)); 
			
			//out.println("max one " + maxPrice ); 
			
			
		rs8 = st8.executeQuery("select names from item where item_ID = " + itemID ); 
		rs2 = st2.executeQuery("select dates from item where item_ID = " + itemID);
		rs3 = st3.executeQuery("select times from item where item_ID = " + itemID);
		
		
		rs4 = st4.executeQuery("select email_address from bids where item_ID = " + itemID);
		
		
		rs5 = st5.executeQuery("select initial_price from item where item_ID = " + itemID);
	
		
		
		
		//rs6 = st6.executeQuery("select item_ID from item where item_ID = " + itemID);
		
		while(rs8.next() && rs2.next() && rs3.next() && rs4.next() && rs5.next()){
			//String firstPrice = rs5.getString(1); 
			
			int firstPrice = Integer.parseInt(rs5.getString(1)); 
			
			
			%>
			
			<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> <!--This line of code just adds spacing between the lines -->
	        <strong>Number: <% out.println(index); 
	        
	        
	        %>
	        <br/>
			
			<p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> <!--This line of code just adds spacing between the lines -->
	        <strong>Name:    <!-- need to pull the name of item from database-->
			
			
			<% 
			
		    	out.println(rs1.getString(1));

		  %>
		
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
	       Winner:


	       <% 
	       
	       if (maxPrice < firstPrice) {
	        	out.println("No winner!");
	        } else {
	        	out.println(rs4.getString(1));
	        	
	        	//out.println(session.getAttribute("username")); 
	        	
	        	String u1 = (String)session.getAttribute("username") ; 
	        	String u2 = (rs4.getString(1)); 
	        	
	        	if (u1.equals(u2) ) {
	        		
	 
	        		
	        
	        	
	        	
	        	//alert the winner 
	        	%>
	        	
	        	
	        	 <script>
					
					alert("you won the bid!"); 
					
					</script>
	        	
	        	
	        	
	        	
	        	
	        	<%
	        	}
	        	
	        	
	        }
	       //out.println(rs4.getString(1));
	       
	       %>
	       
	       
	        <br/> <!-- need to pull the price of item from database-->

	       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
	       Final Price:
	       
	        <% 
	       
	        
	        if (maxPrice < firstPrice) {
	        	out.println(firstPrice);
	        } else {
	        	out.println(maxPrice);
	        }
	        //out.println(maxPrice);
	       
	       %>  
	       

	       <% 
	       


	       %>
	       
	       <br/>

	       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
	       
	       
	       
	       <% 
	       
		index++; }
		}}

		
	
	
	
	//rs2 = st2.executeQuery("select dates from item");
	//rs3 = st3.executeQuery("select times from item");
	//rs4 = st4.executeQuery("select price from item");
	//rs5 = st5.executeQuery("select increment_of_bids from item");
	
	//rs6 = st6.executeQuery("select item_ID from item");
	
	
	
	

}
        catch(Exception e)

{
        System.out.print(e);
        e.printStackTrace();

}
 %>


 
       
       
        <br/>

       
       
       <p style="margin-left: 2.5em;padding: 0 7em 2em 0;"></p> 
 
 <a href="buyerHomePage.jsp">
  <input type="submit" value="Return to Home Page"/>
      </a>
      
      
     
 
  </body>
   </center>