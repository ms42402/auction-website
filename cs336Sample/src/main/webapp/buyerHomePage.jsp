<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
   <head>
      <title>Buyer Home Page </title>
   </head>
   <body>
   <h1> Welcome to Online Shopping Buyer's HomePage!</h1>
       
   <!--This is the buyer home page where they can view items that are up for auction -->
     <%
          
     //this can be some java of comparing the bid prices to other users, and if true, set an alert 
     //alert there 
     
     String username = (String)session.getAttribute("username"); 
		   
		   //out.println( "where bi.email_address = " +  username + " and " ); 
		   
		
		   Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root", "root");
			Statement st1 =conn.createStatement();
			//Statement st2 =conn.createStatement();
			//Statement st3 =conn.createStatement();
			
			ResultSet rs1;
			//ResultSet rs2;
			//ResultSet rs3;
		   
			 rs1 =  st1.executeQuery("select distinct i.item_ID from item i, bids bi where bi.email_address = '" + username + "' and bi.item_ID = i.item_ID");
while (rs1.next()) {
	String itemID = rs1.getString(1); 
	
	Statement st2 =conn.createStatement();
	ResultSet rs2;
	
	rs2 =  st2.executeQuery("select bi.price from bids bi, item i where bi.email_address = '" + username + "' and bi.item_ID = " + itemID + " and i.item_ID = " + itemID );  
	
	
	Statement st3 =conn.createStatement();
	
	ResultSet rs3;
	
	rs3 =  st3.executeQuery("select bi.price from bids bi, item i where bi.email_address != '" + username + "' and bi.item_ID = " + itemID + " and i.item_ID = " + itemID );  
	
	rs2.next(); 
	
	while (rs3.next()) {
		
		//String item_price = rs2.getString(1); 
		//String item_price2 = rs3.getString(1); 
		int price = Integer.parseInt(rs2.getString(1)); 
		int price2 = Integer.parseInt(rs3.getString(1)); 

		
		if (price < price2) {
			
			
			 
			   %>
			    
			    <script>
					
					alert("a bidder bid higher than you"); 
					
					</script>

			<% 
			
			
			} 

	}

}
			 
			 //PreparedStatement pstatement = conn.prepareStatement(queryString1);
			 //pstatement.setString(1, username);
			 
			//int updateQuery = pstatement.executeUpdate();
			
		//	if (updateQuery != 0) {
		//		while
		//	}
			
			//rs1 = st1.executeQuery("select i.item_ID from item i, buyers b, bids bi where b.email_address = ? and bi.item_ID = i.item_ID"); 
			//rs2 = st2.executeQuery("select dates from item where item_ID =" + itemID);
			//rs3 = st3.executeQuery("select times from item where item_ID =" + itemID);
			//rs4 = st4.executeQuery("select initial_price from item where item_ID =" + itemID);
			//rs5 = st5.executeQuery("select increment_of_bids from item where item_ID =" + itemID);
			
		   
		   //get bid price for this item on 
		   
		   //sql query for bids that are not this username and 
     
     
     %>
     <a href="browseAllItemsSQL.jsp"> <input type="submit" value=" Browse All Items "/> </a>
     
     <form method="post" action="placingBidSQL.jsp">
 
      <!--  <a href="buyerHomePage.jsp">  -->
   
       
  <input type="submit" value="Bid On Item"/>
  
          </form>
       
       
     
     <a href="decideSearch.jsp"> <input type="submit" value=" Search Item "/> </a>
     
     <a href="questionAllOptions.jsp"> <input type="submit" value=" Q&A "/> </a>
           
     <a href="historyOfBidsSQL.jsp"> <input type="submit" value=" History of Bids "/> </a>
     
          <a href="historyOfPersonal.jsp"> <input type="submit" value=" History of Personal Use Item Bids "/> </a>
          
           <a href="historyOfKitchen.jsp"> <input type="submit" value=" History of Kitchen Item Bids "/> </a>
           
            <a href="historyOfLan.jsp"> <input type="submit" value=" History of Laundry Item Bids "/> </a>
           
           
     
     
     <a href="winners.jsp"> <input type="submit" value=" Winners "/> </a>
     
      <a href="logout.jsp"> <input type="submit" value=" Logout & Back to Welcome Page "/> </a>
     
     
     
   </body>
</html>